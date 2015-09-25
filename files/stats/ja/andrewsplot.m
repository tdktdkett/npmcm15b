%ANDREWSPLOT  多変量データに対する Andrews プロット
%
%   ANDREWSPLOT(X) は、行列 X の多変量データの Andrews プロット (三角多項式
%   グラフ) を作成します。X の行は観測値に対応し、列は変数です。Andrews 
%   プロットは、高次元データの可視化のためのツールです。ここで、各観測値は、
%   区間 [0,1] で連続ダミー変数 t の関数 f(t) で表されます。f(t) は、
%   以下のように X の i 番目の観測値に対して定義されます。
%
%      f(t) = X(i,1)/sqrt(2) + X(i,2)*sin(2*pi*t) + X(i,3)*cos(2*pi*t) + ...
%
%   プロットから正確な値と観測数を確認するには、データカーソルを使用してください。
%
%   ANDREWSPLOT は、X 内の NaN を欠測値として扱い、対応する行を無視します。
%
%   ANDREWSPLOT(X, ..., 'Standardize','on') は、プロットを作成する前に、
%   平均 0、標準偏差 1 になるように X の各列をスケーリングします。
%
%   ANDREWSPLOT(X, ..., 'Standardize','PCA') は、固有値を減らすために、
%   X の主成分スコアから Andrews プロットを作成します。
%   ANDREWSPLOT(X, ..., 'Standardize','PCAStd') は、標準化された主成分
%   スコアを使用します。
%
%   ANDREWSPLOT(X, ..., 'Quantile',ALPHA) は、t の各値について、f(t) の
%   中央値と ALPHA、および (1-ALPHA) 分位点のみをプロットします。
%
%   ANDREWSPLOT(X, ..., 'Group',GROUP) は、異なる色で、複数のグループ内の
%   データをプロットします。GROUP は、カテゴリ変数、数値配列、文字行列、
%   または、文字列のセル配列として定義されるグループ変数です。
%
%   ANDREWSPLOT(X, ..., 'PropertyName',PropertyValue, ...) は、ANDREWSPLOT で
%   作成されるすべての line グラフィックスオブジェクトに対して、指定した
%   プロパティ値にプロパティを設定します。
%
%   H = ANDREWSPLOT(X, ...) は、ANDREWSPLOT で作成される line オブジェクトの
%   ハンドル (X の各行について 1 つのハンドル) の列ベクトルを返します。入力
%   パラメータ 'Quantile' を使用する場合、H は、作成される 3 つの line 
%   オブジェクトそれぞれに対して 1 つのハンドルを含みます。'Quantile' と 
%   'Group' の両方を入力パラメータとする場合、H は各グループに対する 3 つの
%   ハンドルを含みます。
%
%   例:
%
%      % 生データをグループ化してプロットします。
%      load fisheriris
%      andrewsplot(meas, 'group',species);
%
%      % 各グループの中央値と四分位点のみプロットします。
%      andrewsplot(meas, 'group',species, 'quantile',.25);
%
%   参考 PARALLELCOORDS, GLYPHPLOT.


%   Copyright 1993-2009 The MathWorks, Inc. 
