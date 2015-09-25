% KURTOSIS   標本の尖度
%
%   K = KURTOSIS(X) は、X の値の標本の尖度を出力します。ベクトルの入力に
%   対して、K は、X の 4 次の中心モーメントを標準偏差の 4 乗で割ったものに
%   なります。行列の入力に対して、K は、X の各列に対する標本の尖度を含む
%   行ベクトルになります。N-次元配列に対して、KURTOSIS は、最初の非シングルトン
%   次元に沿って処理を行います。
% 
%   KURTOSIS(X,0) は、バイアスに対して尖度を調整します。KURTOSIS(X,1) は、
%   KURTOSIS(X) と等価で、バイアスに対する調整は行いません。
%
%   KURTOSIS(X,FLAG,DIM) は、X の次元 DIM に沿って尖度を得ます。
%
%   KURTOSIS は、欠損値として NaN を扱い、削除します。
% 
%   参考 MEAN, MOMENT, STD, VAR, SKEWNESS.


%   Copyright 1993-2007 The MathWorks, Inc. 
