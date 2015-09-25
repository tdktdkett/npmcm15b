%DUMMYVAR  ダミー変数を使った符号化
%
%   X=DUMMYVAR(GROUP) は、GROUP 内のグループ化変数のそれぞれの固有な値に
%   対するダミー列を含む行列 X を作成します。GROUP は、カテゴリ変数、
%   複数のカテゴリ変数のセル配列、または、グループ化変数の値の行列です。
%   GROUP が行列の場合、GROUP の列内の要素の値は、1 からその列で定義された
%   グループ内のメンバ数まで移動します。
%
%   例: 1 つの工程で、2 つの機械と 3 人の操縦者を使ったときの影響を調べましょう。
%       GROUP の最初の列は、どちらの機械が使われたかを示す 1 か 2 の値を持って
%       います。GROUP の 2 列目は、どの操縦者が機械を動かしたかを示す 1 か 2 か 
%       3 の値を持っています。
%
%       machine = [1 1 1 1 2 2 2 2]';
%       oper    = [1 2 3 1 2 3 1 2]';
%       x = dummyvar([machine oper])


%   Copyright 1993-2008 The MathWorks, Inc. 
