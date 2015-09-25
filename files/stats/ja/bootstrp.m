% BOOTSTRP   ブートストラップ統計量
%
%   BOOTSTAT = BOOTSTRP(NBOOT,BOOTFUN,D1,...) は、NBOOT 回のブートストラップ
%   データ標本を描画し、関数 BOOTFUN を使って各標本の統計量を計算し、行列
%   BOOTSTATS に結果を返します。NBOOT は、正の整数でなければなりません。
%   BOOTFUN は、@ で指定される関数ハンドルです。BOOTSTAT の各行は、1 つの
%   ブートストラップの標本に BOOTFUN を適用した結果を含みます。BOOTFUN が
%   行列、または配列を返す場合、この出力は、BOOTSTAT へ格納するために
%   行ベクトルに変換されます。
%
%   3 番目とそれ以降の入力引数 (D1,...) は、BOOTFUN への入力を作成する
%   ために使われるデータ (スカラ、列ベクトル、または行列) です。BOOTSTRP は、
%   非スカラのデータの引数 (これらは同じ行数でなければなりません) の行から
%   再配置してサンプリングすることでブートストラップの各標本を作成します。
%   BOOTFUN に渡されるスカラデータは変更されません。
% 
%   [BOOTSTAT,BOOTSAM] = BOOTSTRP(...) は、他の引数の行へのインデックスの
%   行列 BOOTSAM を返します。関数に適用されない出力標本 BOOTSAM を取得
%   するには、BOOTFUN を空 ([]) に設定してください。
% 
%   例：
%
%   ベクトル Y から得られる無作為標本の 100 回のブーストラップの平均の
%   標本を計算し、これらのブートストラップの平均の密度の推定をプロット
%   します。
%      y = exprnd(5,100,1);
%      m = bootstrp(100, @mean, y);
%      [fi,xi] = ksdensity(m);
%      plot(xi,fi);
% 
%   ベクトル Y から得られる無作為標本の 100 回のブーストラップの平均と
%   標準偏差を計算し、ブートストラップの推定の組み合わせをプロットします。
%      y = exprnd(5,100,1);
%      stats = bootstrp(100, @(x) [mean(x) std(x)], y);
%      plot(stats(:,1),stats(:,2),'o')
%
%   残差をブートストラップすることで線形回帰の係数ベクトルに対する標準
%   誤差を推定します。
%      load hald ingredients heat
%      x = [ones(size(heat)), ingredients];
%      y = heat;
%      b = regress(y,x);
%      yfit = x*b;
%      resid = y - yfit;
%      se = std(bootstrp(1000, @(bootr) regress(yfit+bootr,x), resid));
%
%   相関係数の標準誤差をブートストラップします。
%      load lawdata gpa lsat
%      se = std(bootstrp(1000,@corr,gpa,lsat));
%
%   参考 RANDOM, RANDSAMPLE, HIST, KSDENSITY.


%   Copyright 1993-2007 The MathWorks, Inc. 
