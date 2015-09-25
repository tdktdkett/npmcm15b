% COPULARND  コピュラの乱数ベクトル
%
%   U = COPULARND('Gaussian',RHO,N) は、線形相関パラメータ RHO をもつ
%   ガウス・コピュラから生成された N 個の乱数ベクトルを返します。RHO が
%   P×P の相関行列の場合、U は N×P の行列になります。RHO がスカラの
%   相関係数の場合、COPULARND は、2 変数のガウス・コピュラから U を生成
%   します。U の各列は (0,1) で一様な、周辺分布からの標本です。
%
%   U = COPULARND('t',RHO,NU,N) は、線形相関パラメータ RHO と自由度 NU 
%   をもつ t コピュラから生成された N 個の乱数ベクトルを返します。RHO が
%   P×P の相関行列の場合、U は N×P 行列になります。RHO がスカラの相関
%   係数の場合、COPULARND は 2 変数の t コピュラから U を生成します。
%   U の各列は、(0,1) で一様な周辺分布からの標本です。
%
%   U = COPULARND(FAMILY,ALPHA,N) は、スカラパラメータ ALPHA をもつ 
%   FAMILY で決まる 2 変数のアルキメデス型コピュラから生成された
%   N 個の乱数ベクトルを返します。FAMILY は 'Clayton', 'Frank', 'Gumbel' 
%   のいずれかです。U は N×2 の行列です。U の各列は、(0,1) で一様な
%   周辺分布からの標本です。
%
%   例:
%      % -0.5 の順位相関をもつ 2 変数のガウス・コピュラに対応する線形
%      % 相関パラメータを導き出します。
%      tau = -0.5
%      rho = copulaparam('gaussian',tau)
%
%      % コピュラを使って従属のベータ分布する乱数値を生成します。
%      u = copularnd('gaussian',rho,100)
%      b = betainv(u,2,2)
%
%      % 標本が tau と近似的に等価な順位相関をもつことを確認します。
%      tau_sample = corr(b,'type','kendall')
%
%   参考 COPULACDF, COPULAPDF, COPULASTAT, COPULAPARAM.


%   Copyright 2005-2007 The MathWorks, Inc. 
