% NCX2RND   非心カイ二乗分布からの乱数の配列
%
% R = NCX2RND(V,DELTA) は、パラメータ V と DELTA をもつ非心カイ二乗分布
% から抽出した乱数の配列を出力します。R の大きさは、V と DELTA が共に
% 配列の場合、それらに共通する大きさになります。どちらかのパラメータが
% スカラの場合、R の大きさは、もう一方のパラメータと同じ大きさになります。
%
% R = NCX2RND(V,DELTA,M,N,...) または R = NCX2RND(V,DELTA[,M,N,...]) は、
% M×N×... の配列を出力します。
%
%   参考 NCX2CDF, NCX2INV, NCX2PDF, NCX2STAT, CHI2RND, RANDOM.


%   Copyright 1993-2004 The MathWorks, Inc.
