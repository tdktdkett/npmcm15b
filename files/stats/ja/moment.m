% MOMENT すべての次数の中心モーメント
%
%   SIGMA = MOMENT(X,ORDER) は、X の値の ORDER 番目の中心モーメントを計算
%   します。ベクトルの入力に対して、SIGMA は、MEAN((X-MEAN(X)).^ORDER) に
%   なります。行列の入力に対して、MOMENT(X,ORDER) は，X の各列の中心
%   モーメントを含む行ベクトルを返します。N-次元の配列に対して、MOMENT は、
%   最初の非シングルトン次元に沿って処理を行います。
%
%   MOMENT(X,ORDER,DIM) は、X の次元 DIM に沿ってモーメントを得ます。
%
%   1次の中心モーメントは、厳密には 0 です。2次の中心モーメントは、標本の
%   サイズを N とすると、N-1 の代わりに N で割ることで、分散を求めています。
% 
%   参考 MEAN, STD, VAR, SKEWNESS, KURTOSIS.


%   Copyright 1993-2007 The MathWorks, Inc. 
