% ADDEDVARPLOT   ステップワイズ回帰のための追加された変数のプロットを作成
%
%   ADDEDVARPLOT(X,Y,VNUM,INMODEL) は、X の列 VNUM 内の予測子と応答 Y に
%   対して追加された変数プロットを作成します。このプロットは、INMODEL に
%   リストされる列が予測子として使用される回帰モデル内の予測子の追加される
%   影響を示します。X は、予測子の値となる N 行 P 列の行列です。Y は、
%   応答の値となる N のベクトルです。VNUM は、プロットで使用するために 
%   X の列を指定するスカラのインデックスです。INMODEL は、列番号のベクトル、
%   またはベースモデルで使用するための X の列を指定する P の要素の論理値
%   ベクトルです。デフォルトでは、INMODEL の全ての要素は偽です (モデルは
%   予測子をもっていません)。ADDEDVARPLOT は、モデル内の定数項を自動的に
%   含みます。
%
%   ADDEDVARPLOT(X,Y,VNUM,INMODEL,STATS) は、STEPWISEFIT 関数によって
%   作成された近似したモデルの結果を含む構造体 STATS を使用します。
%   STATS が省略された場合、この関数は、それを計算します。
%
%   追加された変数プロットは、データと近似されたラインを含みます。X1 は、
%   X の VNUM 列であると仮定します。データの曲線は、ININMODEL で指定された
%   他の予測子の効果を削除した後に、Y と X1 をプロットします。実線は、
%   データの曲線の最小二乗近似で、その勾配は、モデルに含まれている場合、
%   X1 がもつ係数です。点線は、近似されたラインに対する 95% の信頼区間で、
%   X1 の有意性を検証するために使用されます。
%
%   VNUM が INMODEL 内にもある場合、ADDEDVARPLOT が生成するプロットは、
%   部分回帰 leverage プロットとして知られています。
%
%   例:  Hald データのステップワイズ回帰を実行し、2番目の列の予測子に
%        対して追加された変数のプロットを作成します。
%      load hald
%      [b,se,p,in,stats] = stepwisefit(ingredients,heat);
%      addedvarplot(ingredients,heat,2,in,stats)


%   Copyright 1993-2007 The MathWorks, Inc.
