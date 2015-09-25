% HYGERND   超幾何分布からの乱数の配列
%
% R = HYGERND(M,K,N) は、パラメータ M, K, N をもつ超幾何分布から抽出した
% 乱数の配列を出力します。R の大きさは、M, K, N と共通する大きさになります。
% R のサイズは、すべて配列の場合、M, K, N の共通のサイズになります。
% いずれのパラメータもスカラの場合、R のサイズは、他のパラメータのサイズに
% なります。
%
% R = HYGERND(M,K,N,MM,NN,...) または R = HYGERND(M,K,N,[MM,NN,...]) は、
% MM×NN×... の配列を出力します。
% 
%   参考 HYGECDF, HYGEINV, HYGEPDF, HYGESTAT, RANDOM.


%   Copyright 1993-2004 The MathWorks, Inc. 
