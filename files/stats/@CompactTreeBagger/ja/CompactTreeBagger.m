%COMPACTTREEBAGGER  バギングで大きくなった決定木のコンパクトな集合
%
%    CompactTreeBagger オブジェクトは、TreeBagger で大きくなったツリーを含む
%    軽量のオブジェクトです。CompactTreeBagger は、決定木が大きくなった方法に
%    関する情報は保存しません。
%    また、大きくなるツリーに対して使われた入力データも含まれず、無作為に
%    分離した決定木ごとに抽出した最小リーフサイズと変数の数などの訓練パラメータも
%    含まれません。
%    CompactTreeBagger オブジェクトは、与えられた新規データ X を訓練した集合
%    の応答と他の関連する関数を予測するためにのみ使用することができます。
%
%    CompactTreeBagger は、訓練した集合をディスクに保存するか、他のどのような
%    方法であれ、その集合を使用します。その一方で、完全に大きくなった集合の応答を
%    予測と無関係な訓練構成の訓練データと様々なパラメータを破棄します。これは、
%    特に大きなデータセット上で訓練した集合の場合、ストレージとメモリ容量を
%    減らします。
%
%    ツリーを大きくするために TreeBagger コンストラクタを使用するときは、
%    CompactTreeBagger を作成します。TREEBAGGER/COMPACT メソッドを使用して、
%    完全な TreeBagger オブジェクトからコンパクトなオブジェクトを得ることが
%    できます。CompactTreeBagger のインスタンスは直接作成されません。
%
%    CompactTreeBagger プロパティ:
%      Trees         - 集合内の決定木
%      NTrees        - 集合内の決定木の数
%      ClassNames    - クラス名
%      VarNames      - 変数名
%      Method        - ツリーで使用するメソッド (分類または回帰)
%      DeltaCritDecisionSplit - 予測子ごとの分離基準の貢献度
%      DefaultYfit    - PREDICT によるデフォルトの戻り値。
%
%    CompactTreeBagger メソッド:
%      combine        - 2 つの集合の統合
%      error          - 誤差 (誤判別の確率または MSE)
%      margin         - 分類マージン
%      mdsProx        - 近接行列の多次元スケーリング
%      meanMargin     - ツリーごとの分類マージンの平均
%      outlierMeasure - データに対する異常値の測定
%      predict        - 予測応答
%      proximity      - データに対する近接行列
%      setDefaultYfit - PREDICT に対するデフォルト値の設定
%
%   参考 TREEBAGGER, TREEBAGGER/TREEBAGGER, TREEBAGGER/COMPACT, CLASSREGTREE.


%   Copyright 2008-2009 The MathWorks, Inc.
