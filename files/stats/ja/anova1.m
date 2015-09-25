%ANOVA1  一因子分散分析 (ANOVA)
%
%   ANOVA1 は、複数のデータグループの平均を比較する一因子分散分析を実行します。
%   グループの平均が等しいという帰無仮説に対する p 値を返します。
%
%   P = ANOVA1(X,GROUP,DISPLAYOPT)
%   X が行列の場合、ANOVA1 は、各列を分割したグループとして取り扱い、各列の
%   母集団平均が等しいか否かを決定します。
%     ANOVA1 のこの型は、各グループが、同じ要素数 (平衡化された ANOVA) を
%     持っている場合に適切になります。GROUPは、X の列あたりの 1 つの行として、
%     文字か文字列のセル配列であるグループ名を含みます。グループ名を指定
%     しない場合は、空行列 ([]) を入力するか、この引数を省略します。
%   X がベクトルの場合、GROUP は、X の各要素に対して 1 つのグループ名を持つ
%     カテゴリ変数、ベクトル、文字配列、または、文字列のセル配列でなければ
%     なりません。X の値は、同じグループ内で置き換えられた GROUP の同じ値に
%     対応します。
%
%   DISPLAYOPT は、標準の 1 因子分散分析表ボックスプロットを含む Figure を
%   表示するには 'on' (デフォルト)、これらの表示を省略するには 'off' を使います。
%   ボックスプロットの刻みがグループの中央値の検定を提供することに注意して
%   ください (HELP BOXPLOT を参照)。また、これは、1 因子分散分析表内の異なる
%   平均に対する F 検定とは同じではありません。
%
%   [P,ANOVATAB] = ANOVA1(...) は、ANOVA テーブル値をセル配列 ANOVATAB として
%   返します。
%
%   [P,ANOVATAB,STATS] = ANOVA1(...) は、MULTCOMPARE 関数で平均の多重比較
%   検定の実行に役立つ追加の統計量の構造体を返します。
%
%   参考 ANOVA2, ANOVAN, BOXPLOT, MANOVA1, MULTCOMPARE.


%   Copyright 1993-2008 The MathWorks, Inc. 
