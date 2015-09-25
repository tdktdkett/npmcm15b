% NANMIN   NaN を無視した最小値
%
%   M = NANMIN(A) は、欠測値として扱う NaN をもつ A の最小値を出力します。
%   ベクトルに対して、M は、A の中の NaN でない要素の中の最小値を出力します。
%   また、行列に対しては各列から NaN でない要素の最小値を含む行ベクトルを
%   出力します。N-次元の配列に対して、NANMIN は、最初の非シングルトン次元に
%   沿って処理を行います。
%
%   [M, NDX] = NANMIN(A) は、A の最小値のインデックスも出力します。最初の
%   非シングルトン次元に沿った値が、1よりも大きい最小要素を含む場合、
%   最初のインデックスが出力されます。
% 
%   M = NANMIN(A,B) は、A または B から得られた最小の要素をもつ A と B と
%   同じサイズの配列です。どちらかスカラになります。
% 
%   [M,NDX] = NANMIN(A,[],DIM) は、次元 DIM に沿って処理します。
%
%   参考 MIN, NANMAX, NANMEAN, NANMEDIAN, NANMIN, NANVAR, NANSTD.


%   Copyright 1993-2007 The MathWorks, Inc. 
