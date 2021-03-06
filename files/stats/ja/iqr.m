% IQR   標本の四分位レンジ
%
% Y = IQR(X) は、X の値の四分位レンジ (IQR) を出力します。ベクトル入力に
% 対して、Y は、X の 25% と 75% の差を計算します。行列の入力に対して、
% Y は、X の各列の四分位レンジを含む行ベクトルになります。N-次元配列に
% 対して、IQR は、最初の単一でない次元に沿って処理を行います。
%
% IQR は、データの中の75%より大きいものと25%より小さいものを考えないので、
% データの広がりの推定に対して、ロバストな値になります。
%
% IQR(X,DIM) は、X の次元 DIM に沿って四分位レンジを計算します。
% 
%   参考 PRCTILE, STD, VAR.


%   Copyright 1993-2004 The MathWorks, Inc. 
