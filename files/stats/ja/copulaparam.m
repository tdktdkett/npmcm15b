% COPULAPARAM 順位相関の関数としてのコピュラのパラメータ
%
%   RHO = COPULAPARAM('Gaussian',R) は、ケンドールの順位相関 R をもつ
%   ガウス・コピュラに対応する線形相関パラメータ RHO を返します。R が
%   スカラの相関係数の場合、RHO は 2 変数コピュラに対応するスカラの相関
%   係数になります。R が P×P の相関行列の場合、RHO は P×P の相関行列に
%   なります。
%
%   RHO = COPULAPARAM('t',R,NU) は、ケンドールの順位相関 R と自由度 NU
%   をもつ t コピュラに対応する線形相関パラメータ RHO を返します。R が
%   スカラの相関係数の場合、RHO は 2 変数コピュラに対応するスカラの相関
%   係数になります。R が P×P の相関行列の場合、RHO は P×P の相関行列に
%   なります。
%   
%   ALPHA = COPULAPARAM(FAMILY,R) は、ケンドールの順位相関 R をもつ 
%   2 変数のアルキメデス型コピュラに対応するコピュラパラメータ ALPHA を
%   返します。R はスカラです。FAMILY は、'Clayton', 'Frank', 'Gumbel' の
%   いずれかです。
%
%   [...] = COPULAPARAM(...,'type',TYPE) は、R が順位相関の指定タイプで
%   あるものと仮定します。TYPE はケンドールの tau に対して 'Kendall'、
%   あるいは、スピアマンの rho に対して 'Spearman' です。
%
%   COPULAPARAM は、解析式が存在しない場合、いくつかのコピュラ族に対する
%   スピアマンの順位相関に近似を使用します。近似は、モンテカルロ・シミュレーション
%   を使用して計算された値への平滑化のフィットに基づきます。
%
%   例:
%      % -0.5 の順位相関をもつ 2 変数ガウス・コピュラに対応する線形相関
%      % 係数を取得します。
%      tau = -0.5
%      rho = copulaparam('gaussian',tau)
%
%      % コピュラを使って従属のベータ分布する乱数値を生成します。
%      u = copularnd('gaussian',rho,100);
%      b = betainv(u,2,2);
%
%      % 標本が tau と近似的に等価な順位相関をもつことを確認します。
%      tau_sample = corr(b,'type','k')
%
%   参考 COPULACDF, COPULAPDF, COPULARND, COPULASTAT.


%   Copyright 2005-2007 The MathWorks, Inc. 
