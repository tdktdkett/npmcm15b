% NBINFIT 負の二項分布データのパラメータ推定
%
%   NBINFIT(X) は、ベクトル X で与えられたデータの負の二項分布のパラメータ
%   の最尤推定値を出力します。
%
%   [PARMHAT, PARMCI] = NBINFIT(X,ALPHA) は、与えられたデータの最尤推定値と
%   100(1-ALPHA)% の信頼区間を出力します。デフォルトでは、ALPHA = 0.05 で、
%   95% の信頼区間に対応します。
%
%   [ ... ] = NBINFIT( ..., OPTIONS) は、最尤推定を計算するために使用される
%   数値的な最適化に対する制御パラメータを指定します。 この引数 は、STATSET 
%   の呼び出しにより作成されます。パラメータ名とデフォルト値については、
%   STATSET('nbinfit') を参照してください。
%
%   参考 NBINCDF, NBININV, NBINLIKE, NBINPDF, NBINRND, NBINSTAT, MLE,
%        STATSET.


%   Copyright 1993-2007 The MathWorks, Inc.
