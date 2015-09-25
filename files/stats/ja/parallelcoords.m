%PARALLELCOORDS  多変数データに対する平行座標プロット
%
%   PARALLELCOORDS(X) は、N 行 P 列の行列 X の多変数データの平行座標プロット
%   を作成します。X の行は観測に対応し、列は変数です。平行座標プロットは、
%   高次元データを視覚化するためのツールです。ここで、各観測は、座標の
%   インデックスに対してプロットされた座標値の列で表わされます。
%   PARALLELCOORDS は、X の NaN を欠測値として取り扱い、これらの座標値は
%   プロットされません。
%
%   PARALLELCOORDS(X, ..., 'Standardize','on') は、プロットを行なう前に、
%   平均 0 と標準偏差 1 を持つようにX の各列をスケールします。
%
%   PARALLELCOORDS(X, ..., 'Standardize','PCA') は、固有値の大きい方から順に 
%   X の主成分スコアから平行座標プロットを作成します。
%   PARALLELCOORDS(X, ..., 'Standardize','PCAStd') は、標準化された主成分
%   スコアを使用します。PARALLELCOORDS は、PCA 標準化に対する欠損値 (NaN) を
%   含む X の行を削除します。
%
%   PARALLELCOORDS(X, ..., 'Quantile',ALPHA) は、中央値と t の各値での 
%   f(t) の ALPHA と (1-ALPHA) 四分位数のみをプロットします。これは、
%   X が多数の観測を含む場合、有効です。
%
%   PARALLELCOORDS(X, ..., 'Group',GROUP) は、異なるグループのデータを別々の
%   色でプロットします。GROUP は、カテゴリ変数、数値配列、文字行列、または、
%   文字列のセル配列として定義されるグループ変数です。
%
%   PARALLELCOORDS(X, ..., 'Labels',LABS) は、LABSを使用して、水平軸に沿って
%   座標目盛りをラベル付けします。LABS は、文字配列または文字列のセル配列です。
%
%   PARALLELCOORDS(X, ..., 'PropertyName',PropertyValue, ...) は、 
%   PARALLELCOORDS で作成されるすべての line グラフィックスオブジェクトに
%   対する指定値にプロパティを設定します。
%
%   H = PARALLELCOORDS(X, ...) は、PARALLELCOORDS で作成される line オブジェクト
%   に対するハンドルの列ベクトルを返します。入力パラメータ 'Quantile' を使用する
%   場合、H は、作成される 3 つの line オブジェクトのそれぞれに対して 1 つの
%   ハンドルを含みます。'Quantile' と 'Group' の両方を入力パラメータとする場合、
%   H は各グループに対する 3 つのハンドルを含みます。
%
%   PARALLELCOORDS(AX,...) は、ハンドル AX を持つ座標軸にプロットします。
%
%   プロットから正確な値と観測数を確認するには、データカーソルを使用してください。
%   標準化された値がプロットされるかどうかに関わらず、X のオリジナルの値が
%   表示されます。
%
%
%   例:
%
%      % raw データをグループ化してプロットします。
%      load fisheriris
%      labs = {'Sepal Length','Sepal Width','Petal Length','Petal Width'};
%      parallelcoords(meas, 'group',species, 'labels',labs);
%
%      % 各グループの中央値と四分位数のみプロットします。
%      parallelcoords(meas, 'group',species, 'labels',labs, 'quantile',.25);
%
%   参考 ANDREWSPLOT, GLYPHPLOT.


%   Copyright 1993-2009 The MathWorks, Inc.
