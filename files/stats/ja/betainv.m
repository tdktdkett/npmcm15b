% BETAINV   ベータ逆累積分布関数 (cdf)
%
%   X = BETAINV(P,A,B) は、パラメータ A と B をもつ P の値でのベータ累積
%   分布関数の逆関数を出力します。
%
%   X のサイズは、入力引数と同じサイズです。スカラの入力は、他の入力と
%   同じサイズの定数行列として機能します。 
% 
%   BETAINV は、解の収束計算にニュートン法を使用します。
%
%   参考 BETACDF, BETAFIT, BETALIKE, BETAPDF, BETARND, BETASTAT, ICDF.


%   Copyright 1993-2007 The MathWorks, Inc.
