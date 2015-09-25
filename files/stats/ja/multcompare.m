%MULTCOMPARE  平均値あるいは他の推定量に関する多重比較検定の実行
%
%   MULTCOMPAREは、(傾き、切片、平均のような) 推定が有意差を持つよう定義
%   された 1 要因分散分析 (ANOVA) または ANOCOVA の結果を用いた多重比較
%   検定を行います。
%
%   COMPARISON = MULTCOMPARE(STATS) は、anova1, anova2, anovan, aoctool, 
%   kruskalwallis, friedman のいずれかの関数から出力として得られる構造体 
%   STATS の情報を使用して多重比較検定を実行します。戻り値 COMPARISON は、
%   比較に対して 1 行と 5 列を持つ行列です。1-2 列目は、比較する 2 つの
%   標本のインデックスです。3-5 列目は、これらの差に対する下限と推定と
%   上限です。
%
%   COMPARISON = MULTCOMPARE(STATS, 'PARAM1',val1, 'PARAM2',val2,...) は、
%   以下のいくつかの名前と値の組み合わせを指定します。
%
%     'alpha'       100*(1-ALPHA)% の区間の信頼度を指定します。
%                   (デフォルト 0.05)
%     'display'     前後の区間を比較する推定のグラフを表示するには 'on' 
%                   (デフォルト) で、グラフを省略するには 'off' のいずれかを
%                   指定します。
%     'ctype'       限界値を使用するためのタイプ。選択肢は、'tukey-kramer' 
%                   (デフォルト)、'dunn-sidak'、'bonferroni'、'scheffe' です。
%                   これらの限界値の最小を使用するために、これらの選択肢から 
%                   2 つ以上を空白で区切って入力してください。
%     'dimension'   次元、または母集団周辺平均が計算される全体の次元を指定
%                   するベクトルです。STATS が anovan から生成されるときのみ
%                   使用されます。
%                   デフォルトは、カテゴリの (連続ではない) 要因に関する 
%                   1 番目の次元全体を計算します。
%                   たとえば [1 3] の場合、最初と 3 番目の予測子の各結合に
%                   対する母集団周辺平均を計算します。
%     'estimate'    比較のための推定です。選択可能な値は、統計量の構造体の
%                   ソースに依存します。
%         anova1:  無視されます。グループ平均を比較します。
%         anova2:  'column' (デフォルト) または 'row' 平均
%         anovan:  無視されます。母集団周辺平均を比較します。
%         aoctool: 'slope'、'intercept'、'pmm' (separate-slopes モデルに
%                  対してデフォルトは 'slope'、それ以外は 'intercept' です)
%         kruskalwallis:  無視されます。列の順位の平均を比較します。
%         friedman:  無視されます。列の順位の平均を比較します。
%
%   [COMPARISON,MEANS,H,GNAMES] = MULTCOMPARE(...) は、さらに出力を返します。
%   MEANS は、推定とそれらの標準誤差と等価な列を持つ行列です。H は、グラフを
%   含む Figure のハンドルです。GNAMES は、グループ名を含む各グループに対して 
%   1 つの行を持つセル配列です。
%
%   グラフ内に示される反復は、もしそれらの反復が重なる場合、有意差ではなく、
%   それらの反復が交わらない場合、計算された 2 つの推定値は、有意差のある非常に
%   近い近似として計算されます (これは、すべての平均が同じ標本サイズに基づく
%   場合、anova1 からの平均の多重比較検定に対して正確です)。どの平均が有意差で
%   あるかをみるために、任意の推定値をクリックすることができます。
%
%   2 つの追加の CTYPE の選択が可能です。'hsd' オプションは、
%   "honestly significant differences" を表し、'tukey-kramer' オプションと同じです。
%   'lsd' オプションは、"最小有意差 (least significant difference)" を表し、
%   t-検定で使用します。これは、F 検定のように、事前に全体的な検定がされていない限り、
%   多重比較問題に対して保護されません。
%
%   MULTCOMPARE は、乱数、または入れ子効果を含むモデルに対する anovan の出力を
%   使った多重比較をサポートしません。ランダム効果モデルの計算は、すべての効果が
%   修正するように扱われるという警告を出力します。入れ子形式のモデルは受け入れません。
%
%   例: 1 要因 anova を実行し、グループ平均をそれらの名前と共に表示します。
%
%      load carsmall
%      [p,t,st] = anova1(MPG,Origin,'off');
%      [c,m,h,nms] = multcompare(st,'display','off');
%      [nms num2cell(m)]
%
%   参考 ANOVA1, ANOVA2, ANOVAN, AOCTOOL, FRIEDMAN, KRUSKALWALLIS.


%   Copyright 1993-2009 The MathWorks, Inc. 
