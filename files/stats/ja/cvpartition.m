%CVPARTITION  データに対する交互検定の区分を作成
%
%   CVPARTITION クラスのオブジェクトは、指定したサイズのデータの集合上で
%   ランダムな区分を定義します。この区分は、交互検定を使って統計モデルを
%   検証するために、テストと訓練データの定義に使用されます。
%
%   C = CVPARTITION(N,'Kfold',K) は、N 点の観測点で K-分割交互検定に
%   対するランダムな区分を定義する CVPARTITION オブジェクト C を作成します。
%   区分は N 点の観測点を、おおよそ同じサイズの無作為に選択された K 個の
%   交わらない副標本 (フォールド) に分割します。K のデフォルト値は 10 です。
%
%   C = CVPARTITION(GROUP,'Kfold',K) は、階層化された K-分割交互検定
%   に対するランダムな区分を定義する CVPARTITION オブジェクト C を作成します。
%   GROUP は、各観測に対するクラス情報を示すベクトルです。GROUP は、カテゴリ
%   変数、数値ベクトル、文字配列、または、文字列のセル配列になります。それぞれの
%   副標本は、GROUP 内で副標本とおおよそ等しいサイズでおおよそ同じクラスの割合を
%   持っています。CVPARTITION は、GROUP 内の NaN または空の文字列を欠損値として
%   扱います。
%
%   C = CVPARTITION(N,'Holdout',P) は、N 点の観測点のホールドアウトの検定に
%   対するランダムな区分を定義する CVPARTITION オブジェクト C を作成します。
%   この区分は、N 個の観測値を訓練データとテスト (ホールドアウト) 
%   セットに分割します。P はスカラでなければなりません。0<P<1 の場合、
%   CVPARTITION はテストデータに対して近似的に P*N の観測値を無作為に選択します。
%   P が整数の場合、テストデータに対して P の観測値を無作為に選択します。
%   P のデフォルト値は 1/10 です。
%
%   C = CVPARTITION(GROUP,'Holdout',P) は、GROUP 内のクラス情報を使って、
%   観測を階層化して訓練データとテストデータにランダムに区分します。
%   すなわち、訓練とテストデータのどちらも GROUP 内でおおよそ同じ
%   クラスの割合を持ちます。
%
%   C = CVPARTITION(N,'Leaveout') は、N 点の観測点で Leave-one-out 法の
%   交互検定に対するランダムな区分を定義するオブジェクト C を作成します。
%   Leave-one-out 法は、K-分割の特別なケースです。この場合、分割数は
%   観測数 N と等しくなります。
%
%   C = CVPARTITION(N,'Resubstitution') は、データを区分しない CVPARTITION 
%   オブジェクト C を作成します。訓練データとテストデータのどちらもオリジナルの 
%   N 点のすべての観測数を含みます。
%
%   C は以下のプロパティを持ちます。
%
%      Type         検定の区分タイプ。'kfold', 'holdout', 'leaveout', 
%                   'resubstitution' のいずれかです。
%      N            観測数 (GROUP が与えられた場合、欠損した GROUP の値を
%                   持つ観測値を含む)。
%      NumTestSets  テストデータの数。値は、K-分割と Leave-one-out 法の
%                   分割数です。ホールドアウトと再置換の場合は 1 です。
%      TrainSize    それぞれの訓練データのサイズ。K-分割と Leave-one-out 法
%                   のベクトルです。ホールドアウトと再置換の場合はスカラです。
%      TestSize     それぞれのテストデータのサイズ。K-分割と一点除外の
%                   ベクトル、あるいは、ホールドアウトと再置換の場合はスカラです。
%
%   例: アイリスデータで CLASSIFY 関数に対する誤判別の誤差を計算するために 
%       10-分割階層化された交互検定を使用します。
%
%     load('fisheriris');
%     CVO = cvpartition(species,'k',10);
%     err = zeros(CVO.NumTestSets,1);
%     for i = 1:CVO.NumTestSets
%         trIdx = CVO.training(i);
%         teIdx = CVO.test(i);
%         ytest = classify(meas(teIdx,:),meas(trIdx,:),species(trIdx,:));
%         err(i) = sum(~strcmp(ytest,species(teIdx)));
%     end
%     cvErr = sum(err)/sum(CVO.TestSize);
%
%   参考 CVPARTITION/TEST, CVPARTITION/TRAINING, CVPARTITION/REPARTITION, 
%        CROSSVAL.


%   Copyright 2007-2008 The MathWorks, Inc.
