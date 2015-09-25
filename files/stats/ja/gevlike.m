% GEVLIKE 一般化極値の分布に対する負の対数尤度
%
%   NLOGL = GEVLIKE(PARAMS,DATA) は、与えられた DATA においてパラメータ 
%   PARAMS(1) = K, PARAMS(2) = SIGMA, PARAMS(3) = MU で評価される、一般化
%   極値 (GEV) の分布に対する対数尤度の負の値を返します。NLOGL はスカラ
%   です。
%
%   [NLOGL, ACOV] = GEVLIKE(PARAMS,DATA) は、フィッシャー情報行列 ACOV の
%   逆行列を返します。PARAMS の入力パラメータ値が最尤推定の場合、ACOV の
%   対角要素は、それらの漸近分散になります。ACOV は、予想された情報ではなく、
%   観測されたフィッシャー情報量に基づきます。
%
%   K < 0 の場合、GEV は 3 種の極値の分布です。K > 0 の場合、GEV の分布は
%   2 種、または Frechet の極値の分布です。W が WBLCDF 関数で計算される
%   ようなワイブル分布の場合、-W は 3 種の極値の分布で、1/W は 2 種の
%   極値の分布です。K が 0 に近づくような限界では、GEV は EVLIKE 関数
%   で計算された 1 種の極値の分布の鏡像です。
%
%   K >= 1 の場合、GEV の分布の平均は有限ではなく、K >= 1/2 の場合、
%   分散は有限ではありません。GEV の分布は、K*(X-MU)/SIGMA > -1 となる
%   ような X の値に対してのみ正の密度をもちます。
%
%   参考 EVLIKE, GEVCDF, GEVFIT, GEVINV, GEVPDF, GEVRND, GEVSTAT.


%   Copyright 1993-2007 The MathWorks, Inc.
