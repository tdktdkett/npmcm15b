%GPLOTMATRIX  共通変数でグループ化された散布図プロット行列
%
%   GPLOTMATRIX(X,Y,G) は、G でグループ化されたY の列に対する X の列の散布図
%   プロット行列を作成します。X が P x M で、Y が P x N の場合、GPLOTMATRIX は、
%   軸の N x M の行列を作成します。Y を省略するか、[] で設定する場合、関数は、
%   X と X との関係をグラフ化します。G は、各行列内の各点に割り当てられたマーカと
%   カラーで定義されるグループ変数で、カテゴリ変数、ベクトル、文字行列、または、
%   文字列のセル配列です。また、G は、グループ変数の値のそれぞれ固有の結合に
%   よって X 内の値を ({G1 G2 G3} のように) グループ化するためにグループ変数の
%   セル配列としても構いません。
%
%   観測数と関連する変数の値と同様に、プロットから正確な値を確認するには、
%   データカーソルを使用してください。
%
%   GPLOTMATRIX(X,Y,G,CLR,SYM,SIZ) は、使用する色、マーカ、サイズを指定します。
%   CLR は、カラーの仕様を設定する文字列、SYM は、マーカの仕様を設定する
%   文字列です。詳細は、'help plot' を参照してください。たとえば、SYM = 'o+x' の
%   場合、最初のグループは円 (o) マーク、2 番目のグループはプラス (+) マーク、
%   3 番目のグループはバツ (x) マークで表示されます。デフォルトでは、色は 
%   'bgrcmyk'、マーカは '.'、マーカのサイズは Figure ウィンドウのサイズと
%   プロット数に依存します。
%
%   GPLOTMATRIX(X,Y,G,CLR,SYM,SIZ,DOLEG) は、凡例を作成するか否かを制御します。
%   DOLEG には、'on' (デフォルト)、または、'off' を使用することができます。
%
%   GPLOTMATRIX(X,Y,G,CLR,SYM,SIZ,DOLEG,DISPOPT) は、X と Y の関係のプロット
%   図の中で、対角部の塗りつぶし法を制御します。DISPOPT を 'none' とすると
%   空白のままになり、'hist' (デフォルト) とするとヒストグラムをプロットし、
%   'variable' の場合は変数名を記述します。
%
%   GPLOTMATRIX(X,Y,G,CLR,SYM,SIZ,DOLEG,DISPOPT,XNAM,YNAM) は、X と Y の変数名
%   を XNAM と YNAM を使って設定します。それぞれ、適切な次元の文字配列、または、
%   文字列のセル配列でなければなりません。
%
%   [H,AX,BigAx] = GPLOTMATRIX(...) は、プロットした点へのハンドル H、個々の
%   サブ軸へのハンドルの行列 AX、サブ軸を囲む大きな (非可視の) 座標軸へのハンドル 
%   BIGAX の配列を返します。H の 3 番目の次元は、G のグループに対応します。
%   DISPOPT が 'hist' の場合、AX はヒストグラムがプロットされた非可視の座標軸
%   へのハンドルの 1 つの追加行を含みます。BigAx は、後に続く TITLE, XLABEL, 
%   YLABEL のいずれかが、座標軸の行列に対して中心になるように CurrentAxes の
%   ままです。
%
%   例:
%      load carsmall;
%      X = [MPG,Acceleration,Displacement,Weight,Horsepower];
%      varNames = {'MPG' 'Acceleration' 'Displacement' 'Weight' 'Horsepower'};
%      gplotmatrix(X,[],Cylinders,'bgrcm',[],[],'on','hist',varNames);
%
%   参考 GRPSTATS, GSCATTER, PLOTMATRIX.


%   Copyright 1993-2009 The MathWorks, Inc. 
