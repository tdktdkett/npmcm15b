%COXPHFIT  コックス比例ハザード回帰
%
%   B=COXPHFIT(X,Y) は、予測子として行列 X の列を使用し、コックスの比例
%   ハザード回帰モデルをベクトル Y のデータに近似させます。X と Y は、同じ行
%   数でなければなりません。また X は 1 の列を含んではいけません。結果の B は、
%   係数推定値のベクトルです。このモデルは、Y の分布に対する故障率が 
%   h(t)*exp(X*B) として記述できることを示し、ここで h(t) は、共通のベース
%   ラインハザード関数です。
%
%   [...] = COXPHFIT(X,Y,'PARAM1',VALUE1,'PARAM2',VALUE2,...) は、以下から
%   選択される追加パラメータの名前/値の組み合わせを指定します。
%
%      名前          値
%      'baseline'    ベースラインハザード関数が計算される X の値。デフォルトは 
%                    mean(X) のため、X での故障率は h(t)*exp((X-mean(X))*B) です。
%                    0 に対するベースラインを計算するには 0 を入力するため、
%                    X での故障率は、h(t)*exp(X*B) です。
%      'censoring'   右側打ち切りの観測値に対して 1、正確に観測された観測値に
%                    対して 0 となる Y と同じサイズの boolean 配列。デフォルトは、
%                    すべて正しく観測された観測値です。
%      'frequency'   非負の整数カウントを含む Y と同じサイズの配列。
%                    このベクトルの j 番目の要素は、Y の j 番目の要素と 
%                    X の j 番目の行が観測された回数を与えます。デフォルトは 
%                    X と Y の行毎に 1 つの観測値です。
%      'init'        推定係数 B に対する初期値を含むベクトル。
%      'options'     B の推定に使われる反復アルゴリズムに対する制御パラメータ
%                    を指定する構造体。この引数は、STATSET の呼び出しで作成されます。
%                    パラメータ名とデフォルト値については、STATSET('coxphfit') と
%                    入力してください。
%
%   [B,LOGL,H,STATS]=COXPHFIT(...) は、追加の結果を返します。LOGL は対数尤度
%   です。H は列 1 に y 値を、列 2 にこれらのベクトルで評価された推定される
%   ベースライン累積ハザード含む 2 行の行列です。STATS は、以下のフィールドを
%   持つ構造体です。
%       'beta'     係数推定値 (B の出力と同じ)
%       'se'       係数推定値の標準誤差
%       'z'        B に対する z 統計量 (標準誤差で割られた B)
%       'p'        B に対する p-値
%       'covb'     B に対して推定された共分散行列
%
%   例:
%       % 予測子 X に依存する A でワイブルデータを生成します。
%       x = 4*rand(100,1); A = 50*exp(-0.5*x); B = 2;
%       y = wblrnd(A,B);
%
%       % コックスモデルの近似
%       [b,logL,H,st] = coxphfit(x,y);
%
%       % ベースラインの残存のコックス推定と既知のワイブル関数を表示
%       stairs(H(:,1),exp(-H(:,2)))
%       xx = linspace(0,100);
%       line(xx,1-wblcdf(xx,50*exp(-0.5*mean(x)),B),'color','r')
%       title(sprintf('Baseline survivor function for X=%g',mean(x)));
%
%   参考 ECDF, STATSET, WBLFIT.


%   Copyright 2005-2008 The MathWorks, Inc.
