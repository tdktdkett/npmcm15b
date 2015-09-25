% COPULAPDF コピュラの確率密度関数
%
%   Y = COPULAPDF('Gaussian',U,RHO) は、U の点で評価された、線形相関
%   パラメータ RHO をもつガウス・コピュラの確率密度を返します。U は、
%   P 次元の単位超立方体内の N 点を表す [0,1] にある値の N×P 行列です。
%   RHO は P×P 行列です。U が N×2 行列の場合、RHO はスカラの相関係数
%   にもなります。
%
%   Y = COPULAPDF('t',U,RHO,NU) は、U の点で評価された、線形相関パラメータ 
%   RHO と自由度パラメータ NU をもつ t コピュラの確率密度を返します。
%   U は [0,1] にある値の N×P の行列です。RHO は P×P の相関行列です。
%   U が N×2 行列の場合、RHO はスカラの相関係数にもなります。
%   
%   Y = COPULAPDF(FAMILY,U,ALPHA) は、スカラのパラメータ ALPHA をもつ
%   FAMILY で決まる 2 変数のアルキメデス型コピュラの確率密度を返します。
%   FAMILY は 'Clayton', 'Frank', 'Gumbel' のいずれかです。U は [0,1] に
%   ある値の N×2 の行列です。
%
%   例:
%      u = linspace(0,1,10);
%      [U1,U2] = meshgrid(u,u);
%      F = copulapdf('Clayton',[U1(:) U2(:)],1);
%      surf(U1,U2,reshape(F,10,10));
%      xlabel('u1'); ylabel('u2');
%
%   参考 COPULACDF, COPULARND, COPULASTAT, COPULAPARAM.


%   Copyright 2005-2007 The MathWorks, Inc. 
