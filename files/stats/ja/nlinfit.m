%NLINFIT  非線形の最小二乗回帰
%
%   BETA = NLINFIT(X,Y,MODELFUN,BETA0) は、最小二乗推定を用いた非線形回帰の
%   係数を推定します。Y は、応答値 (従属変数) のベクトルです。通常は、X は、
%   Y の各値に対する 1 つの行を持つ予測子 (独立変数) の計画行列です。しかし、
%   X は MODELFUN に受け入れられるために準備された任意の配列です。MODELFUN は、
%   2 つの引数、係数ベクトルと配列 X を受け入れ、近似した Y のベクトルを返す 
%   @ で指定される関数です。BETA0 は、係数に対する初期値を含むベクトルです。
%
%   [BETA,R,J,COVB,MSE] = NLINFIT(X,Y,MODELFUN,BETA0) は、近似した係数 BETA、
%   残差 R、MODELFUN のヤコビアン J、近似した係数に対して推定された共分散行列 
%   COVB、誤差項の分散の推定 MSE を返します。これらの出力を NLPREDCI と共に
%   使用して、予測子に対する信頼区間の生成、および NLPARCI と共に使用して
%   推定係数に対する信頼区間を生成することができます。ロバストなオプションを
%   使用する場合、信頼区間にロバスト近似を正しく取り入れるには、SIGMA を
%   使用しなければならず、NLPREDCI または NLPARCI への入力として、MSE が
%   必要となる場合もあります。
%
%   [...] = NLINFIT(X,Y,MODELFUN,BETA0,OPTIONS) は、NLINFIT を使ったアルゴリズム
%   に対する制御パラメータを指定します。この引数は、STATSET を呼び出すことで
%   作成できます。利用可能な STATSET パラメータは、以下のとおりです。
%
%      'MaxIter'     - 繰り返しの最大許容回数。デフォルトは 100 です。
%      'TolFun'      - 残差の二乗和の終了許容誤差。
%                      デフォルトは 1e-8 です。
%      'TolX'        - 推定された係数 BETA の終了許容誤差。デフォルトは 1e-8 です。
%      'Display'     - 推定中の出力の表示レベルです。'off' (デフォルト), 
%                      'iter', 'final' のいずれかから選択します。
%      'DerivStep'   - 有限差分の勾配の計算に使われる相対微分です。スカラか、
%                      パラメータベクトル BETA と同じサイズになります。
%                      デフォルトは EPS^(1/3) です。
%      'FunValCheck' - 目的関数から NaN や Inf のような無効が出力されないかを
%                      チェック。'off' または 'on' (デフォルト)。
%      'Robust'      - ロバスト近似オプションを呼び出すためのフラグ。
%                      'off' (デフォルト) または 'on'。
%      'WgtFun'      - ロバスト近似に対する重み関数。Robust が 'on' の場合
%                      のみ有効です。'bisquare' (デフォルト), 'andrews', 
%                      'cauchy', 'fair', 'huber', 'logistic', 'talwar' 
%                      または 'welsch'。入力として正規化された残差を受け入れる
%                      関数ハンドルにすることも可能で、出力としてロバストな
%                      重みを返します。
%      'Tune'        - 重み関数を適用する前に残差を正規化するためのロバスト
%                      近似で使用される調整定数。正のスカラです。デフォルト値は
%                      重み関数に依存します。
%                      このパラメータは、重み関数が関数ハンドルで指定される
%                      場合に必要です。
%
%   NLINFIT は、Y または MODELFUN(BETA0,X) 内の NaN を欠損値として扱い、
%   対応する観測を無視します。
%
%   例:
%
%      MODELFUN を指定するために @ を使います。
%         load reaction;
%         beta = nlinfit(reactants,rate,@mymodel,beta);
%
%      ここで、MYMODEL は、以下のような MATLAB 関数です。
%         function yhat = mymodel(beta, x)
%         yhat = (beta(1)*x(:,2) - x(:,3)/beta(5)) ./ ...
%                        (1+beta(2)*x(:,1)+beta(3)*x(:,2)+beta(4)*x(:,3));
%
%      重み付け近似の例については、Statistics Toolbox のデモ 
%      "Weighted Nonlinear Regression" を参照してください。
%
%   参考 NLPARCI, NLPREDCI, NLMEFIT, NLINTOOL, STATSET.


%   Copyright 1993-2009 The MathWorks, Inc.
