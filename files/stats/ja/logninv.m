% LOGNINV   対数正規逆累積分布関数 (cdf)
%
%   X = LOGNINV(P,MU,SIGMA) は、分布パラメータ MU と SIGMA をもつ逆対数
%   正規分布の cdf の P における値を返します。MU と SIGMA は、それぞれ、
%   関連の正規分布の平均と標準偏差です。X のサイズは、入力引数と同じ
%   サイズです。スカラの入力は、もう一方の入力と同じサイズの定数行列と
%   して機能します。
%
%   MU と SIGMA に対するデフォルト値は、それぞれ、0 と 1 です。
%
%   [X,XLO,XUP] = LOGNINV(P,MU,SIGMA,PCOV,ALPHA) は、入力パラメータ MUと 
%   SIGMA が推定されたとき、X に対する信頼区間を返します。PCOV は、推定
%   されたパラメータの共分散行列を含んだ 2×2 の行列です。ALPHA は、0.05 の
%   デフォルト値で、100*(1-ALPHA)% の信頼区間を指定します。XLO と XUP は、
%   信頼区間の下限と上限を含む X と同じサイズの配列です。
%
%   参考 ERFINV, ERFCINV, LOGNCDF, LOGNFIT, LOGNLIKE, LOGNPDF,
%        LOGNRND, LOGNSTAT.


%   Copyright 1993-2007 The MathWorks, Inc.
