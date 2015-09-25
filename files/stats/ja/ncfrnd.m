% NCFRND   非心 F分布からの乱数の配列
%
% R = NCFRND(NU1,NU2,DELTA) は、パラメータ NU1, NU2, DELTA をもつ非心 
% F分布から抽出した乱数の配列を出力します。R の大きさは、NU1, NU2, DELTA が
% 共に配列の場合、それらに共通する大きさになります。どちらかのパラメータが
% スカラの場合、R の大きさは、もう一方のパラメータと同じ大きさになります。
%
% R = NCFRND(NU1,NU2,DELTA,M,N,...) または R = NCFRND(NU1,NU2,DELTA,[M,N,...]) は、
% M×N×... の配列を出力します。
%
%   参考 NCFCDF, NCFINV, NCFPDF, NCFSTAT, FRND, RANDOM.


%   Copyright 1993-2004 The MathWorks, Inc. 
