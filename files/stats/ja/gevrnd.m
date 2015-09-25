% GEVRND 一般化極値からのランダム配列
%
%   R = GEVRND(K,SIGMA,MU) は、形状パラメータ K、スケールパラメータ SIGMA、
%   位置パラメータ MU をもつ一般化極値 (GEV) の分布から選択された乱数の
%   配列を返します。すべて配列の場合、R のサイズは、K, SIGMA, MU と共通の
%   サイズになります。任意のパラメータがスカラの場合、R のサイズは他の
%   パラメータのサイズになります。
%
%   R = GEVRND(K,SIGMA,MU,M,N,...) または R = GEVRND(K,SIGMA,MU,[M,N,...]) は、
%   M×N× ... 配列を返します。
%
%   K < 0 の場合、GEV は 3 種の極値の分布です。K > 0 の場合、GEV の分布は
%   2 種、または Frechet の極値の分布です。W が WBLCDF 関数で計算される
%   ようなワイブル分布の場合、-W は 3 種の極値の分布で、1/W は 2 種の
%   極値の分布です。K が 0 に近づくような限界では、GEV は EVRND 関数
%   で計算された 1 種の極値の分布の鏡像です。
%
%   K >= 1 の場合、GEV の分布の平均は有限ではなく、K >= 1/2 の場合、
%   分散は有限ではありません。GEV の分布は、K*(X-MU)/SIGMA > -1 となる
%   ような X の値に対してのみ正の密度をもちます。
%
%   参考 EVRND, GEVCDF, GEVFIT, GEVINV, GEVLIKE, GEVPDF, GEVSTAT, RANDOM.


%   Copyright 1993-2007 The MathWorks, Inc. 
