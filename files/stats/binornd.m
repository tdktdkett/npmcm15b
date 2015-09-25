function r = binornd(n,p,varargin)
% BINORND Random arrays from the binomial distribution.
%   R = BINORND(N,P,MM,NN) returns an array of random numbers chosen from a
%   binomial distribution with parameters N and P.  The size of R is the
%   common size of N and P if both are arrays.  If either parameter is a
%   scalar, the size of R is the size of the other parameter.
%   
%   R = BINORND(N,P,MM,NN,...) or R = BINORND(N,P,[MM,NN,...]) returns an
%   MM-by-NN-by-... array.
%
%   See also BINOCDF, BINOINV, BINOPDF, BINOSTAT, RANDOM.

%   BINORND generates values using the definition of the binomial
%   distribution, as a sum of Bernoulli random variables.  See Devroye,
%   Lemma 4.1 on page 428, method on page 524.

%   References:
%      [1]  Devroye, L. (1986) Non-Uniform Random Variate Generation, 
%           Springer-Verlag.

%   Copyright 1993-2010 The MathWorks, Inc.


if nargin < 2
    error(message('stats:binornd:TooFewInputs')); 
end

[err, sizeOut] = statsizechk(2,n,p,varargin{:});
ndimsOut = numel(sizeOut);
if err > 0
    error(message('stats:binornd:InputSizeMismatch'));
end

if isa(n,'single') || isa(p,'single')
    outType = 'single';
else
    outType = 'double';
end

% Handle the scalar params case efficiently
if isscalar(n) && isscalar(p)
    if (0 <= p && p <= 1) && (0 <= n && round(n) == n)
        r = cast(sum(rand([sizeOut,n]) < p, ndimsOut+1), outType);
    else
        r = NaN(sizeOut,outType);
    end

% Handle the scalar n case efficiently
elseif isscalar(n)
    if 0 <= n && round(n) == n
        r = cast(sum(rand([sizeOut,n]) ...
                 < repmat(p, [ones(1,ndimsOut),n]), ndimsOut+1),outType);
        r(p < 0 | 1 < p) = NaN;
    else
        r = NaN(sizeOut,outType);
    end

% Handle the non-scalar params case
else 
    if isscalar(p), p = p * ones(sizeOut); end
    r = zeros(sizeOut,outType);
    if ~isempty(n)
        for i = 1:max(n(:))
            k = find(n >= i);
            r(k) = r(k) + (rand(size(k)) < p(k));
        end
        r(p < 0 | 1 < p | n < 0 | round(n) ~= n) = NaN;
    end
end
