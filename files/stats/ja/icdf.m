% ICDF 指定した分布に対する逆累積分布関数
%
%   X = ICDF(NAME,P,A) は、P の確率値で評価される、パラメータ値 A をもつ
%   NAME で指定された 1 つのパラメータの確率分布に対する逆累積分布関数の
%   値の配列を返します。
% 
%   X = ICDF(NAME,P,A,B) または X = ICDF(NAME,P,A,B,C) は、パラメータ値
%   A, B (および C) をもつ 2 つ、または 3 つのパラメータの確率分布に対する
%   逆累積分布関数の値を返します。
%
%   X のサイズは、入力引数の共通のサイズです。スカラの入力は、他の入力と
%   同じサイズの定数行列として機能します。X の各要素は、入力の対応する
%   要素で評価される、逆累積分布を含みます。
% 
%   逆 cdf の値は、棄却限界として知られています。
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
%      'logn'  または 'Lognまたはmal',
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
%   ICDF は、計算を行うのに他の特別なルーチンを呼び出します。
%
%   例:
%       z = icdf('normal',0.1:0.2:0.9,0,1) % 標準正規分布の値を返します。
%       x = icdf('Poisson',0.1:0.2:0.9,1:5) % 配列の入力
%
%   参考 CDF, MLE, PDF, RANDOM.


%   Copyright 1993-2007 The MathWorks, Inc.
