% NANSTD  NaN を無視した標準偏差
%
%   Y = NANSTD(X) は、欠測値として扱う NaN をもつ X の標準偏差を出力します。
%   ベクトルに対して、Y は、X の中の NaN でない要素の中の標準偏差を出力
%   します。また、行列に対しては各列から NaN でない要素の標準偏差を含む
%   行ベクトルを出力します。N-次元の配列に対して、NANSTD は、最初の非シングルトン
%   次元に沿って処理を行います。
% 
%   NANSTD は、(N-1) で Y を正規化します。ここで N は標本サイズです。
%   X が独立で同一の分布の標本から構成され、データが無作為に欠損している
%   限り、X が描画される母集団の分散のバイアスのない推定子の平方根です。
%
%   Y = NANSTD(X,1) は、N で正規化し、平均に関する標本の 2 次モーメントの
%   平方根を生成します。NANSTD(X,0) は、NANSTD(X) と同じです。
%
%   Y = NANSTD(X,FLAG,DIM) は、X の次元 DIM に沿って標準偏差を得ます。
%
%   参考 STD, NANVAR, NANMEAN, NANMEDIAN, NANMIN, NANMAX, NANSUM.


%   Copyright 1993-2007 The MathWorks, Inc.
