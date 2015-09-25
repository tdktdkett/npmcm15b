%LOGNRND  対数正規分布からの乱数の配列
%
%   R = LOGNRND(MU,SIGMA) は、分布パラメータ MU と SIGMA を持つ対数正規分布から
%   生成された乱数の配列を返します。MU と SIGMAは、それぞれ関連する正規分布の
%   平均と標準偏差です。R のサイズは、MU と SIGMA が共に配列の場合、それらに
%   共通するサイズになります。どちらかのパラメータがスカラの場合、R のサイズは、
%   もう一方のパラメータと同じサイズになります。
%
%   R = LOGNRND(MU,SIGMA,M,N,...) または R = LOGNRND(MU,SIGMA,[M,N,...]) は、
%   M×N×... の配列を返します。
%
%   パラメータ MU と SIGMA を持つ対数正規のランダムな変数の平均と分散は、
%   以下のとおりです。
%
%      M = exp(MU + SIGMA^2/2)
%      V = exp(2*MU + SIGMA^2) * (exp(SIGMA^2) - 1)
%
%   したがって、平均 M と分散 V を持つ対数正規分布からのデータを生成するには、
%   以下を使用します。
%
%      MU = log(M^2 / sqrt(V+M^2))
%      SIGMA = sqrt(log(V/M^2 + 1))
%
%   参考 LOGNCDF, LOGNFIT, LOGNINV, LOGNLIKE, LOGNPDF, LOGNSTAT, 
%        RANDOM, RANDN.


%   Copyright 1993-2008 The MathWorks, Inc.
