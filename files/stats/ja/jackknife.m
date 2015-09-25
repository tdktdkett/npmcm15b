% JACKKNIFE ジャックナイフ統計量
%
%   JACKSTAT = JACKKNIFE(JACKFUN,...) は、ジャックナイフのデータ標本を
%   描画し、関数 JACKFUN を使用して各標本で統計量を計算し、行列 JACKSTAT
%   に結果を返します。JACKFUN は @ で指定される関数ハンドルです。
%   JACKSTAT の各行は、1 つのジャックナイフの標本を適用した JACKFUN 
%   結果を含みます。JACKFUN が行列、または配列を返す場合、この出力は
%   JACKSTAT へ格納するために行ベクトルに変換されます。
%
%   JACKKNIFE への 3 番目とそれ以降の入力引数 は、JACKFUN への入力を作成
%   するために使われるデータ (スカラ、列ベクトル、行列のいずれか) です。
%   JACKKNIFE は、非スカラのデータの引数 (これらは同じ行数でなければ
%   なりません) の行から再配置してサンプリングすることで各ジャックナイフ
%   の標本を作成します。JACKFUN に渡されるスカラデータは変更されません。
%
%   例:
%
%   ジャックナイフを使ってベクトル Y から得られる無作為標本の MLE 分散
%   推定量のバイアスを推定します。バイアスは、この問題で既知の式があるため、
%   ジャックナイフ値とこの公式を比べることができます。
%
%      y = exprnd(5,100,1);
%      m = jackknife(@var, y, 1);
%      n = length(y);
%      bias = var(y,1) - var(y,0)         % 既知のバイアスの公式
%      jbias = (n - 1)*(mean(m)-var(y,1)) % バイアスのジャックナイフの推定
%
%   参考 BOOTSTRP, RANDOM, RANDSAMPLE, HIST, KSDENSITY.


%   Copyright 1993-2007 The MathWorks, Inc. 
