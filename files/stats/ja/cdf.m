% CDF 指定した確率分布累積分布関数
%
%   Y = CDF(NAME,X,A) は、X の値で評価されたパラメータ A をもつ NAME で
%   指定された 1 つのパラメータの確率分布に対する累積分布関数の値の配列を
%   返します。
% 
%   Y = CDF(NAME,X,A,B) または Y = CDF(NAME,X,A,B,C) は、パラメータ値 
%   A, B (と C) をもつ 2つ、または 3 つのパラメータの確率分布に対する
%   累積分布関数の値を返します。
%
%   Y のサイズは、入力引数と同じサイズです。A のスカラ入力は、他の入力と
%   同じサイズの定数行列として機能します。Y の各要素は、入力の対応する要素で
%   評価された累積分布を含みます。
% 
%   NAME はつぎのいずれかになります。
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
%   CDF は、計算を行なういくつかの特定のルーチンを呼び出します。
%
%   参考 ICDF, MLE, PDF, RANDOM.


%   Copyright 1993-2007 The MathWorks, Inc.
