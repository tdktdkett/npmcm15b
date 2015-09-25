function [residuals,reconstructed] = pcares(x,ndim)
%PCARES Residuals from a Principal Components Analysis (PCA).
%   RESIDUALS = PCARES(X,NDIM) returns the residuals obtained by retaining
%   the first NDIM principal components of the N-by-P data matrix X.  Rows
%   of X correspond to observations, columns to variables.  NDIM is a
%   scalar and must be less than or equal to P.  RESIDUALS is a matrix of
%   the same size as X.
%
%   PCARES does not normalize the columns of X.  To perform the PCA based
%   on standardized variables, use PCARES(ZSCORE(X),NDIM).
%
%   [RESIDUALS,RECONSTRUCTED] = PCARES(X,NDIM) returns the reconstructed
%   observations, i.e., the approximation to X obtained by retaining its
%   first NDIM principal components.
%
%   See also FACTORAN, PCACOV, PCA.

%   References:
%     [1] Jackson, J.E., A User's Guide to Principal Components
%         Wiley, 1988.
%     [2] Jolliffe, I.T. Principal Component Analysis, 2nd ed.,
%         Springer, 2002.
%     [3] Krzanowski, W.J., Principles of Multivariate Analysis,
%         Oxford University Press, 1988.
%     [4] Seber, G.A.F., Multivariate Observations, Wiley, 1984.

%   Copyright 1993-2010 The MathWorks, Inc.


[n,p] = size(x);
r = min(n-1,p); % the maximum number of useful components

if ~isscalar(ndim) || ndim > p
    error(message('stats:pcares:BadDim'));
elseif ndim > r
    ndim = r;
end

[coeff,score] = pca(x,'Economy',true);

reconstructed = repmat(mean(x,1),n,1) + score(:,1:ndim)*coeff(:,1:ndim)';
residuals = x - reconstructed;
