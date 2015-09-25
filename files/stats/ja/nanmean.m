% NANMEAN   NaN を無視した平均または平均値
%
% M = NANMEAN(X) は、欠測値として扱う NaN をもつ X の平均値を出力します。
% ベクトルに対して、M は、X の中の NaN でない要素の中の平均値を
% 出力します。また、行列に対しては各列から NaN でない要素の平均値を含む
% 行ベクトルを出力します。N-次元の配列に対して、NANMEAN は、最初の単一で
% ない次元に沿って処理を行います。
%
% NANMEAN(X,DIM) は、X の次元 DIM に沿って平均します。
%
%   参考 MEAN, NANMEDIAN, NANSTD, NANVAR, NANMIN, NANMAX, NANSUM.


%   Copyright 1993-2004 The MathWorks, Inc.
