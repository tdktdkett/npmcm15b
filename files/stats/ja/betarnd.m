% BETARND   ベータ分布からの乱数の配列
%
%   R = BETARND(A,B) は、パラメータ A と B をもつベータ分布から抽出した
%   乱数の配列を出力します。R のサイズは、A と B が共に配列の場合、共通の
%   サイズになります。どちらかのパラメータがスカラの場合、R のサイズは、
%   もう一方のパラメータと同じサイズになります。
%
%   R = BETARND(A,B,M,N,...) または R = BETARND(A,B,[M,N,...]) は、
%   M×N×.... の配列を出力します。
%
%   参考 BETACDF, BETAINV, BETALIKE, BETAPDF, BETASTAT, RANDOM.


%   Copyright 1993-2007 The MathWorks, Inc. 
