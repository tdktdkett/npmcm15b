function y = mvtpdf(X, C, df)
%MVTPDF Multivariate t probability density function (pdf).
%   Y = MVTPDF(X,C,DF) returns the probability density of the multivariate t
%   distribution with correlation parameters C and degrees of freedom DF,
%   evaluated at each row of X.  Rows of the N-by-D matrix X correspond to
%   observations or points, and columns correspond to variables or
%   coordinates.  Y is an N-by-1 vector.
%
%   C is a symmetric, positive definite, D-by-D correlation matrix.  DF is a
%   scalar, or a vector with N elements.
%
%   Note: MVTPDF computes the PDF for the standard multivariate Student's t,
%   centered at the origin, with no scale parameters.  If C is a covariance
%   matrix, i.e. DIAG(C) is not all ones, MVTPDF rescales C to transform it
%   to a correlation matrix.  MVTPDF does not rescale X.
% 
%   Example:
%
%      C = [1 .4; .4 1]; df = 2;
%      [X1,X2] = meshgrid(linspace(-2,2,25)', linspace(-2,2,25)');
%      X = [X1(:) X2(:)];
%      p = mvtpdf(X, C, df);
%      surf(X1,X2,reshape(p,25,25));
%
%   See also MVNPDF, MVTCDF, MVTRND, TPDF.

%   Copyright 2005-2011 The MathWorks, Inc.


if nargin<3
    error(message('stats:mvtpdf:TooFewInputs'));
elseif ndims(X)~=2
    error(message('stats:mvtpdf:InvalidData'));
end

% Get size of data.  Column vectors provisionally interpreted as multiple scalar data.
[n,d] = size(X);
if d<1
    error(message('stats:mvtpdf:TooFewDimensions'));
end

% Special case: try to interpret X as a row vector if it was a column.
if isvector(X) && (size(C,1) == n)
    X = X';
    [n,d] = size(X);
end

sz = size(C);
if sz(1) ~= sz(2)
    error(message('stats:mvtpdf:BadCorrelationNotSquare'));
elseif ~isequal(sz, [d d])
    error(message('stats:mvtpdf:InputSizeMismatchC'));
end

% Standardize C to correlation if necessary.  This does NOT standardize X.
s = sqrt(diag(C));
if (any(s~=1))
    C = C ./ (s * s');
end

% Make sure C is a valid covariance matrix
[R,err] = cholcov(C,0);
if err ~= 0
    error(message('stats:mvtpdf:BadCorrelationSymPos'));
end

if ~(isscalar(df) || (isvector(df) && length(df) == n))
    error(message('stats:mvtpdf:InputSizeMismatchDF'));
elseif any(df <= 0)
    error(message('stats:mvtpdf:InvalidDF'));
end
df = df(:);

% Create array of standardized data, and compute log(sqrt(det(Sigma)))
Z = X / R;
logSqrtDetC = sum(log(diag(R)));

logNumer = -((df+d)/2) .* log(1+sum(Z.^2, 2)./df);
logDenom = logSqrtDetC + (d/2)*log(df*pi);
y = exp(gammaln((df+d)/2) - gammaln(df/2) + logNumer - logDenom);
