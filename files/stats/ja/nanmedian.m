% NANMEDIAN   NaN を無視した中央値
%
% M = NANMEDIAN(X) 欠測値として扱う NaN をもつ X の中央値を出力します。
% ベクトルに対して、M は、X の中の NaN でない要素の中の中央値を
% 出力します。また、行列に対しては各列から NaN でない要素の中央値を含む
% 行ベクトルを出力します。N-次元の配列に対して、NANMEDIAN は、最初の単一で
% ない次元に沿って処理を行います。
%
% NANMEDIAN(X,DIM) は、X の次元 DIM に沿って中央値を求めます。
% 
%   参考 MEDIAN, NANMEAN, NANSTD, NANVAR, NANMIN, NANMAX, NANSUM.


%   Copyright 1993-2004 The MathWorks, Inc.
