%IWISHRND  ウィッシャートランダム行列の逆行列の生成
%
%   W=IWISHRND(SIGMA,DF) は、パラメータ SIGMA と DF を持つ逆ウィッシャート
%   分布からランダム行列 W を生成します。W の逆行列は、共分散行列 SIGMA と
%   自由度 DF を持つウィッシャート分布になります。
%
%   W=IWISHRND(SIGMA,DF,DI) は、DI'*DI = INV(SIGMA)、すなわち、SIGMA の
%   コレスキー因子の逆行列の転置となるような下三角行列になる DI が必要です。
%   同じ値の SIGMA を使用して、IWISHRND を複数回呼び出す場合、毎回、計算する
%   代わりに DI を与える方がより効果的です。
%
%   [W,DI]=IWISHRND(SIGMA,DF) は、IWISHRND の将来の呼び出しで、再使用可能な
%   DI を返します。
%
%   異なるソースは、逆ウィッシャート分布に対して異なるパラメータ化を使用する
%   ことに注意してください。この関数は、出力行列の平均が SIGMA/(DF-K-1) と
%   なるようなパラメータ SIGMA を定義します。ここで、K は SIGMA の行数と列数です。
%
%   参考 WISHRND.


%   Copyright 1993-2008 The MathWorks, Inc.
