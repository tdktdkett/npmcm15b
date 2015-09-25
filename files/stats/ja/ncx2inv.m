% NCX2INV 非心カイ二乗逆累積分布関数
%
%   X = NCX2INV(P,V,DELTA) は、パラメータ V と DELTA をもつ確率 P に対する
%   非心カイ二乗累積分布関数の逆関数を計算します。
% 
%   X のサイズは、入力引数と同じサイズです。スカラの入力は、他の入力と
%   同じサイズの定数行列として機能します。
%
%   NCX2INV は、解の収束に、Newton 法を使います。
%
%   参考 NCX2CDF, NCX2PDF, NCX2RND, NCX2STAT, CHI2INV, ICDF.


%   Copyright 1993-2007 The MathWorks, Inc.
