% GPRND 一般化パレート分布からのランダム配列
%
%   R = GPRND(K,SIGMA,THETA) は、すその指数 (形状) パラメータ K、スケール
%   パラメータ SIGMA、閾値 (位置) パラメータ THETA をもつ一般化パレート
%   (GP) 分布から選択された乱数の配列を返します。すべて配列の場合、R の
%   サイズは、K, SIGMA, THETA の共通のサイズです。任意のパラメータがスカラ
%   の場合、R のサイズは、他のパラメータのサイズになります。
%
%   R = GPRND(K,SIGMA,THETA,M,N,...) または R = GPRND(K,SIGMA,[M,N,...]) は、
%   M×N×... 配列を返します。
%
%   K = 0 で THETA = 0 の場合、GP は指数分布と等価になります。K > 0 で 
%   THETA = SIGMA の場合、GP はパレート分布と等価になります。K >= 1 の
%   場合、GP の平均は有限ではなく、K >= 1/2 の場合、分散は有限ではなく
%   なります。K >= 0 の場合、GP は X>THETA に対して正の密度をもち、
%   K < 0 の場合、0 <= (X-THETA)/SIGMA <= -1/K に対して正の密度をもちます。
%
%   参考 GPCDF, GPFIT, GPINV, GPLIKE, GPPDF, GPSTAT, RANDOM.


%   Copyright 1993-2007 The MathWorks, Inc. 
