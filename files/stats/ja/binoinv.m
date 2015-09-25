% BINOINV   二項累積逆累積分布関数(cdf)
%
%   X = BINOINV(Y,N,P) は、パラメータ N と P をもつ二項累積分布関数の
%   逆関数を出力します。二項分布は離散分布であるために、BINOINV は、値 
%   X で計算される二項累積分布関数が、Y に等しいか、または、それを超える
%   最小の整数 X を出力します。
% 
%   X のサイズは、入力引数と同じサイズです。スカラの入力は、他の入力と
%   同じサイズの定数行列として機能します。 
% 
%   X は、値 0,1,2,...,N である整数値をとることに注意してください。
%
%   参考 BINOCDF, BINOFIT, BINOPDF, BINORND, BINOSTAT, ICDF.


%   Copyright 1993-2007 The MathWorks, Inc. 
