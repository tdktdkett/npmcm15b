% HYGEINV 超幾何逆累積分布関数 (cdf)
%
%   X = HYGEINV(P,M,K,N) は、パラメータ M, K, N をもつ超幾何累積分布関数の
%   逆を出力します。超幾何分布は、離散なので、HYGEINV は、値 X での超幾何
%   累積分布関数値が P に等しいかそれを超える最小の X を出力します。
% 
%   X のサイズは、入力引数と同じサイズです。スカラの入力は、他の入力
%   と同じサイズの定数行列として機能します。
%
%   参考 HYGECDF, HYGEPDF, HYGERND, HYGESTAT, ICDF.


%   Copyright 1993-2007 The MathWorks, Inc.
