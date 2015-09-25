% COPULACDF コピュラの累積確率関数
%
%   Y = COPULACDF('Gaussian',U,RHO) は、U の点で評価された線形相関パラメータ 
%   RHO をもつガウス・コピュラの累積確率を返します。U は、P 次元の単位
%   超立方体の N 点を表す [0,1] の値の N×P 行列です。RHO は、P×P の
%   相関行列です。U が N×2 の行列の場合、RHO はスカラの相関係数にもできます。
%
%   Y = COPULACDF('t',U,RHO,NU) は、U にある点で評価された線形相関パラメータ
%   RHO と自由度パラメータ NU をもつ t コピュラの累積確率を返します。
%   U は、[0,1] 内の値の N×P 行列です。RHO は P×P 行列です。U が N×2 
%   行列の場合、RHO はスカラの相関係数にもできます。
%   
%   Y = COPULACDF(FAMILY,U,ALPHA) は、U にある点で評価されたスカラのパラメータ
%   ALPHA をもつ FAMILY で定義された 2 変数のアルキメデス型コピュラの累積
%   確率を返します。FAMILY は、'Clayton', 'Frank', 'Gumbel' のいずれかです。
%   U は [0,1] 内の値の N×2 行列です。
%
%   例:
%      u = linspace(0,1,10);
%      [U1,U2] = meshgrid(u,u);
%      F = copulacdf('Clayton',[U1(:) U2(:)],1);
%      surf(U1,U2,reshape(F,10,10));
%      xlabel('u1'); ylabel('u2');
%
%   参考 COPULAPDF, COPULARND, COPULASTAT, COPULAPARAM.


%   Copyright 2005-2007 The MathWorks, Inc.
