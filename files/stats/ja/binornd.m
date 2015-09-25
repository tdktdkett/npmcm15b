% BINORND   二項分布からの乱数の配列
%
% R = BINORND(N,P,MM,NN) は、パラメータ N と P をもつ二項分布から抽出
% した乱数の配列を出力します。R の大きさは、N と P が共に配列の場合、
% それらに共通する大きさになります。どちらかのパラメータがスカラの場合、
% R の大きさは、もう一方のパラメータと同じ大きさになります。
%
% R = BINORND(N,P,MM,NN,...) または R = BINORND(N,P,[MM,NN,...]) は、
% MM×NN×... の配列を出力します。
%
%   参考 BINOCDF, BINOINV, BINOPDF, BINOSTAT, RANDOM.


%   Copyright 1993-2004 The MathWorks, Inc. 
