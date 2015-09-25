% MHSAMPLE  メトロポリス-ヘイスティングスアルゴリズムを用いたマルコフ連鎖の生成 
%
%   SMPL = MHSAMPLE(START,NSAMPLES,'pdf',PDF,'proppdf',PROPPDF,'proprnd',PROPRND) 
%   は、メトロポリス-ヘイスティングスアルゴリズムを使って、ターゲットの
%   定常分布から NSAMPLES 点の無作為標本を描画します。START は、マルコフ連鎖
%   の開始値を含む行ベクトルです。NSAMPLES は、生成するための標本数を指定します。
%   PDF, PROPPDF, PROPRND は、@ を使って作成される関数ハンドルです。PROPPDF は、
%   提案分布の密度を定義し、PROPRND は提案分布に対する乱数発生器を定義します。
%   PDF と PROPRND は、入力として 1 つの引数を受け入れ、この引数は、START と
%   同じタイプとサイズを持ちます。PROPPDF は、入力として 2 つの引数を受け入れ、
%   どちらの引数も、START と同じタイプとサイズを持ちます。SMPL は、標本を含む
%   列ベクトル、または行列です。
%   対数密度関数が選ばれた場合、'pdf' と 'proppdf' は、'logpdf' と 'logproppdf' 
%   に置き換えることが可能です。メトロポリス-ヘイスティングスアルゴリズムで
%   使われる密度関数は、必ずしも正規化されるわけではありません。
%   proppdf または logproppdf の q(x,y) が q(x,y) = q(y,x) を満たす場合、すなわち、
%   提案分布が対称の場合、MHSAMPLE は、ランダムウォーク・メトロポリス-ヘイスティングス
%   サンプリングを実行します。proppdf または logproppdf の q(x,y) は、
%   q(x,y) = q(x) を満たす場合、すなわち、提案分布が現在の値に依存しない場合、
%   MHSAMPLE は、メトロポリス-ヘイスティングスサンプリングを実行します。
%
%   提案分布 q(x,y) は、y が現在の点である場合、次の点として選択する x に
%   対して確率密度を与えます。文献では、時々 q(x|y) として記述されます。
%
%   SMPL = MHSAMPLE(...,'symmetric',SYM) は、メトロポリス-ヘイスティングス
%   アルゴリズムを使って、ターゲットの定常分布 PDF から NSAMPLES 点の無作為標本を
%   抽出します。SYM は、提案分布が対称であるかどうかを示す論理値です。
%   デフォルト値は false で、非対称な提案分布に対応します。SYM が true、
%   すなわち、提案分布が対称の場合、PROPPDF と LOGPROPDF は、オプションです。
%
%   SMPL = MHSAMPLE(...,'burnin',K) は、開始点と省略された K 番目の点の間の
%   値を持つマルコフ連鎖を生成しますが、その後で点を保持します。
%   K は、非負の整数です。K のデフォルト値は 0 です。
%
%   SMPL = MHSAMPLE(...,'thin',M) は、生成した列内で省略された M 値の M-1 外
%   のマルコフ連鎖を生成します。M は正の整数です。デフォルト値は 1 です。
%
%   SMPL = MHSAMPLE(...,'nchain',N) は、メトロポリス-ヘイスティングス
%   アルゴリズムを使って N のマルコフ連鎖を生成します。N は正の整数です。
%   N のデフォルト値は 1 です。SMPL は標本を含む行列です。最後の次元は、
%   独立した連鎖のインデックスを含みます。
%
%   [SMPL,ACCEPT] = MHSAMPLE(...) は、提案分布の受容比として ACCEPT も返します。
%   ACCEPT は、単一連鎖が生成された場合はスカラで、複数連鎖が生成された場合は
%   ベクトルです。
%
%  例:
%    独立なメトロポリス-ヘイステングスサンプリングを使って、ガンマ分布の 
%    2 次モーメントを推定します。
%        alpha = 2.43;
%        beta = 1;
%        pdf = @(x) gampdf(x,alpha,beta);     %ターゲットの分布
%        proppdf = @(x,y) gampdf ...          % 提案 pdf
%                   (x,floor(alpha),floor(alpha)/alpha);
%        proprnd = @(x) sum ...               % 提案乱数サンプラ
%                   (exprnd(floor(alpha)/alpha,floor(alpha),1));
%        nsamples = 5000;
%        smpl = mhsample(1,nsamples,'pdf',pdf,'proprnd', ...
%                   proprnd,'proppdf',proppdf);
%        xxhat = cumsum(smpl.^2)./(1:nsamples)';
%        plot(1:nsamples,xxhat)
%
%    ランダムウォーク・メトロポリス-ヘイスティングスサンプリング法を使って、
%    N(0,1) から無作為標本を生成します。
%        delta = .5;
%        pdf = @(x) normpdf(x);                     % ターゲットの分布
%        proppdf = @(x,y) unifpdf(y-x,-delta,delta);% 提案 pdf
%        proprnd = @(x) x + rand*2*delta - delta;   % 提案乱数サンプラ
%        nsamples = 15000;
%        x = mhsample(1,nsamples,'pdf',pdf,'proprnd',proprnd,'symmetric',1);
%        histfit(x,50)
%
%  参考: SLICESAMPLE, RAND.


% Copyright 2005-2008 The MathWorks, Inc.
