% EVRND   極値分布の乱数の配列
%
% R = EVRND(MU,SIGMA) は、位置パラメータ MUとスケールパラメータ SIGMA 
% をもつタイプ1の極値分布から抽出された乱数の配列を出力します。R の大きさは、
% MU と SIGMA が共に配列の場合、それらに共通する大きさになります。
% どちらかのパラメータがスカラの場合、R の大きさは、もう一方のパラメータと
% 同じ大きさになります。また、
%
% R = EVRND(MU,SIGMA,M,N,...) または R = EVRND(MU,SIGMA,[M,N,...]) は、
% M×N×... の配列を出力します。
%
% タイプ1の極値分布は、別名Gumbel分布としても知られています。Y が 
% Weibull分布の場合、X=log(Y) は、タイプ1の極値分布になります。
%
%   参考 EVCDF, EVFIT, EVINV, EVLIKE, EVPDF, EVSTAT, RANDOM.


%   Copyright 1993-2004 The MathWorks, Inc. 
