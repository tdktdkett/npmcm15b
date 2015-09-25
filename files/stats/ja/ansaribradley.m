% ANSARIBRADLEY  等価な分散に対するアンサリ-ブラッドリーの 2 標本検定
%
%   H = ANSARIBRADLEY(X,Y) は、ベクトル X と Y の 2 つの独立な標本が、
%   同じ中央値と形で異なる分散をもつ分布から成るという対立仮説に対して、
%   それらが同じ分布から成るという仮説のアンサリ-ブラッドリー検定を実行します。
%   その結果、同一の分布の帰無仮説が 5% の有意水準で棄却できない場合 H=0、
%   あるいは、帰無仮説が 5% のレベルで棄却できる場合 H=1 になります。
%   X と Y は異なる長さでも構いません。
%
%   X と Y は行列か N-D 配列にもなります。行列の場合、ANSARIBRADLEY は、
%   各列に沿って別々の検定が行なわれ、結果のベクトルを返します。
%   X と Y は、同じ列数でなければなりません。N-D 配列の場合、ANSARIBRADLEY は、
%   1番目の非シングルトン次元に沿って動作します。X と Y は、残りのすべての
%   次元が同じサイズでなければなりません。
%
%   ANSARIBRADLEY は、NaN を欠損値として扱い、それらを無視します。
%
%   H = ANSARIBRADLEY(X,Y,ALPHA) は、有意水準 (100*ALPHA)% で検定を行います。
%   ALPHA は、スカラでなければなりません。
%
%   H = ANSARIBRADLEY(X,Y,ALPHA,TAIL) は、TAIL で指定された対立仮説に対して
%   検定を行ないます。
%       'both'  -- "分散パラメータは等しくない" (両側検定)
%       'right' -- "X の分散は Y の分散より大きい" (右側検定)
%       'left'  -- "X の分散は Y の分散より小さい" (左側検定)
%   TAIL は、単一の文字でなければなりません。
%
%   [H,P] = ANSARIBRADLEY(...) は、p-値を返します。すなわち、与えられた
%   結果、または、偶然に帰無仮定が真になる場合の極値を観測する確率です。
%   小さい P の値は、帰無仮定の妥当性が疑わしいとされます。
%
%   [H,P,STATS] = ANSARIBRADLEY(...) は、つぎのフィールドをもつ構造体を
%   返します。
%      'W'      -- X の標本に対するアンサリ-ブラッドリーの順位和である
%                  検定統計量 W の値
%      'Wstar'  -- 適切な正規統計量 W*
%
%   [...] = ANSARIBRADLEY(X,Y,ALPHA,TAIL,EXACT) が EXACT='on' である場合、
%   W の分布の厳密な計算を使って P を計算します。EXACT='off' の場合、
%   W* の分布に対する正規の近似を使って P を計算します。EXACT が空の場合の
%   デフォルトは、X と Y の行の総数 N が 25 以下の場合に厳密な計算を使用し、
%   N>25 の場合は、正規の近似を使用します。ALPHA と TAIL に [] が渡されると、
%   EXACT に対して値が指定されていてもそれらのデフォルト値を使用します。
%   N は、任意の NaN 値 (欠損値を表す) が削除される前に計算されることに
%   注意してください。
%
%   [...] = ANSARIBRADLEY(X,Y,ALPHA,TAIL,EXACT,DIM) は、X と Y の次元
%   DIM に沿って行なわれます。
%
%   アンサリ-ブラッドリー検定は、等価な分散の 2 標本 F 検定のノンパラメトリックな
%   別バージョンです。X と Y が正規分布から成るという仮定を必要としません。
%   分布の分散は、通常、その分散、または標準偏差で測定されますが、アンサリ-
%   ブラッドリー検定は、有限の分散をもたない分布からの標本で使用することが
%   できます。
%
%   アンサリ-ブラッドリー検定の背景にある理論は、等価な中央値をもつグループを
%   必要とします。その仮定の下で、各グループの分布が連続で同一である場合、
%   検定は、各グループの分布に依存しません。グループが同じ中央値をもたない
%   場合、結果は間違っていることがあります。アンサリとブラッドリーは、
%   この場合、中央値を差し引くことを勧めていますが、結果の検定の分布は、
%   帰無仮定において、X と Y の一般的な分布と独立しています。中央値を
%   差し引いて検定を行なう場合、ANSARIBRADLEY を呼び出す前に、X と Y 
%   から中央値を差し引いておく必要があります。
%
%   例:  分散は 2 年のモデルに対して有意差がありますか?
%      load carsmall
%      [h,p,st] = ansaribradley(MPG(Model_Year==82),MPG(Model_Year==76))
%
%   参考 VARTEST, VARTESTN, TTEST2, TIEDRANK.


%   Copyright 2005-2007 The MathWorks, Inc.
