% GPSTAT 一般化パレート分布の平均値と分散
%
%   [M,V] = GPSTAT(K,SIGMA,THETA) は、すその指数 (形状) パラメータ K、スケール
%   パラメータ SIGMA、閾値 (位置) パラメータ THETA をもつ一般化パレート (GP)
%   分布の平均と分散を返します。
%
%   THETA のデフォルト値は 0 です。
%
%   K = 0 で THETA = 0 の場合、GP は指数分布と等価になります。K > 0 で 
%   THETA = SIGMA の場合、GP はパレート分布と等価になります。K >= 1 の
%   場合、GP の平均は有限ではなく、K >= 1/2 の場合、分散は有限ではなく
%   なります。K >= 0 の場合、GP は X>THETA に対して正の密度をもち、
%   K < 0 の場合、0 <= (X-THETA)/SIGMA <= -1/K に対して正の密度をもちます。
%
%   参考 GPCDF, GPFIT, GPINV, GPLIKE, GPPDF, GPRND.


%   Copyright 1993-2007 The MathWorks, Inc. 
