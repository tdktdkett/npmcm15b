%SILHOUETTE  クラスタデータの輪郭をプロット
%
%   SILHOUETTE(X, CLUST) CLUST で定義されたクラスタごとに、N×P データ行列 
%   X に対するクラスタの輪郭をプロットします。X の行は点に対応し、列は座標に
%   対応します。CLUST は、カテゴリ変数、数値ベクトル、文字行列、または、
%   同じクラスタ内の点に対する共通の値を持つ文字列のセル配列です。
%   SILHOUETTE は、欠損値に対しては CLUST 内に NaN か空文字列を用い、
%   X の対応する行は無視されます。デフォルトでは、SILHOUETTE は X の点間の
%   ユークリッド距離の二乗を使用します。
%
%   S = SILHOUETTE(X, CLUST) は、クラスタの輪郭を表示しませんが、N×1 の
%   ベクトル S に輪郭値を返します。
%
%   [S,H] = SILHOUETTE(X, CLUST) は、輪郭をプロットし、輪郭値を N×1 の
%   ベクトル S に、Figure のハンドルを H に返します。
%
%   [...] = SILHOUETTE(X, CLUST, DISTANCE) は、DISTANCE で指定された点間の
%   距離の基準を使って輪郭をプロットします。DISTANCE の選択肢は以下のとおりです。
%
%       'Euclidean'    - ユークリッド距離
%      {'sqEuclidean'} - ユークリッド距離の二乗
%       'cityblock'    - 絶対差 (別名 L1) の和
%       'cosine'       - 1 から (ベクトルとして扱われる) 点の間の角度の
%                        余弦を引いた値
%       'correlation'  - 1 から (値の系列として扱われた) 点の間の標本相関を
%                        引いた値
%       'Hamming'      - 異なる座標のパーセンテージ
%       'Jaccard'      - 異なる非ゼロの座標のパーセンテージ
%       vector         - PDIST で作成されたベクトル形式での数値的な距離行列 
%                        (X は、この場合使用されず、安全に [] を設定する
%                        ことが可能です)
%       function      - @ を用いて指定された距離関数。たとえば @DISTFUN
%
%   距離関数は、以下の形式でなければなりません。
%
%         function D = DISTFUN(X0, X, P1, P2, ...),
%
%   は、引数として 1 つの 1×P の行列の点 X0 と点 X の N×P の行列を与え、
%   さらに問題固有の引数 P1,P2, ..., を追加して、X の各点 (列) と X0 の間の
%   距離の N×1 のベクトル D を返します。
%
%   [...] = SILHOUETTE(X, CLUST, DISTFUN, P1, P2, ...) は、関数 DISTFUN に、
%   直接引数 P1, P2, ... を渡します。
%
%   各点に対する輪郭値は、その点が他のクラスタ内の点に比べて、自身のクラスタ内
%   の点とどれだけ相似しているかという基準で、-1 から 1 までの値をとります。
%   これは以下のように定義されます。
%
%      S(i) = (min(AVGD_BETWEEN(i,k)) - AVGD_WITHIN(i))
%                              / max(AVGD_WITHIN(i), min(AVGD_BETWEEN(i,k)))
%
%   ここで、AVGD_WITHIN(i) は、i 番目の点から自身のクラスタ内の他の点への
%   平均距離で、AVGD_BETWEEN(i,k) は、i 番目の点から他のクラスタ k の点への
%   平均距離です。
%
%   例:
%
%      X = [randn(10,2)+ones(10,2); randn(10,2)-ones(10,2)];
%      cidx = kmeans(X, 2, 'distance', 'sqeuclid');
%      s = silhouette(X, cidx, 'sqeuclid');
%
%   参考 KMEANS, LINKAGE, DENDROGRAM, PDIST.


%   Copyright 1993-2008 The MathWorks, Inc. 
