% INCONSISTENT   クラスタツリーの整合性のない (inconsistent) 値
%
% T = INCONSISTENT(Z) は、階層的なクラスタツリー Z のそれぞれ葉のない
% ノードの整合性のない値を計算します。Z は、関数 LINKAGE から生成される
% (M-1)×3 の行列です。それぞれの整合性のない値は、これらのクラスタ内で
% 融合されたサブクラスタ間の分離を比較した、そのノードによって表される
% 2つのクラスタ間の融合の分離基準です。
% 
% T = INCONSISTENT(Z, DEPTH) は、各ノードより下の深さ DEPTH にあることによる
% 整合性のない値を計算します。
% 
% Y は、Z で表される葉のないノードのそれぞれに対応する行をもつ (M-1)×4 の
% 行列です。INCONSISTENT は、任意の葉ノード以外に、ノード (M+i) より下の
% DEPTH より小さいノードの設定が分岐した S_i を使ってノード (M+i) に対する
% 整合性のない値を計算します。
% 
%      Y(i,1) = mean(Z(S_i,3))  S_i のノードの高さの平均
%      Y(i,2) = std(Z(S_i,3))  S_i のノードの高さの標準偏差
%      Y(i,3) = length(S_i)  S_i のノードの数
%      Y(i,4) = (Z(i,3) - Y(i,1))/Y(i,2)  整合性のない値
%
% DEPTH に対するデフォルト値は、2 です。
%
%   参考 PDIST, LINKAGE, COPHENET, DENDROGRAM, CLUSTER, CLUSTERDATA.


%   Copyright 1993-2004 The MathWorks, Inc. 
