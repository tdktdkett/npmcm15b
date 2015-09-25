%CROSSVAL  交差検定
%
%   VALS = CROSSVAL(FUN,X) は、X 内のデータに適用した、関数 FUN に対する 
%   10 分割交差検定を行います。FUN は、X の訓練データと X のテストデータの 
%   2 つの入力引数を持つ 10 回呼び出される関数ハンドルで、以下のように表します。
%
%      TESTVAL = FUN(XTRAIN,XTEST)
%
%   呼び出される度に、FUN はモデルを近似するために XTRAIN を使用する必要があり、
%   近似したモデルを使用して XTEST 上で計算されるいくつかの規範 TESTVAL を
%   返します。X は、列ベクトル、または行列です。X の行は観測に対応し、列は
%   変数または特性に対応します。VALS は、列ベクトル、または行列です。VALS の
%   各行には、1 つの検定データに適用する FUN の結果が含まれます。FUN が
%   非スカラ値を返す場合、CROSSVAL は線形インデックスの順を使用して行ベクトルに
%   整形し、行列 VALS の行に格納します。
%
%   VALS = CROSSVAL(FUN,X,Y,...) は、複数の変数 X, Y, ... がある場合に使われます。
%   すべての変数 (列ベクトル、行列または配列) は、同じ行数でなければなりません。
%   FUN では、下記に示されるように、X, Y, ... の訓練データの後に X, Y, ... の
%   テストデータを続けて呼び出す関数ハンドルです。
%
%      TESTVALS = FUN(XTRAIN,YTRAIN,...,XTEST,YTEST,...)
%
%   MSE = CROSSVAL('mse',X,Y,'Predfun', PREDFUN) は、関数 PREDFUN に対する
%   平均二乗誤差の 10 分割交差検定の推定を含むスカラ MSE を返します。X は、
%   列ベクトル、行列または配列となる予測子です。Y は、応答値を含む列ベクトルです。
%   X と Y は、同じ行数でなければなりません。PREDFUN は、以下のように、X の訓練
%   データの後に Y の訓練データ、その後に X のテストデータを続けて呼び出す関数
%   ハンドルです。
%
%      YFIT = PREDFUN(XTRAIN,YTRAIN,XTEST)
%
%   呼び出される度に、PREDFUN は、回帰モデルに近似するために XTRAIN と 
%   YTRAIN を使用し、列ベクトル YFIT に近似した値を返す必要があります。
%   YFIT の各行は、XTEST の対応する行に対する予測値を含んでいます。
%   CROSSVAL は、YFIT と対応する応答のテストデータ間の二乗和誤差を計算し、
%   すべてのテストデータと交差する全体の平均を返します。
%
%   MCR = CROSSVAL('mcr',X,Y,'Predfun', PREDFUN) は、予測値として行列 X と
%   クラスのラベルとしてベクトル Y を持つ関数 PREDFUN に対する誤判別の割合 
%   (誤判別した標本の割合) の 10 分割交差検定の推定を含むスカラ MCR を返します。
%   PREDFUN は、分類モデルを近似するために XTRAIN と YTRAIN を使用し、XTEST に
%   対する予測したクラスのラベルとして YFIT を返す必要があります。CROSSVAL は、
%   YFIT と対応する応答のテストデータ間の誤判別の数を計算し、すべてのテスト
%   データと交差する全体の誤判別の割合を返します。
%
%   VAL = CROSSVAL(CRITERION,X1,X2,...,Y,'Predfun', PREDFUN) は、CRITERION が 
%   'mse' または 'mcr' の場合、予測値として X1, X2, ... と応答値またはクラス
%   のラベルとして Y を持つ平均二乗誤差による交差検定の推定 (回帰モデルの場合) 
%   または誤判別の割合 (分類モデルの場合) を返します。すべての変数 (X1, X2, ... Y) 
%   は、同じ行数でなければなりません。PREDFUN は、下記に示されるように、
%   X1, X2, ... の訓練データの後に Y の訓練データ、その後に X1, X2, ... の
%   テストデータを続けて呼び出す関数ハンドルです。
%
%      YFIT = PREDFUN(X1TRAIN,X2TRAIN,...,YTRAIN,X1TEST,X2TEST,...)
%
%   YFIT は、近似した値を含む列ベクトルでなければなりません。
%
%   VALS = crossval(...,'PARAM1',val1,'PARAM2',val2,...) は、以下から選択
%   される追加のパラメータ名/値の組み合わせを指定します。
%
%   'Kfold'        K 分割の交差検定に対する分割の数 K。
%   'Holdout'      ホールドアウトに対する観測の比率または数 P。P はスカラで
%                  なければなりません。0<P<1 の場合、テストセットに対して
%                  近似的に P*N の観測値を無作為に選択します。P が整数の場合、
%                  テストデータに対して P の観測値を無作為に選択します。
%   'Leaveout'     値は 1 でなければなりません。Leave-one-out 法の交差検定が
%                  使われます。
%   'Partition'    CVPARTITION オブジェクト C。
%   'Stratify'     階層化に対するグループ情報を示す列ベクトル GROUP。GROUP 内
%                  では訓練データとテストデータの両方ともだいたい同じクラスの
%                  割合になります。
%                  CROSSVAL は、GROUP の NaN、または、空の文字列を欠損値と
%                  して取り扱い、X,Y,... の対応する行を無視します。
%                  階層化した区分は、分類アルゴリズムを実行するために使われます。
%   'Mcreps'       検定に対するモンテ・カルロの繰り返し数を示す正の整数。
%                  CROSSVAL の 1 番目の入力が 'mse' または 'mcr' の場合、
%                  CROSSVAL はモンテ・カルロの繰り返しのすべてと交差する平均
%                  二乗誤差または誤判別の割合の平均を返します。そうでない場合、
%                  CROSSVAL は、1 番目の次元に沿ったモンテ・カルロの繰り返しの
%                  すべてから VAL の値を連結します。
%
%   'Kfold', 'Holdout','Leaveout' または 'Partition' パラメータのいずれかのみを
%   指定することができます。'Kfold', 'Holdout','Leaveout' または 'Partition' 
%   のいずれかを与えない場合、デフォルトで 10 分割交差検定になります。
%   'Partition' パラメータは、'Stratify' と共に指定することはできません。
%   'Partition' と 'Mcreps' の両方の値が与えられた場合、1 番目のモンテ・カルロの
%   繰り返しは、与えられた CVPARTITION オブジェクト内に含まれる区分情報を使用します。
%   REPARTITION メソッドは、残りのモンテ・カルロの繰り返しの度に新規区分を
%   生成するために、この CVPARTITION オブジェクトで計算されます。
%
%   例:
%      % 10 分割交差検定を使って回帰に対する平均二乗誤差を計算します
%      load('fisheriris');
%      y = meas(:,1);
%      x = [ones(size(y,1),1) meas(:,2:4)];
%      regf = @(xtrain, ytrain,xtest)(xtest * regress(ytrain,xtrain));
%      cvMse = crossval('mse',x,y,'predfun',regf)
%
%      % 階層化された 10 分割交差検定を使って誤判別の割合を計算します
%      load('fisheriris');
%      y = species;
%      % 階層化した区分は、分類アルゴリズムを実行するために使われます。
%      cp = cvpartition(y,'k',10);
%      classf = @(xtrain, ytrain,xtest)(classify(xtest,xtrain,ytrain));
%      cvMCR = crossval('mcr',meas,y,'predfun', classf,'partition',cp)
%
%      % 階層化された 10 分割交差検定を使って混合行列を計算します
%      load('fisheriris');
%      % 混合行列の各々は、同じ順番のグループラベルの並べ替えが必要です。
%      yorder = unique(species);
%      % 階層化した区分は、分類アルゴリズムを実行するために使われます。
%      cp = cvpartition(species,'k',10);
%      f = @(xtr,ytr,xte,yte) confusionmat(yte,classify(xte,xtr,ytr),...
%          'order',yorder);
%      cfMat = crossval(f,meas,species,'partition',cp);
%      % cfMat は、10 個のテストデータからの 10 個の混合行列の合計です。
%      cfMat = reshape(sum(cfMat),3,3)
%
%   参考 CVPARTITION, CVPARTITION/REPARTITION.


% Copyright 2007-2009 The MathWorks, Inc.
