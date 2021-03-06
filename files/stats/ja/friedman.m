%FRIEDMAN  ノンパラメトリック二因子分散分析
%
%   P = FRIEDMAN(X,REPS,DISPLAYOPT) は、平衡したデータに対する二因子 ANOVA の
%   ノンパラメトリックバージョンのフリードマン検定を実行します。FRIEDMAN は、
%   X 内のデータの列を比較し、行の影響として可能なものについて調整し、列の
%   影響がないという帰無仮説に対して p-値を返します。データは、行と列の影響に
%   よる位置移動の可能性を除いて、同一か、そうでなければ無作為である連続分布
%   からの独立な標本であると仮定されます。行と列の "セル" ごとに複数の観測が
%   ある場合、スカラの引数 REPS を使用してセルごとの観測の数を示してください。
%   各セルは、X の 1 つの列内の連続した行が REPS に対応します。DISPLAYOPT は、
%   'on' (デフォルト) だと表を表示し、'off' だと表示を行いません。
%
%   一般的に、行は検定された因子の処理の異なるレベルを表わし、列は異なる
%   ブロックを表わします。行と列の両方が検定された因子の影響を表わす場合、
%   FRIEDMAN は 2 度実行され、一度目は X を使い、さらに転置となる X' を
%   使います。
%
%   [P,TABLE] = FRIEDMAN(...) は、ANOVA 表値を含むセル配列を返します。
%
%   [P,TABLE,STATS] = FRIEDMAN(...) は、MULTCOMPARE 関数でセルの平均の多重
%   比較検定を実行する際に使用することのできる統計量の追加の構造体を返します。
%
%   参考 ANOVA2, KRUSKALWALLIS, MULTCOMPARE.


%   Copyright 1993-2009 The MathWorks, Inc. 
