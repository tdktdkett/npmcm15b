%NNMF  非負の行列の因子分解
%
%   [W,H] = NNMF(A,K) は、非負の N x M の行列 A を非負の因子 W (N x K) と 
%   H (K x M) に分解します。結果は、正確な因数分解ではありませんが、W*H は
%   オリジナル行列 A への低ランク近似になります。W と H の行列は、A と近似 
%   W*H 間の残差平方平均平方根として定義される目的関数を最小化するよう
%   選択されます。これは、以下の式と等価です。
%
%          D = sqrt(norm(A-W*H,'fro')/(N*M))
%
%   因子分解は、W と H に対するランダムな初期値で始まる反復法を使用します。
%   目的関数はしばしば局所的最小値を持つため、因子分解を繰り返すと、異なる 
%   W と H の値が生じる可能性があります。時々、アルゴリズムは K よりも
%   低ランクの解に収束し、これは結果が最適解でないことを示します。
%
%   [W,H,D] = NNMF(...) は、残差平方平均平方根 D を返します。
%
%   [W,H] = NNMF(A,K,'PARAM1',val1,'PARAM2',val2,...) は、以下のパラメータの
%   名前と値の組み合わせのいくつかを指定します。
%
%      パラメータ   値
%      'algorithm'  交互最小二乗アルゴリズムを使用する場合は 'als' 
%                   (デフォルト)、乗法的な更新アルゴリズムを使用する
%                   場合は 'mult' のいずれか。
%      'w0'         W に対する初期値として使用される N x K の行列。
%      'h0'         H に対する初期値として使用される K x M の行列。
%      'replicates' w0 と h0 が与えられる (デフォルト 1) の場合、W と H に
%                   対する新規乱数の開始値を使って最初の繰り返しを除いた
%                   因子分解の繰り返し回数。これは、'mult' アルゴリズムで
%                   最も有効です。
%      'options'    STATSET 関数で作成されるオプション構造体。NNMF は、
%                   Display, TolX, TolFun, MaxIter のオプションを使用します。
%                   最適化設定と異なり、MaxIter 回の繰り返しに達すると
%                   収束として扱われます。
%
%    例:
%        % フィッシャーのアイリス測定の非負のランク 2 の近似
%        load fisheriris
%        [w,h] = nnmf(meas,2);
%        gscatter(w(:,1),w(:,2),species);
%        hold on; biplot(max(w(:))*h','VarLabels',{'sl' 'sw' 'pl' 'pw'},'positive',true); hold off;
%        axis([0 12 0 12]);
%
%        % 乗法アルゴリズムを使用して、いくつかの繰り返しにおいて、2～3 回の
%        % 繰り返しを試行し、その後、交互最小二乗アルゴリズムを使用して、
%        % これらの最もよい結果からさらに多くの繰り返しを続けます。
%        x = rand(100,20)*rand(20,50);
%        opt = statset('maxiter',5,'display','final');
%        [w,h] = nnmf(x,5,'rep',10,'opt',opt,'alg','mult');
%        opt = statset('maxiter',1000,'display','final');
%        [w,h] = nnmf(x,5,'w0',w,'h0',h,'opt',opt,'alg','als');
%
%    参考 BIPLOT, PRINCOMP, STATSET.


%   Copyright 2007-2009 The MathWorks, Inc. 
