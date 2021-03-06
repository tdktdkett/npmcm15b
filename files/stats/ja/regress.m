% REGRESS 最小二乗を使った重線形回帰
%
%   B = REGRESS(Y,X) は、線形モデル Y = X*B の回帰係数のベクトル B を
%   出力します。X は、観測値に対応する行と変数を予測するための列をもつ 
%   n×p の行列です。Y は、応答の観測値の n×1 のベクトルです。
%
%   [B,BINT] = REGRESS(Y,X) は、B に対する 95% の信頼区間の行列 BINT を
%   出力します。
%
%   [B,BINT,R] = REGRESS(Y,X) は、残差のベクトル R を出力します。
%
%   [B,BINT,R,RINT] = REGRESS(Y,X) は、異常値を診断するために使われる
%   区間の行列 RINT を出力します。RINT(i,:) が 0 を含まない場合、i 番目
%   の残差は、5% の有意水準で予測されるよりも大きくなります。これは、
%   I 番目の観測が異常値であるという証拠になります。
%
%   [B,BINT,R,RINT,STATS] = REGRESS(Y,X) は、つぎの順に、R^2 統計量、
%   F 統計量、完全なモデルに対する p 値と誤差分散の推定を含むベクトル 
%   STATS を出力します。
%
%   [...] = REGRESS(Y,X,ALPHA) は、BINT を計算するために 100*(1-ALPHA)% 
%   の信頼区間を、RINT を計算するために (100*ALPHA)% の有意水準を使います。
%
%   X は、モデルが定数項を含んでいるように 1 つの列を含んでいます。
%   F 統計量と p 値は、モデルが定数項を含んでいるという仮定のもとで計算
%   され、そのために、モデルが定数項を含んでいない場合、正しくありません。
%   R^2 値は、1 から二乗和の合計となる二乗和誤差の比を引いたものです。
%   この値値は定数をもたないモデルに対し、負となることがありますが、
%   これは、そのモデルがそのデータに不適切であることを示します。
%
%   X の列が一次従属の場合、"基底解" を得るために、REGRESS は、B の要素
%   の最大となる可能な数を 0 に設定し、B の 0 要素に対応する BINT の
%   要素の 0 を出力します。
%
%   REGRESS は、X または Y の NaN を欠損値として扱い、削除します。
%
%   参考 LSCOV, POLYFIT, REGSTATS, ROBUSTFIT, STEPWISE.


%   Copyright 1993-2007 The MathWorks, Inc.
