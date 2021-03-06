% ANOVA2   2 要因分散分析
%
%   ANOVA2(X,REPS,DISPLAYOPT) は、X の中の複数の列または複数の行の平均を
%   比較する平衡化された 2 要因分散分析 (各グループが同じ要素数をもつ) を
%   行います。異なる列の中のデータは、1 つの要因の変化を表しています。
%   他の行のデータは、他の要因の変化を表しています。行と列の組に対して
%   複数の観測が存在する場合、引数 REPS は、"セル" 毎の観測数を示します。
%   1 つのセルには、REPS 行を含んでいます。DISPLAYOPT は、表を表示する
%   ために 'on' (デフォルト) か、表示を省略するために 'off' を指定します。
%
%   たとえば、REPS = 3 は、各セルは 3 行を含み、行の総数は 3 の倍数に
%   なります。X が 12 行で、REPS = 3 の場合、"行" の要因は 4 レベル 
%   (3*4 = 12) になります。行の要因の 2 番目のレベルは、4 行目から 6 行目
%   になります。
%
%   [P,TABLE] = ANOVA2(...) は、2 つの項目を出力します。P は、検定の列に、
%   相互関係が影響する場合は行に対する p-値のベクトルです。TABLE は、分散
%   分析表の内容を含むセル配列です。
%
%   [P,TABLE,STATS] = ANOVA2(...) は、MULTCOMPARE 関数で多重比較検定の
%   実行に役立つ付加的な統計量の構造体を出力します。
%
%   平衡化されていない 2 要因 ANOVA を実行するには、ANOVAN を使用して
%   ください。
%
%   参考 ANOVA1, ANOVAN.


%   Copyright 1993-2007 The MathWorks, Inc. 
