% MAD   平均絶対偏差
%
%   Y = MAD(X) は、X の値の平均絶対偏差 (MAD) を計算します。ベクトルの
%   入力に対して、Y は MEAN(ABS(X-MEAN(X)) になります。行列の入力に対して、
%   Y は、X の各列の平均絶対偏差を含む行ベクトルになります。N-次元の配列
%   に対して、MAD は、最初の非シングルトン次元に沿って処理を行います。
% 
%   MAD(X,1) は、平均に基づいて Y を計算します。すなわち、
%   MEDIAN(ABS(X-MEDIAN(X)) となります。MAD(X,0) は、MAD(X) と
%   同じで、平均を使います。
%
%   MAD(X,FLAG,DIM) は、X の DIM 次元に沿って MAD を行ないます。
%
%   MAD は欠損値として NaN を扱い、削除します。
%
%   参考 VAR, STD, IQR.


%   Copyright 1993-2007 The MathWorks, Inc. 
