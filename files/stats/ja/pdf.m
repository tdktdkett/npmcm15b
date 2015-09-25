% PDF 指定した分布に対する密度関数
%
%   Y = PDF(NAME,X,A) は、X 内の値で評価される、パラメータ値 A をもつ NAME 
%   で指定された 1 つのパラメータの確率分布に対する確率密度関数の値の
%   配列を返します。
%
%   Y = PDF(NAME,X,A,B) または Y = PDF(NAME,X,A,B,C) は、パラメータ値
%   A, B (と C) をもつ 2 つ、または 3 つのパラメータの確率分布に対する
%   確率密度関数の値を返します。
%
%   Y のサイズは、入力引数の共通のサイズです。スカラの入力は、他の入力と
%   同じサイズの定数行列として機能します。Y の各要素は、入力の対応する
%   要素で評価される、確率密度を含みます。
% 
%   NAME は、つぎのいずれかです。
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
%   PDF は、計算を実行するとき、対応するルーチンを呼び出します。
%
%   参考 CDF, ICDF, MLE, RANDOM.


%   Copyright 1993-2007 The MathWorks, Inc.
