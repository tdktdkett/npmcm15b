% POISSINV   ポアソン逆累積分布関数 (cdf)
%
%   X = POISSINV(P,LAMBDA) は、パラメータ LAMBDA をもつポアソン累積分布
%   関数の逆関数を計算します。ポアソン分布は離散なので、POISSINV は、値 
%   X で POISSON 累積分布関数値が P に等しいか、それ以上である最小の整数 
%   X を出力します。
% 
%   X のサイズは、P と LAMBDA と同じサイズです。スカラの入力は、他の入力
%   と同じサイズの定数行列として機能します。
%
%   参考 POISSCDF, POISSFIT, POISSPDF, POISSRND, POISSTAT, ICDF.


%   Copyright 1993-2007 The MathWorks, Inc. 
