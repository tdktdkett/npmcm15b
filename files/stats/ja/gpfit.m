% GPFIT 一般化パレートデータに対するパラメータ推定と信頼区間
%
%   PARMHAT = GPFIT(X) は、X で与えられたデータの 2 つのパラメータの
%   一般化パレート (GP) 分布のパラメータの最尤推定を返します。PARMHAT(1) は、
%   すその指数 (形状) パラメータ、K と PARMHAT(2) はスケールパラメータ SIGMA 
%   です。GPFIT は、閾値 (位置) パラメータをフィッティングしません。
%
%   [PARMHAT,PARMCI] = GPFIT(X) は、パラメータ推定に対する 95% の信頼区間を
%   返します。
%
%   [PARMHAT,PARMCI] = GPFIT(X,ALPHA) は、パラメータ推定に対する 100(1-ALPHA)% 
%   の信頼区間を返します。
%
%   [...] = GPFIT(X,ALPHA,OPTIONS) は、ML 推定を計算するために使われる
%   反復アルゴリズムに対する制御パラメータを指定します。この引数は、STATSET 
%   への呼び出しで作成されます。パラメータ名とデフォルト値については、
%   STATSET('gpfit') を参照してください。
%
%   デフォルト値を使用するには、ALPHA に [] を渡してください。
%
%   GPCDF のような一般化パレートに対する他の関数は、閾値パラメータ THETA
%   を受け入れます。しかし、GPFIT は、THETA を推定せず、それは既知である
%   ものと仮定し、GPFIT を呼び出す前に X から取り除かなければなりません。
%
%   K = 0 で THETA = 0 の場合、GP は指数分布と等価になります。K > 0 で 
%   THETA = SIGMA の場合、GP はパレート分布と等価になります。K >= 1 の
%   場合、GP の平均は有限ではなく、K >= 1/2 の場合、分散は有限ではなく
%   なります。K >= 0 の場合、GP は X>THETA に対して正の密度をもち、
%   K < 0 の場合、0 <= (X-THETA)/SIGMA <= -1/K に対して正の密度をもちます。
%
%   参考 GPCDF, GPINV, GPLIKE, GPPDF, GPRND, GPSTAT, MLE, STATSET.


%   Copyright 1993-2007 The MathWorks, Inc.
