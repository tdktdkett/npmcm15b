% GPINV 一般化パレートの逆累積分布関数 (cdf)
%
%   X = GPINV(P,K,SIGMA,THETA) は、P の値で評価される、すその指数 (形状) 
%   パラメータ K、スケールパラメータ SIGMA、閾値 (位置) パラメータ THETA
%   をもつ一般化パレート (GP) の分布に対する逆 cdf を返します。X のサイズは、
%   入力引数の共通のサイズです。スカラの入力は、他の入力と同じサイズの
%   定数行列として機能します。
%   
%   K, SIGMA, THETA に対するデフォルト値は、それぞれ 0, 1, 0 です。
%
%   K = 0 で THETA = 0 の場合、GP は指数分布と等価になります。K > 0 で 
%   THETA = SIGMA の場合、GP はパレート分布と等価になります。K >= 1 の
%   場合、GP の平均は有限ではなく、K >= 1/2 の場合、分散は有限ではなく
%   なります。K >= 0 の場合、GP は X>THETA に対して正の密度をもち、
%   K < 0 の場合、0 <= (X-THETA)/SIGMA <= -1/K に対して正の密度をもちます。
%
%   参考 GPCDF, GPFIT, GPLIKE, GPPDF, GPRND, GPSTAT, ICDF.


%   Copyright 1993-2007 The MathWorks, Inc. 
