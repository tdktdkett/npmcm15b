% GEVFIT 一般化極値データのパラメータ推定と信頼区間
%
%   PARMHAT = GEVFIT(X) は、X の与えられたデータの一般化極値 (GEV) 分布
%   のパラメータの最尤推定を返します。PARMHAT(1) は形状パラメータで、
%   K, PARMHAT(2) はスケールパラメータで、SIGMA と PARMHAT(3) は位置パラメータ
%   MU です。
%
%   [PARMHAT,PARMCI] = GEVFIT(X) は、パラメータ推定に対する 95% の信頼
%   区間を返します。
%
%   [PARMHAT,PARMCI] = GEVFIT(X,ALPHA) は、パラメータ推定に対する信頼
%   区間 100(1-ALPHA)% を返します。
%
%   [...] = GEVFIT(X,ALPHA,OPTIONS) は、ML 推定を計算するために使われる
%   反復アルゴリズムに対する制御パラメータを指定します。この引数は、
%   STATSET への呼び出しで作成することが可能です。パラメータ名とデフォルト値
%   については、STATSET('gevfit') を参照してください。
%
%   デフォルト値を使用するには、ALPHA に [] を渡してください。
%
%   K < 0 の場合、GEV は 3 種の極値の分布です。K > 0 の場合、GEV の分布は
%   2 種、または Frechet の極値の分布です。W が WBLCDF 関数で計算される
%   ようなワイブル分布の場合、-W は 3 種の極値の分布で、1/W は 2 種の
%   極値の分布です。K が 0 に近づくような限界では、GEV は EVFIT 関数
%   で計算された 1 種の極値の分布の鏡像です。
%
%   K >= 1 の場合、GEV の分布の平均は有限ではなく、K >= 1/2 の場合、
%   分散は有限ではありません。GEV の分布は、K*(X-MU)/SIGMA > -1 となる
%   ような X の値に対してのみ正の密度をもちます。
%
%   参考 EVFIT, GEVCDF, GEVINV, GEVLIKE, GEVPDF, GEVRND, GEVSTAT, MLE,
%        STATSET.


%   Copyright 1993-2007 The MathWorks, Inc.
