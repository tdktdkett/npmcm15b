% DFITTOOL 分布フィッティングツール
%
%   DFITTOOL は、分布のデータへのフィット表示に対するグラフィカルユーザ
%   インタフェースを開きます。分布をユーザのデータにフィットして、それらを
%   経験的な分布のプロットに重ねて表示するために、ワークスペースからデータを
%   インポートすることができます。
%
%   DFITTOOL(Y) は、分布のフィッティングツールを表示し、ベクトル y で
%   指定されたデータをもつデータセットを作成します。
%
%   DFITTOOL(Y,CENS) は、ベクトル cons を使用して、観測値 Y(j) を打ち切る 
%   (CENS(j)==1) か、正確に観測される (CENS(j)==0) かを指定します。
%   CENS が省略、または空の場合、Y の値を打ち切りません。
%
%   DFITTOOL(Y,CENS,FREQ) は、Y の各要素の周波数を指定するためにベクトル
%   FREQ を使用します。FREQ が省略、または空の場合、すべての Y 値は 1 の
%   周波数をもちます。
%
%   DFITTOOL(Y,CENS,FREQ,'DSNAME') は、データベクトル Y、打ち切りの指示子
%   CENS、周波数ベクトル FREQ を使って 'dsname' という名前のデータセットを
%   作成します。
%
%   参考 MLE, DISTTOOL, RANDTOOL.


%   Copyright 2001-2007 The MathWorks, Inc.
