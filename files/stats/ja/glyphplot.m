%GLYPHPLOT  多変量データに対するスタープロットまたは Chernoff faces のプロット
%
%   GLYPHPLOT(X)は、N 行 P 列の行列 X の多変量データからスタープロットを作成
%   します。X の行は観測に対応し、列は変数です。スタープロットは、各観測値を 
%   "star" として表わし、この i 番目の spoke は、観測値の i 番目の座標までの
%   長さに比例します。GLYPHPLOT は、プロットを行う前に、区間 [.1,1] で各列を
%   別々にシフトおよびスケーリングすることにより、X を標準化し、可能な限り
%   正方形に近い矩形グリッドの中心に glyphs を置きます。GLYPHPLOT は、X 内の 
%   NaN を欠測値として扱い、X の対応する行をプロットしません。
%   GLYPHPLOT(X, 'Glyph','star') は、GLYPHPLOT(X) と同じです。
%
%   GLYPHPLOT(X, 'Glyph','face') は、X のフェースプロットを作成します。
%   フェースプロットは、各観測値を "face" として表わし、ここで、i 番目の 
%   facial feature は、その観測値の i 番目の座標に特徴が比例するように
%   描画されます。下記のように、17 個までの features が利用可能です。
%
%   GLYPHPLOT(X, 'Glyph','face', 'Features',F) は、フェースプロットを作成します。
%   ここで、インデックスベクトル F の i 番目の要素が、どの facial fature が 
%   X の i 番目の列を表わすかを定義します。F は、0 から 17 までの整数を含まな
%   ければなりません。ここで、0 は、X の対応する列がプロットされないことを
%   示します。
%
%   GLYPHPLOT(X, ..., 'Grid',[ROWS,COLS]) は、ROWS 行 COLS 列のグリッドに 
%   glyph をまとめます。
%
%   GLYPHPLOT(X, ..., 'Grid',[ROWS,COLS], 'Page',PAGE) は、ROWS 行 COLS 列
%   グリッドの 1 ページあるいは複数ページに glyph を組織化し、PAGE 番目の
%   ページを表示します。PAGE がベクトルの場合、GLYPHPLOT は連続する複数ページ
%   を表示します。PAGE が 'all' の場合、GLYPHPLOT はすべてのページを表示します。
%   PAGE が 'scroll' の場合、GLYPHPLOT はスクロールバーを使って単一プロットを
%   表示します。
%
%   GLYPHPLOT(X, ..., 'Centers',C)は、N 行 2 列の行列 C の中心に各グリフを
%   置いたプロットを作成します。
%
%   GLYPHPLOT(X, ..., 'Centers',C,'Radius',R) は、C を用いて glyph の位置を
%   決定したプロットを作成し、最大の glyphs が半径 R になるようにスケーリング
%   します。
%
%   GLYPHPLOT(X, ..., 'ObsLabels',OBSLABS) は、文字列 OBSLABS の文字配列
%   またはセル配列内のテキストで各 glyph にラベルを付けます。デフォルトでは、
%   glyphs は 1:N でラベルを付けます。ラベルがない場合は '' を渡します。
%   ラベルは、'Centers' パラメータが与えられたときにプロットされますが、
%   データカーソル内にのみ現れます。
%
%   GLYPHPLOT(X, ..., 'VarLabels',VARLABS) は、データカーソルの表示の際に、
%   文字列 VARLABS の文字配列またはセル配列のテキストを変数名として使います。
%
%   GLYPHPLOT(X, ..., 'Standardize',METHOD) は、プロットを作成する前に X を
%   標準化します。METHOD の選択肢は、以下のとおりです。
%      'column'  X の各列を区間 [.1,1] に別々にマッピングします。
%                これはデフォルトです。
%      'matrix'  行列 X 全体を区間 [.1,1] にマッピングします。
%      'PCA'     X を減少する固有値の順に、主成分スコアに変換し各々を区間 
%                [.1,1] にマッピングします。
%      'off'     標準化を行いません。スターに対するデータは、[0,1] で、
%                フェースに対するデータは [.05,.95] でなければなりません。
%
%   プロットからオリジナルの値を確認するには、データカーソルを使用してください。
%
%   GLYPHPLOT(X, ..., 'PropertyName',PropertyValue, ...) は、GLYPHPLOT で
%   作成されるすべての line グラフィックスオブジェクトに対して指定された
%   プロパティ値をプロパティに設定します。
%
%   H = GLYPHPLOT(X, ...) は、GLYPHPLOT で作成されるグラフィックスオブジェクト
%   のハンドルの行列を返します。スタープロットに対して、H(:,1) と H(:,2) は、
%   それぞれ各スターの perimeter と spokes に対する line オブジェクトのハンドル
%   を含みます。faceプロットに対して、H(:,1) と H(:,2) は、それぞれ、各フェース
%   を構成するラインと pupil のハンドルを含みます。H(:,3) は、存在する場合、
%   ラベルに対する text オブジェクトのハンドルを含みます。
%
%   face プロットでは、X の列は、デフォルトでこれらの facial feature に対応
%   します。X が 17 より少ない列を含む場合、未使用の features は、それらの
%   デフォルト値で表示されます。デフォルトの対応を変更するには、'Features' 
%   入力パラメータを使用してください。
%
%     列      顔の特徴
%   -------------------------------------
%      1      顔のサイズ
%      2      額/顎の弧の長さ
%      3      額の形
%      4      顎の形
%      5      目の間の幅
%      6      目の縦方向の位置
%      7      目の高さ
%      8      目の幅 (眉の幅に影響を与えます)
%      9      目の角度 (眉の角度に影響を与えます)
%     10      眉の縦方向の位置
%     11      眉の幅 (目に比例)
%     12      眉の角度 (目に比例)
%     13      瞳の方向
%     14      鼻の長さ
%     15      口の縦方向の位置
%     16      口の形
%     17      口の弧の長さ
%
%   例:
%
%      load carsmall
%      X = [Acceleration Displacement Horsepower MPG Weight];
%      glyphplot(X, 'Standardize','column', 'ObsLabels',Model, ...
%                'grid',[2 2], 'page','scroll');
%      glyphplot(X, 'Glyph','face', 'ObsLabels',Model, 'grid',[2 3], 'page',9);
%
%   参考 ANDREWSPLOT, PARALLELCOORDS.


%   Copyright 1993-2009 The MathWorks, Inc.
