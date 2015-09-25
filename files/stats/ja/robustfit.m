%ROBUSTFIT  ロバスト線形回帰
%
%   B = ROBUSTFIT(X,Y) は、線形モデル Y=Xb を推定するためにロバスト回帰を
%   実行することで得られた回帰係数のベクトル B を返します。X は、予測変数の 
%   n×p の行列で、Y は、n×1 の観測ベクトルです。アルゴリズムは、bisquare の
%   重み関数で繰り返し重みを適用した最小二乗を使用します。デフォルトでは、
%   ROBUSTFIT は、B の 1 番目の要素の定数項に対応する 1 つの列を X に追加します。
%   1 つの列を X の行列に直接入力しません。
%
%   B = ROBUSTFIT(X,Y,'WFUN',TUNE) は、重み関数 'WFUN' と調整定数 TUNE を
%   使用します。'WFUN' は、'andrews', 'bisquare', 'cauchy', 'fair', 'huber', 
%   'logistic', 'talwar', 'welsch' のいずれかになります。さらに、'WFUN' は、
%   入力として残差ベクトルを与え、出力として重みベクトルを生成する関数になります。
%   残差は、重み関数を呼び出す前に、調整定数と誤差の標準偏差によってスケール
%   されます。'WFUN' は (@myfun のように) @ を使用して呼び出すことができます。
%   TUNE は、重みを計算する前に、残差のベクトルで分割される調整定数で、
%   'WFUN' が関数として指定される場合に必要になります。
%
%   B = ROBUSTFIT(X,Y,'WFUN',TUNE,'CONST') は、モデルが定数項を含むかどうかを
%   制御します。'CONST' は、定数項を含むには 'on' (デフォルト)、あるいは、
%   省略するには 'off' です。
%
%   [B,STATS] = ROBUSTFIT(...) は、以下のフィールドを含む STATS 構造体も返します。
%       'ols_s'     最小二乗近似からの sigma 評価 (rmse)
%       'robust_s'  sigma のロバスト推定
%       'mad_s'     sigma の MAD 評価。反復近似の間、残差をスケーリングする
%                   ために使用されます。
%       's'         sigma の最終推定値。robust_s と、ols_s と robust_s の
%                   重み付きの平均のうち大きいほうの値
%       'se'        係数の推定値の標準誤差
%       't'         stats.se と b の比
%       'p'         stats.t に対する p-値
%       'covb'      係数の推定値に対する共分散行列の推定値
%       'coeffcorr' 係数の推定値の相関の推定値
%       'w'         ロバスト近似の重みベクトル
%       'h'         最小二乗近似に対するレバレッジのベクトル
%       'dfe'       誤差の自由度
%       'R'         行列 X の QR 分解の R 因子
%
%   ROBUSTFIT 関数は、係数推定の分散-共分散行列を V=inv(X'*X)*STATS.S^2 を
%   推定します。標準誤差と相関は、V から導かれます。
%
%   ROBUSTFIT は、X、または Y の NaN を欠損値として扱い、それらを削除します。
%
%   例:
%      x = (1:10)';
%      y = 10 - 2*x + randn(10,1); y(10) = 0;
%      bls = regress(y,[ones(10,1) x])
%      brob = robustfit(x,y)
%      scatter(x,y)
%      hold on
%      plot(x,brob(1)+brob(2)*x,'r-', x,bls(1)+bls(2)*x,'m:')
%
%   参考 REGRESS, ROBUSTDEMO.


%   Copyright 1993-2008 The MathWorks, Inc. 
