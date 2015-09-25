%RIDGE  リッジ回帰
%
%   B1 = RIDGE(Y,X,K) は、リッジパラメータ K を使って、予測子 X 上の応答
%   ベクトル Y のリッジ回帰を実行することで得られる回帰係数のベクトル B1 を
%   返します。行列 X には、1 の列を含んではいけません。結果は、平均 0 と
%   標準偏差 1 を持つように X の列の中心化とスケーリングを行った後に計算されます。
%   Y に n 個の観測があり、X が n 行 p 列の行列で、K がスカラの場合、結果の 
%   B1 は p 個の要素を持つ列ベクトルになります。K に m 個の要素がある場合、
%   B1 は p 行 m 列になります。
%
%   B0 = RIDGE(Y,X,K,0) は、中心化とスケーリングを行わずに回帰を実行します。
%   結果の B0 には、1 番目が定数項となる p+1 の係数が含まれます。
%   RIDGE(Y,X,K,1) は、RIDGE(Y,X,K) と同じです。
%
%   B1 と B0 間の関係は、以下のとおりです。
%
%      m = mean(X);
%      s = std(X,0,1)';
%      temp = B1./s;
%      B0 = [mean(Y)-m*temp; temp]
%
%   一般的に、B1 は同じスケールで表示される係数となるリッジトレース 
%   (以下の例を参照) の生成に役立ちます。B0 は、予測を行うのに役立ちます。
%
%   例:  Hald データに対するリッジトレース (係数をリッジパラメータの関数と
%        してプロット) を作成します。
%      load hald
%      k = 0:.01:1;
%      b = ridge(heat, ingredients, k);
%      plot(k, b');
%      xlabel('Ridge parameter'); ylabel('Standardized coef.');
%      title('Ridge Trace for Hald Data')
%      legend('x1','x2','x3','x4');
%
%   参考 REGRESS, STEPWISE.


%   Copyright 1993-2009 The MathWorks, Inc.
