%NAIVEBAYES  単純ベイズ分類器
%
%   NaiveBayes オブジェクトは、単純ベイズ分類器を定義します。単純なベイズ
%   分類器は、グループ値に与えられた特性が条件付きで独立であるという仮定して、
%   新規の観測を最も有望なグループに割り当てます。
%
%   NaiveBayes 分類器は、コンストラクタの呼び出しでは作成できません。
%   NAIVEBAYES.FIT を使って、オブジェクトを訓練データに近似することで 
%   NaiveBayes 分類器を作成します。
%
%   NaiveBayes プロパティ:
%       NGroups     - グループ数
%       NDims       - 次元数
%       GNames      - グループ名
%       GLevels     - グループレベル
%       GIsNonEmpty - 空でないグループのフラグ
%       Params      - パラメータ推定
%       GPrior      - 前のグループ
%       Dist        - 分布名
%
%   NaiveBayes メソッド:
%       fit (static) - 単純ベイズ分類器を訓練データに近似
%       predict      - テストデータに対して予測されたクラスのラベル
%       posterior    - テストデータに対する各グループの事後確率
%
%   例:
%      % 単純ベイズ分類器を使ってクラスのラベルを予測します
%      load fisheriris
%      % デフォルトのガウス分布を使用します
%      O1 = NaiveBayes.fit(meas,species);
%      C1 = O1.predict(meas);
%      cMat1 = confusionmat(species,C1) % 混合行列
%      % 1 と 3 の特性に対してガウス分布を使用し、2 と 4 の特性に対して
%      % カーネル密度推定を使用します。
%      O2 = NaiveBayes.fit(meas,species, ...
%             'dist',{'normal', 'kernel','normal','kernel'});
%      C2 = O2.predict(meas);
%      cMat2 = confusionmat(species,C2) % 混合行列
%
%      % 正規分布 (1 番目の特性) と多項分布 (2 番目の特性) を持つ 2 つの
%      % グループからデータを生成し、データを単純ベイズ分類器に近似します。
%      n = 1000;                       % 各クラス内の観測数
%      grp = [ones(n,1);2*ones(n,1)];  % 2 つのクラス
%      % 正規分布した特性
%      mu = [0;2];
%      train1 = normrnd(mu(grp),1);
%      test1  = normrnd(mu(grp),1);
%      % 多項分布の特性
%      prob = [.1 .4 .15 0.35; .4 0.2  0.3 0.1];
%      train2 = mnrnd(1,prob(grp,:)) * (1:4)';
%      test2  = mnrnd(1,prob(grp,:)) * (1:4)';
%      O = NaiveBayes.fit([train1 train2],grp,'dist',{'normal','mvmn'});
%      cidx = O.predict([test1 test2]);
%      err_rate = sum(grp~=cidx)/(2*n) % 誤判別の割合


%   Copyright 2008-2009 The MathWorks, Inc.
