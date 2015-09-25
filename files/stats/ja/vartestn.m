%VARTESTN  複数のグループにまたがる等価な分散の検定
%
%   VARTESTN(X) は、行列 X の列に対して等価な分散のバートレットの検定を
%   行ないます。これは、X の列が異なる分散を持つ正規分布からなるという
%   対立仮説に対して、それらは同じ分散を持つ正規分布からなるという帰無仮説の
%   検定です。結果は、グループのボックスプロットと統計量の概要表を表示します。
%
%   VARTESTN(X,GROUP) は、ベクトル X と、X の要素ごとに 1 つの行を持つ
%   カテゴリ変数、ベクトル、文字配列、または、文字列のセル配列である 
%   GROUP の引数が必要です。X の値は、同じグループ内で置き換えられた 
%   GROUP の同じ値に対応します。関数は、グループにまたがる等価な分散に
%   対して検定を行ないます。
%
%   VARTESTN は、NaN を欠損値として扱い、それらを無視します。
%
%   P = VARTESTN(...) は、p-値を返します。すなわち、与えられた結果、または、
%   偶然に帰無仮定が真になる場合の極値を観測する確率です。P の小さな値は、
%   帰無仮説の妥当性が疑われます。
%
%   [P,STATS] = VARTESTN(...) は、以下のフィールドを持つ構造体を返します。
%      'chistat' -- 検定統計量の値
%      'df'      -- 検定の自由度
%
%   [...] = VARTESTN(X,GROUP,DISPLAYOPT) は、DISPLAYOPT='on' (デフォルト) の
%   場合、ボックスプロットと表を表示します。DISPLAYOPT='off' は、これらの
%   表示を省略します。
%
%   [...] = VARTESTN(X,GROUP,DISPLAYOPT,TESTTYPE) は、TESTTYPE='robust' の
%   場合、バートレットの検定の代わりに Levene の検定を行ないます。これは、
%   標本の分布が正規でない場合、また、これらが異常値となる傾向がある場合は特に、
%   ロバストな選択に役立ちます。この検定に対して、STATS 出力の構造体は、
%   検定統計量を含む 'fstat'、分母と分子の自由度を含む 'df1' と 'df2' という
%   名前のフィールドを持ちます。TESTTYPE='classical' を設定すると、バートレット
%   の検定を行ないます。
%
%   例:マイル距離の測定の分散は、別のモデル年のものと有意差はありますか?
%      load carsmall
%      vartestn(MPG,Model_Year)
%
%   参考 VARTEST, VARTEST2, ANOVA1.


%   Copyright 2005-2008 The MathWorks, Inc.
