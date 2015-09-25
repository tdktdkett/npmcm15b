% GEOMEAN   幾何平均
%
%   M = GEOMEAN(X) は、X の値の幾何平均を出力します。X が n 要素をもつ
%   ベクトルの場合、M は X 内の n 要素の積の n 乗根を計算します。行列の
%   入力に対して、M は X の各列の幾何平均を含む行ベクトルになります。
%   N-次元配列に対して、GEOMEAN は、最初の非シングルトン次元に沿って処理を
%   行います。
%
%   GEOMEAN(X,DIM) は、X の次元 DIM に沿って幾何平均を行ないます。
%
%   参考 MEAN, HARMMEAN, TRIMMEAN.


%   Copyright 1993-2007 The MathWorks, Inc. 
