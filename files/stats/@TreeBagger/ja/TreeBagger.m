%TREEBAGGER  決定木の集合に対するブートストラップ集団
%
%   TreeBagger は、分類または回帰のいずれかに対する決定木の集合をまとめます。
%   'Bagging' は、'bootstrap aggregation (ブートストラップ集団)' という意味です。
%   集合内のすべてのツリーは、入力データの独立に描画されたブートストラップ
%   複製上で大きくなります。この複製内に含まれない観測値は、このツリーに対して 
%   "out of bag" として取り除かれます。観測されていないデータに対するツリーの
%   集合の予測を計算するために、TREEBAGGER は、独立なツリーから予測の平均を
%   取ります。
%
%   ブートストラップ集団内の予測誤差を推定するには、その out-of-bag の
%   観測上のツリーごとの予測と、観測ごとの集合全体の予測の平均を計算し、
%   予測された out-of-bag の応答とこの観測における true の値を比較します。
%
%   TreeBagger は、独立なツリーを育てるために、CLASSREGTREE の機能に依存します。
%   特に、CLASSREGTREE はオプションの入力引数として分離した決定ごとに無作為に
%   選択された特徴の数を受け入れます。
%
%   'Compact' プロパティは、新規データを使って予測を行うための十分な情報を
%   持つ別のクラス CompactTreeBagger を含みます。この情報には、(分類に対する) 
%   ツリーの集合、変数名、クラス名が含まれます。CompactTreeBagger は、TreeBagger 
%   より少ないメモリですみますが、集合に対して多くのツリーを育てるための
%   メソッドは TreeBagger のみにあります。TreeBagger を使ってツリーの集合を
%   一旦大きくしておくと、訓練データにアクセスする必要がなくなった場合に、
%   それ以降に訓練されたコンパクトな集合を使って作業することができます。
%
%   TreeBagger プロパティ:
%      X             - 集合を作成するために使用する X データ。
%      Y             - 集合を作成するために使用する Y データ。
%      FBoot         - まとめられた観測の割合。
%      SampleWithReplacement - 復元抽出のフラグ。
%      TreeArgs      - CLASSREGTREE の引数のセル配列。
%      ComputeOOBPrediction - out-of-bag の予測を計算するためのフラグ。
%      ComputeOOBVarImp - out-of-bag 変数の重要度を計算するフラグ。
%      Prune         - ツリーを取り除くためのフラグ。
%      MergeLeaves   - リスクを改善しないリーフをマージするフラグ。
%      NVarToSample  - 無作為な特徴選択のための変数の数。
%      MinLeaf       - ツリーのリーフごとの観測の最小値。
%      OOBIndices    - out-of-bag の観測に対する indicator 行列。
%      Trees         - 集合内の決定木
%      NTrees        - 集合内の決定木の数
%      ClassNames    - クラス名
%      Prior         - 前のクラスの確率。
%      Cost          - 誤判別のコスト。
%      VarNames      - 変数名
%      Method        - ツリーで使用するメソッド (分類または回帰)
%      OOBInstanceWeight - 観測ごとの out-of-bag ツリーのカウント。
%      OOBPermutedVarDeltaError       - 分類誤差に対する変数の重要度。
%      OOBPermutedVarDeltaMeanMargin  - 分類マージンに対する変数の重要度。
%      OOBPermutedVarCountRaiseMargin - raising マージンに対する変数の重要度。
%      DeltaCritDecisionSplit - 予測子ごとの分離基準の貢献度
%      Proximity      - 観測に対する類似度行列。
%      OutlierMeasure - 異常値を定義するための尺度。
%      DefaultYfit    - PREDICT と OOBPREDICT によるデフォルトの戻り値。
%
%   TreeBagger メソッド:
%      TreeBagger/TreeBagger - まとまった決定木の集合を作成。
%      append           - 新規ツリーを集合に追加。
%      compact          - 決定木のコンパクトな集合。
%      error            - 誤差 (誤判別の確率または MSE)
%      fillProximities  - 訓練データに対する完全類似度行列。
%      growTrees        - 追加のツリーを訓練して集合に追加。
%      margin           - 分類マージン
%      mdsProx          - 近接行列の多次元スケーリング
%      meanMargin       - ツリーごとの分類マージンの平均
%      oobError         - out-of-bag 誤差。
%      oobMargin        - out-of-bag マージン。
%      oobMeanMargin    - out-of-bag 平均マージン。
%      oobPredict       - out-of-bag の観測に対する集合予測。
%      predict          - 予測応答
%
%   例:
%      load fisheriris
%      b = TreeBagger(50,meas,species,'oobpred','on')
%      plot(oobError(b))
%      xlabel('number of grown trees')
%      ylabel('out-of-bag classification error')
%
%    参考 TREEBAGGER/TREEBAGGER, COMPACTTREEBAGGER, CLASSREGTREE.


%   Copyright 2008-2009 The MathWorks, Inc.
