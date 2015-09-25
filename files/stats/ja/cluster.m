%CLUSTER  階層的なクラスタツリーからクラスタを作成
%
%   T = CLUSTER(Z,'CUTOFF',C) は、Z で表されるクラスタツリー から階層的な
%   クラスタを作成します。Z は、LINKAGE で作成された (M-1)×3 の行列です。
%   C は、定義されているクラスタに対する閾値です。ルートから始めて、CLUSTER は、
%   整合性のない値 (INCONSISTENT を参照) が C より小さく、子孫の値がすべて 
%   C より小さいノードに遭遇するまで、ツリーを降りていきます。ノードより下の
%   すべての葉は、(ノード自身が葉である場合に単集合となる) クラスタに
%   グループ化されます。
%   CLUSTER は、すべての葉ノードがクラスタ内に入るまで木のすべての枝に続きます。
%   T は、オリジナルデータにある M 個の各観測に対するクラスタ数を含む長さ 
%   M のベクトルです。C がベクトルの場合、T はクラスタ行列であり、この各列は
%   カットオフの値に対応しています。
%
%   T = CLUSTER(Z,'Cutoff',C,'Depth',D) は、各ノードより下の深さ D に面した
%   整合性のない値を評価します。デフォルトの深さは 2 です。
%
%   T = CLUSTER(Z,'Cutoff',C,'Criterion','distance') は、クラスタを形式化する
%   ための基準として距離を使用します。ツリー内の各ノードの高さは、ノードで
%   融合される 2 つのサブノード間の距離を表します。高さが C 以下のすべての
%   ノードより下のすべての葉は、(ノード自身が葉である場合に単集合となる) 
%   クラスタにグループ化されます。
%
%   T = CLUSTER(Z,'Cutoff',C,'Criterion','inconsistent') は、CLUSTER(Z,'Cutoff',C) 
%   と等価です。
%
%   T = CLUSTER(Z,'MaxClust',N) は、基準として距離を使用する N 個のクラスタの
%   最大値を構築します。ツリー内の各ノードの高さは、ノードで融合される 2 つの
%   サブノード間の距離を表します。CLUSTER は、ツリーが N かそれより少数の
%   クラスタを残すために "水平にカットする (horizontal cut)" ことで、最も
%   小さい高さを見つけます。N がベクトルの場合、T はクラスタ行列であり、
%   この各列は最大数に対応しています。
%
%   例:フィッシャーのアイリスデータからのクラスタと species を比較
%      load fisheriris
%      d = pdist(meas);
%      z = linkage(d);
%      c = cluster(z,'maxclust',5);
%      crosstab(c,species)
%
%   参考 PDIST, LINKAGE, COPHENET, INCONSISTENT, CLUSTERDATA.


%   Copyright 1993-2008 The MathWorks, Inc. 
