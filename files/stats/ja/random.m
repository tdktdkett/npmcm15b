% RANDOM 特定の分布から乱数の配列を発生
%
%   R = RANDOM(NAME,A) は、パラメータ値 A をもつ NAME で指定された 1 つの
%   パラメータの確率分布から選択される乱数の配列を返します。
%
%   R = RANDOM(NAME,A,B) または R = RANDOM(NAME,A,B,C) は、パラメータ値 
%   A, B (と C) をもつ 2 つ、または 3 つのパラメータの確率分布から選択
%   される乱数の配列を返します。
%
%   R のサイズは、入力引数と共通のサイズです。スカラの入力は、他の入力と
%   同じサイズの定数行列として機能します。
%
%   R = RANDOM(NAME,A,M,N,...) または R = RANDOM(NAME,A,[M,N,...]) は、
%   1 つのパラメータの分布に対する M×N×... の乱数の配列を返します。
%   同様に、R = RANDOM(NAME,A,B,M,N,...) または R = RANDOM(NAME,A,B,[M,N,...])、
%   そして R = RANDOM(NAME,A,B,C,M,N,...) または R = RANDOM(NAME,A,B,C,[M,N,...])
%   は、2 つ、または 3 つのパラメータの分布に対する M×N×... の乱数の配列を
%   返します。
% 
%   NAME はつぎのとおりです。
%
%      'beta'  または 'Beta',
%      'bino'  または 'Binomial',
%      'chi2'  または 'Chisquare',
%      'exp'   または 'Exponential',
%      'ev'    または 'Extreme Value',
%      'f'     または 'F',
%      'gam'   または 'Gamma',
%      'gev'   または 'Generalized Extreme Value',
%      'gp'    または 'Generalized Pareto',
%      'geo'   または 'Geometric',
%      'hyge'  または 'Hypergeometric',
%      'logn'  または 'Lognormal',
%      'nbin'  または 'Negative Binomial',
%      'ncf'   または 'Noncentral F',
%      'nct'   または 'Noncentral t',
%      'ncx2'  または 'Noncentral Chi-square',
%      'norm'  または 'Normal',
%      'poiss' または 'Poisson',
%      'rayl'  または 'Rayleigh',
%      't'     または 'T',
%      'unif'  または 'Uniform',
%      'unid'  または 'Discrete Uniform',
%      'wbl'   または 'Weibull'.
%
%   部分一致を受け入れ、また、大文字小文字を無視します。
%
%   RANDOM は計算を行う多くの特別なルーチンを呼び出します。
%
%   参考 CDF, ICDF, MLE, PDF.


%   Copyright 1993-2007 The MathWorks, Inc.
