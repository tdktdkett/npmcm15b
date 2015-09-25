%LOGNFIT  対数正規のデータに対するパラメータ推定と信頼区間
%
%   PARMHAT = LOGNFIT(X) は、X に近似する対数正規分布に対するパラメータの
%   最尤推定のベクトル PARMHAT(1) = MU と PARMHAT(2) = SIGMA を返します。
%   MU と SIGMAは、それぞれ関連する正規分布の平均と標準偏差です。
%
%   [PARMHAT,PARMCI] = LOGNFIT(X) は、パラメータ推定に対する 95% の信頼区間を
%   返します。
%
%   [PARMHAT,PARMCI] = LOGNFIT(X,ALPHA) は、パラメータ推定に対する 
%   100(1-ALPHA)% の信頼区間を返します。
%
%   [...] = LOGNFIT(X,ALPHA,CENSORING) は、正確に観測された観測値に対して 0、
%   右側打ち切りの観測値に対して 1 となる、X と同じサイズの論理ベクトルを
%   受け入れます。
%
%   [...] = LOGNFIT(X,ALPHA,CENSORING,FREQ) は、X と同じサイズの頻度ベクトル
%   を受け入れます。FREQ は、通常は、X の要素に対応するための整数の頻度を
%   含みますが、任意の整数でない非負値を含むこともできます。
%
%   [...] = LOGNFIT(X,ALPHA,CENSORING,FREQ,OPTIONS) は、最尤 (ML) 推定の計算
%   に使用される反復アルゴリズムに対する制御パラメータを指定します。この引数は、
%   STATSET の呼び出しで作成されます。パラメータ名とデフォルト値については、
%   STATSET('lognfit') を参照してください。
%
%   これらのデフォルト値を使用するには、ALPHA, CENSORING, FREQ に対して、
%   [] を渡してください。
%
%   打ち切りがない場合、SIGMAHAT は log(X) の分散のバイアスのない推定器の
%   平方根です。打ち切られる場合、SIGMAHAT は、最尤推定です。
%
%   参考 LOGNCDF, LOGNINV, LOGNLIKE, LOGNPDF, LOGNRND, LOGNSTAT, MLE,
%        STATSET.


%   Copyright 1993-2009 The MathWorks, Inc.
