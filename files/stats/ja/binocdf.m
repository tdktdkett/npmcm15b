% BINOCDF   二項累積分布関数
%
%   Y=BINOCDF(X,N,P) は、パラメータ N と P をもつ、X の値での
%   二項累積分布関数を出力します。
% 
%   Y のサイズは、入力引数と同じサイズです。スカラの入力は、
%   他の入力と同じサイズの定数行列として機能します。
% 
%   計算アルゴリズムは、二項確率密度の累積和を使用しています。
%
%   参考 BINOFIT, BINOINV, BINOPDF, BINORND, BINOSTAT, CDF.


%   Copyright 1993-2007 The MathWorks, Inc. 
