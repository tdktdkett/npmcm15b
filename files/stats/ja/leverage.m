% LEVERAGE  回帰診断
%
%   H=LEVERAGE(DATA,MODEL) は、回帰の各行 (点) に対するレバレッジを求めます。
%   DATA は、回帰に対する予測子変数の行列です。引数 MODEL は、回帰モデルの
%   線形次数を制御します。デフォルトでは、LEVERAGE は、線形の加算モデルに
%   定数項をもつものを仮定しています。MODEL は、つぎの文字列を設定できます。
%   'linear'        - 定数、線形項を含む
%   'interaction' 　- 定数、線形、クロス積の項を含む
%   'quadratic' 　　- 二乗項を含む相対項
%   'purequadratic' - 定数、線形、二乗項を含む
%
%   出力 H は、レバレッジの値のベクトルです。H の要素は、X を項の値の
%   行列としたときの、"hat" 行列 X*inv(X'*X)*X' の対角の値です。
%
%   参考 REGSTATS.


%   Copyright 1993-2007 The MathWorks, Inc. 
