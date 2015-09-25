% TIEDRANK 同順位を調整をして、標本の順位を計算
%
%   [R, TIEADJ] = TIEDRANK(X) は、ベクトル X の値の順位を計算します
%   X の値が同順位の場合、TIEDRANK は、その平均の順位を計算します。
%   出力値 TIEADJ は、非計量な検定 SIGNRANK と RANKSUM で必要と
%   なる同順位と、スピアマンの順位相関の計算に対する調整値 TIEADJ を
%   出力します。
%
%   [R, TIEADJ] = TIEDRANK(X,1) は、ベクトル X の値の順位を計算します。
%   TIEADJ は、ケンドールの tau の計算で必要となる同順位に対する 3 つの
%   調整のベクトルです。TIEDRANK(X,0) は、TIEDRANK(X) と同じです。
%
%   [R, TIEADJ] = TIEDRANK(X,0,1) は、最小と最大の値が順位 1 を得て、
%   次の最小と最大が順位 2 を得て ... となるように、それぞれの最後から
%   順位を計算します。これらの順位は、アンサリ-ブラッドリー検定に対して
%   使われます。
%
%   参考 ANSARIBRADLEY, CORR, PARTIALCORR, RANKSUM, SIGNRANK.


%   Copyright 1993-2007 The MathWorks, Inc.
