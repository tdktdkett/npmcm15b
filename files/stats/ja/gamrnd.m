% GAMRND   ガンマ分布からの乱数の配列
%
% R = GAMRND(A,B) は、形状パラメータ A と スケールパラメータ B をもつ
% ガンマ分布から抽出された乱数の配列を出力します。R の大きさは、A と B が
% 共に配列の場合、それらに共通する大きさになります。どちらかのパラメータが
% スカラの場合、R の大きさは、もう一方のパラメータと同じ大きさになります。
%
% R = GAMRND(A,B,M,N,...) または R = GAMRND(A,B,[M,N,...]) は、
% M×N× ...の配列を出力します。
% 
% いくつかの参考文献では、単一のパラメータをもつガンマ分布が報告されていますが、
% これは、GAMRND では、B = 1 に対応します。
%
%   参考 GAMCDF, GAMFIT, GAMINV, GAMLIKE, GAMPDF, GAMSTAT, RANDOM.


%   Copyright 1993-2004 The MathWorks, Inc. 
