% CONFUSIONMAT  分類アルゴリズムに対する混合行列
%
%    CM = CONFUSIONMAT(G,GHAT) は、既知のグループラベル G と予測されるグループ
%    ラベル GHAT で定義される混合行列 CM を返します。G と GHAT は、同じ観測数を
%    持つグループです。G と GHAT は、カテゴリ、数値、論理ベクトル (文字列の 
%    1 列のセル配列)、または文字行列 (各行がグループラベルを表す) にすることが
%    できます。G と GHAT は、同じタイプでなければなりません。CM は、G と GHAT 内の
%    異なる要素の総数と等しいサイズの正方行列になります。CM(I,J) は、既知の
%    グループラベルがグループ I で、予測されるグループラベルがグループ J となる
%    インスタンスの総数を表します。CONFUSIONMAT は、NaN を空行列、あるいは、
%    G または GHAT 内の 'undefined' 値を欠損値として扱うため、対応する観測値は
%    カウントされません。
%
%    グループの集合と CM 内の行と列のグループラベルの順は同じです。GN を 
%    grp2idx([G;GHAT]) の 2 番目の出力とすると、GN 内にあるすべてのグループが
%    含まれ、GN と同じグループラベルの順になります。
%
%    CM = CONFUSIONMAT(G,GHAT,'ORDER',ORDER) は、ORDER で指定される行 (と列) 
%    の順に混合行列を返します。ORDER は、等号を使って G または GHAT 内の値と
%    比較可能なグループラベルとその値を含むベクトルです。ORDER は、G または 
%    GHAT にあるラベルのすべてを含んでいなければなりません。ORDER は、G と 
%    GHAT にないラベルを含むこともできるため、CM の対応する行と列には 0 が
%    含まれます。
%
%    [CM, GORDER] = CONFUSIONMAT(G, GHAT) は、CM の行と列に対するグループ
%    ラベルの順番を返します。GORDER は、G と GHAT と同じタイプになります。
%
%   例:
%      % フィッシャーのアイリスデータで CLASSIFY を適用するために、再置換の
%      % 混合行列を計算します。
%      load fisheriris
%      x = meas;
%      y = species;
%      yhat = classify(x,x,y);
%      [cm,order] = confusionmat(y,yhat);
%
%   参考 CROSSTAB, GRP2IDX.


%   Copyright 2008-2009 The MathWorks, Inc.
