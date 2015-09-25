% FRND   F分布からの乱数の配列
%
% R = FRND(V1,V2) は、自由度 V1 と V2 をもつ F分布から抽出した乱数の配列を
% 出力します。R の大きさは、V1 と V2 が共に配列の場合、それらに共通する
% 大きさになります。どちらかのパラメータがスカラの場合、R の大きさは、
% もう一方のパラメータと同じ大きさになります。
%
% R = FRND(V1,V2,M,N,...) または R = FRND(V1,V2,[M,N,...]) は、
% M×N×... の配列を出力します。 
%
%   参考 FCDF, FINV, FPDF, FSTAT, NCFRND, RANDOM.


%   Copyright 1993-2004 The MathWorks, Inc. 
