% GPLIKE 一般化パレート分布に対する負の対数尤度
%
%   NLOGL = GPLIKE(PARAMS,DATA) は、与えられた DATA に対して、パラメータ 
%   PARAMS(1) = K と PARAMS(2) = SIGMA で評価される、2 つのパラメータの
%   一般化パレート (GP) 分布に対する対数尤度の負の値を返します。GPLIKE は、
%   閾値 (位置) パラメータを受け入れません。NLOGL はスカラです。
%
%   [NLOGL, ACOV] = GPLIKE(PARAMS,DATA) は、フィッシャー情報行列 ACOV の
%   逆行列を返します。PARAMS の入力パラメータ値が最尤推定の場合、ACOV の
%   対角要素は、それらの漸近分散になります。ACOV は、ACOV は、予想された
%   情報ではなく、観測されたフィッシャー情報量に基づきます。
%
%   K = 0 で THETA = 0 の場合、GP は指数分布と等価になります。K > 0 で 
%   THETA = SIGMA の場合、GP はパレート分布と等価になります。K >= 1 の
%   場合、GP の平均は有限ではなく、K >= 1/2 の場合、分散は有限ではなく
%   なります。K >= 0 の場合、GP は X>THETA に対して正の密度をもち、
%   K < 0 の場合、0 <= (X-THETA)/SIGMA <= -1/K に対して正の密度をもちます。
%
%   参考 GPCDF, GPFIT, GPINV, GPPDF, GPRND, GPSTAT.


%   Copyright 1993-2007 The MathWorks, Inc.
