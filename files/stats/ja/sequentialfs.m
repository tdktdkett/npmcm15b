%SEQUENTIALFS  連続した機能選択
%
%   INMODEL = SEQUENTIALFS(FUN,X,Y) は、予測の改善が見られなくなるまで連続
%   して選択する機能により、X から Y 内のデータを最も良く予測する予測変数の
%   データを選択します。X は、行がポイント (または観測値) に対応し、列が機能 
%   (または予測変数) に対応するデータ行列です。Y は、X 内の観測値ごとの応答値、
%   または、クラスのラベルの列ベクトルです。X と Y は、同じ行数でなければ
%   なりません。FUN は、機能の選択と停止のタイミングを決定するために使用する 
%   SEQUENTIALFS の基準を定義する、@ を使って作成される関数ハンドルです。
%   SEQUENTIALFS は、最終的に選択される機能を示す論理ベクトル INMODEL を返します。
%
%   空の機能の集合から始めると、SEQUENTIALFS は、まだ選択されていない各機能を
%   追加することで、候補の機能のサブセットを作成します。候補の機能のデータ
%   ごとに、SEQUENTIALFS は、以下のように X と Y の異なる訓練とテストの
%   データを使って FUN を繰り返し呼び出すことで、10 分割交差検定を実行します。
%
%      CRITERION = FUN(XTRAIN,YTRAIN,XTEST,YTEST)
%
%   XTEST と YTEST が行の相補的なデータを含む間は、XTRAIN と YTRAIN は、
%   X と Y の同じ行のデータを含みます。XTRAIN と XTEST は、現在の候補の
%   機能の集合に対応する X の列から得られるデータを含んでいます。
%
%   呼び出される度に、FUN は、スカラ値 CRITERION を返さなければなりません。
%   通常、FUN はモデルを訓練、または、近似するために XTRAIN と YTRAIN を使用し、
%   次に、モデルを使用して XTEST に対する値を予測します。最終的に、YTEST から
%   これらの予測値の距離の測定、または、損失値を返します。与えられた候補の
%   機能の集合に対する交差検定の計算において、SEQUENTIALFS は、すべての
%   テストデータと交差する FUN の戻り値を合計し、その合計をテストの観測値の
%   総数で割ります。各候補の機能のサブセットを評価するために、値の平均を
%   使用します。FUN に対して、2 つの共通して使用される損失測定は、回帰
%   モデルに対する二乗誤差 (この場合、SEQUENTIALFS は平均二乗誤差を計算
%   します) と、分類モデルに対する誤判別の観測数 (この場合、SEQUENTIALFS は
%   誤判別の割合を計算します) です。
%
%   注意: SEQUENTIALFS は、すべてのテストデータと交差する FUN で返される値の
%   和をテストの観測値の総数で割ります。そのため、FUN はその出力値をテストの
%   観測値の数で割る必要はありません。
%
%   候補の機能のサブセットごとの平均 CRITERION の値が与えられると、
%   SEQUENTIALFS は、平均の CRITERION 値を最小化するものを選択します。
%   この手順は、機能を追加することで基準を下げなくなるまで続けられます。
%
%   INMODEL = SEQUENTIALFS(FUN,X,Y,Z,...) は、入力変数 X, Y, Z, ... の数を
%   受け入れます。SEQUENTIALFS は、X からのみ機能 (列) を選択しますが、
%   そうでない場合は、X, Y, Z, ... に解釈を与えません。列ベクトルか行列の
%   すべてのデータ入力は、同じ行数でなければなりません。SEQUENTIALFS は、
%   以下のように、X, Y, Z, ... の訓練データとテストデータで FUN を呼び出します。
%
%      CRITERION = FUN(XTRAIN,YTRAIN,ZTRAIN,...,XTEST,YTEST,ZTEST,...)
%
%   SEQUENTIALFS は、X, Y, Z, ... の行のサブセットを選択することで、XTRAIN, 
%   YTRAIN, ZTRAIN, ... と XTEST, YTEST, ZTEST, ... を作成します。FUN は、
%   スカラ値 CRITERION を返しますが、何らかの値を計算する可能性はあります。
%   論理ベクトル INMODEL の要素は X の列に対応し、最後に選択された機能を示します。
%
%   [INMODEL,HISTORY] = SEQUENTIALFS(FUN,X,...) は、各ステップで選択した機能
%   の情報を返します。HISTORY は、以下のフィールドを持つスカラの構造体です。
%
%         Crit   各ステップで計算された基準値を含むベクトル。
%         In     行 I がどの機能がステップ I で含まれるを示す論理行列。
%
%   [...] = SEQUENTIALFS(..., 'PARAM1',val1, 'PARAM2',val2, ...) は、以下の
%   名前と値の組の 1 つ、または、複数を指定します。
%
%   'CV'        候補の機能のサブセットごとの基準を計算するために使われる
%               検証メソッド。選択肢は、以下のとおりです。
%               正の整数 K - K 分割交差検定を使用 (階層化なし)。K は 
%                                      1 より大きくなければなりません。
%               CVPARTITION オブジェクト - CVPARTITION オブジェクトで
%                                      指定した交差検定を実行。
%               'resubstitution'     - 再置換を使用、すなわち、オリジナル
%                                      データは、基準を計算するために訓練と
%                                      テストデータの両方を FUN に渡します。
%               'none'               - テストデータと訓練データを別々にせずに、
%                                      CRITERION = FUN(X,Y,Z,...) として 
%                                      FUN を呼び出します。
%               'CV' のデフォルト値は 10、すなわち、10 分割交差検定 (階層化なし) です。
%
%               通称、"wrapper" メソッドは、学習アルゴリズムを実効する関数 
%               FUN を使用します。これらのメソッドは、通常、機能を選択するために
%               交差検定を適用します。通称、"filter" メソッドは、機能を選択する
%               ためのデータの特性 (相関のような) を測定する関数を使用します。
%
%   'MCReps'  交差検定に対するモンテ・カルロの繰り返し数を示す正の整数。
%               デフォルト値は 1 です。
%               'CV' が 'none' または 'resubstitution' の場合、'MCReps' は 1 
%               でなければなりません。
%
%   'Direction' 逐次検索を実行する方向。
%               デフォルトは、'forward' です。'Direction' が 'backward' の
%               場合、SEQUENTIALFS は、すべてを含む機能の集合で始まり、
%               基準値が増加するまで機能を順次削除します。
%
%   'KeepIn'    必ず含まれる機能の集合を指定する論理ベクトル、または、列番号
%               のベクトル。デフォルトは空です。
%
%   'KeepOut'   必ず除外される機能の集合を指定する論理ベクトル、または、
%               列番号のベクトル。デフォルトは空です。
%
%   'NFeatures' SEQUENTAILFS が停止するときの機能数。
%               INMODEL は、この多くの機能を正確に含みます。デフォルト値は
%               空で、基準の局所的な最小値が見つかった場合に SEQUENTAILFS が
%               停止することを示します。'NFeatures' に対する空でない値は、
%               'Options' 内の 'MaxIter' と 'TolFun' を無効にします。
%
%   'NullModel'  (X からの機能を含まないという) 帰無仮説を機能選択手順と 
%               HISTORY の出力に含む必要があるかどうかを示す論理値。
%               デフォルトは FALSE です。
%
%   'Options'   STATSET で作成される繰り返す逐次検索アルゴリズムに対する
%               オプション構造体。SEQUENTIALFS は、以下の STATSET パラメータを
%               使用します。
%
%         'Display'     表示出力レベル。選択肢は、'off' (デフォルト), 
%                       'final', 'iter' です。
%         'MaxIter'     可能な最大繰り返し回数。デフォルトは Inf です。
%         'TolFun'      基準に対する終了許容誤差を与える正の数。デフォルト
%                       は、'Direction' が 'forward' の場合 1e-6、
%                       'Direction' が 'backward' の場合 0 です。
%         'TolTypeFun'  'TolFun' を絶対許容誤差として使用する場合 'abs'、
%                       相対許容誤差として使用する場合 'rel'。デフォルトは 
%                       'rel' です。
%
%   例:
%      % ノイズを含む機能を持つアイリスデータで CLASSIFY に対して連続した
%      % 機能選択を実行し、ノイズを含まない機能が重要であることを確認します。
%      load('fisheriris');
%      X = randn(150,10);
%      X(:,[1 3 5 7 ])= meas;
%      y = species;
%      opt = statset('display','iter');
%      % 階層化した区分の生成は、通常、分類アルゴリズムを実行するために
%      % 使われます。
%      cvp = cvpartition(y,'k',10);
%      [fs,history] = sequentialfs(@classf,X,y,'cv',cvp,'options',opt);
%
%      ここで、CLASSF は、以下のように表される MATLAB 関数です。
%      function err = classf(xtrain,ytrain,xtest,ytest)
%        yfit = classify(xtest,xtrain,ytrain,'quadratic');
%        err = sum(~strcmp(ytest,yfit));
%
%   参考 CVPARTITION, CROSSVAL, STEPWISEFIT.


% Copyright 2008-2009 The MathWorks, Inc.
