% NANSUM   NaN を無視した和
%
%   Y = NANSUM(X) は、欠測値として扱う NaN をもつ X の和を出力します。
%   ベクトルに対して、Y は、X の中の NaN でない要素の中の和を出力します。
%   また、行列に対しては各列から NaN でない要素の和を含む行ベクトルを
%   出力します。N-次元の配列に対して、NANSUM は、最初の非シングルトン
%   次元に沿って処理を行います。
% 
%   Y = NANSUM(X,DIM) は、X の次元 DIM に沿って和をとります。
%
%   参考 SUM, NANMEAN, NANVAR, NANSTD, NANMIN, NANMAX, NANMEDIAN.


%   Copyright 1993-2007 The MathWorks, Inc.
