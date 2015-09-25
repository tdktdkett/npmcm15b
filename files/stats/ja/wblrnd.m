% WBLRND   Weibull分布からの乱数の配列
%
% R = WBLRND(A,B) は、スケールパラメータ A と形状パラメータ B をもつ
% Weibull分布から抽出された乱数の配列を出力します。R の大きさは A と B が
% 共に配列の場合、それらに共通する大きさになります。どちらかのパラメータが
% スカラの場合、R の大きさは、もう一方のパラメータと同じ大きさになります。
%
% R = WBLRND(A,B,M,N,...) または  R = WBLRND(A,B,[M,N,...]) は、
% M×N×... の配列を出力します。
%
%   参考 WBLCDF, WBLFIT, WBLINV, WBLLIKE, WBLPDF, WBLSTAT, RANDOM.


%   Copyright 1993-2004 The MathWorks, Inc. 
