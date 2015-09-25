% NCTRND   非心 T 分布からの乱数の配列
%
% R = NCTRND(V,DELTA) は、パラメータ V と DELTA をもつ非心 T 分布から
% 抽出した乱数の配列を出力します。R の大きさは、V と DELTA が共に配列の場合、
% それらに共通する大きさになります。どちらかのパラメータがスカラの場合、
% R の大きさは、もう一方のパラメータと同じ大きさになります。
%
% R = NCTRND(V,DELTA,M,N,...) または R = NCTRND(V,DELTA,[M,N,...]) は、
% M×N×... の配列を出力します。
%
%   参考 NCTCDF, NCTINV, NCTPDF, NCTSTAT, TRND, RANDOM.


%   Copyright 1993-2004 The MathWorks, Inc. 
