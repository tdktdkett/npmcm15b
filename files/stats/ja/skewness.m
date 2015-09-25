% SKEWNESS 歪度
%
%   S = SKEWNESS(X) は、X の値の標本の歪度を出力します。ベクトルの入力に
%   対して、S は、標準偏差の 3 乗で割り算した X の 3 次の中心モーメント
%   です。行列の入力に対して、S は、X の各列の標本の歪度を含む行ベクトル
%   です。N-次元配列に対して、SKEWNESS は、最初の非シングルトン次元に
%   沿って処理を行います。
%
%   SKEWNESS(X,0) は、バイアスに対して、歪度を調整したものです。
%   SKEWNESS(X,1) は、SKEWNESS(X) と等価で、バイアスに対して調整を行いません。
%
%   SKEWNESS(X,FLAG,DIM) は、X の次元 DIM に沿って歪度をとります。
%
%   SKEWNESS は、欠損値として NaN を扱い、削除します。
%
%   参考 MEAN, MOMENT, STD, VAR, KURTOSIS.


%   Copyright 1993-2007 The MathWorks, Inc. 
