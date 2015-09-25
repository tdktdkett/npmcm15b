%CLUSTERDATA  データからクラスタを作成
%
%   T = CLUSTERDATA(X, CUTOFF) は、データ X から、クラスタを作成します。
%   X は、サイズ M×N の行列で、N 個の変数に対して、M 個の観測値として
%   取り扱われます。CUTOFF は、LINKAGE で生成される階層的なツリーをクラスタに
%   切り取る閾値です。0 < CUTOFF < 2 の場合、クラスタは、整合性のない値が 
%   CUTOFF より大きい場合に作成されます (INCONSISTENT参照)。CUTOFF が、
%   整数で CUTOFF >= 2 の場合、CUTOFF は、LINKAGE で作成される階層的な
%   ツリー内に保たれるクラスタの最大の数と考えられます。出力 T は、
%   各観測に対するクラスタ数を含むサイズ M のベクトルです。
%
%   0 < CUTOFF < 2 の場合、T = CLUSTERDATA(X,CUTOFF) は以下と等価です。
%      Y = pdist(X, 'euclid');
%      Z = linkage(Y, 'single');
%      T = cluster(Z, 'cutoff', CUTOFF);
%
%   CUTOFF が 2 以上の整数の場合、T = CLUSTERDATA(X,CUTOFF) は以下と等価です。
%
%      Y = pdist(X,'euclid');
%      Z = linkage(Y,'single');
%      T = cluster(Z,'maxclust',CUTOFF)
%
%   T = CLUSTERDATA(X,'PARAM1',VAL1,'PARAM2',VAL2,...) は、パラメータ/値の
%   組による設定法を使って、クラスタ操作に対して、より制御が可能になります。
%   利用可能なパラメータは、以下のとおりです。
%
%      パラメータ  値
%      'distance'   PDISTで、許可された距離計量の名前のいずれか。
%                   (オプション 'minkowski' には、指数 P の値を続けることが
%                   できます)。
%      'linkage'    LINKAGE で許可される連結法。
%      'cutoff'     整合性のない、または、距離計量に対するカットオフ。
%      'maxclust'   作成するクラスタの最大数。
%      'criterion'  'inconsistent' または 'distance' のいずれか。
%      'depth'      整合性のない値を計算するための深さ。
%
%   参考 PDIST, LINKAGE, INCONSISTENT, CLUSTER, DENDROGRAM, KMEANS.


%   Copyright 1993-2008 The MathWorks, Inc. 
