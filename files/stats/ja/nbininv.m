% NBININV 負の二項逆累積分布関数(cdf)
%
%   X = NBININV(Y,R,P) は、パラメータ R と P をもつ負の二項累積分布関数の
%   逆を計算します。負の二項累積分布は離散なので、NBININV は、値 X で
%   負の二項累積分布関数が Y に等しいか、それ以上である最小の整数 X を
%   出力します。
% 
%   X のサイズは、入力引数と同じサイズです。スカラの入力は、他の入力と
%   同じサイズの定数行列として機能します。
%
%   参考 NBINCDF, NBINFIT, NBINLIKE, NBINPDF, NBINRND, NBINSTAT, ICDF.


%   Copyright 1993-2007 The MathWorks, Inc. 
