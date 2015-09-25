% COPULASTAT コピュラの順位相関
%
%   R = COPULASTAT('Gaussian',RHO) は、線形相関パラメータ RHO をもつ
%   ガウス・コピュラに対応するケンドールの順位相関を返します。RHO が
%   スカラの相関係数の場合、R は 2 変数のコピュラに対応するスカラの相関
%   パラメータになります。RHO が P×P の相関行列の場合、R は P×P の
%   相関行列になります。
%
%   R = COPULASTAT('t',RHO,NU) は、線形相関パラメータ RHO と自由度 NU を
%   もつ t コピュラに対応するケンドールの順位相関 R を返します。RHO が
%   スカラの相関係数の場合、R は 2 変数のコピュラに対応するスカラの相関
%   パラメータになります。RHO が P×P の相関行列の場合、R は P×P の
%   相関行列になります。
%   
%   R = COPULASTAT(FAMILY,ALPHA) は、スカラパラメータ ALPHA をもつ 2 変数
%   のアルキメデス型コピュラに対応するケンドールの順位相関 R を返します。
%   FAMILY は、'Clayton', 'Frank', 'Gumbel' のいずれかになります。
%
%   R = COPULASTAT(...,'type',TYPE) は、指定されたタイプの順位相関を返します。
%   TYPE は、ケンドールの tau を計算する場合は 'Kendall'、または、スピアマンの
%   rho を計算する場合は 'Spearman' を返します。
%
%   COPULASTAT は、解析式が存在しない場合はいくつかのコピュラ族に対する
%   スピアマンの順位相関の近似を使用します。近似は、モンテカルロ・シミュレーション
%   を使用して計算された値への平滑化のフィットに基づきます。
%
%   例:
%      % 線形相関パラメータ -0.7071 をもつ 2 変数のガウス・コピュラに
%      % 対する論理的な順位相関係数を取得します。
%      rho = -.7071
%      tau = copulastat('gaussian',rho)
%
%      % コピュラを使用して従属のベータ分布する乱数を発生します。
%      u = copularnd('gaussian',rho,100);
%      b = betainv(u,2,2);
%
%      % 標本が tau と近似的に等価な順位相関をもつことを確認します。
%      tau_sample = corr(b,'type','k')
%
%   参考 COPULACDF, COPULAPDF, COPULARND, COPULAPARAM.


%   Copyright 2005-2007 The MathWorks, Inc. 
