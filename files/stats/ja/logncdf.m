% LOGNCDF   対数正規累積分布関数
%
%   P = LOGNCDF(X,MU,SIGMA) は、分布パラメータ MU と SIGMA をもつ対数
%   cdf の X における値を返します。MU と SIGMA は、それぞれ、関連正規
%   分布の平均と標準偏差です。P のサイズは、入力引数と同じサイズです。
%   スカラ入力は、他の入力と同じサイズの定数行列として機能します。
% 
%   MU と SIGMA のデフォルト値は、それぞれ 0 と 1 です。
%
%   [P,PLO,PUP] = LOGNCDF(X,MU,SIGMA,PCOV,ALPHA) は、入力パラメータ MU 
%   と SIGMA が推定されるとき、P に対する信頼区間を返します。PCOV は、
%   推定されたパラメータの共分散行列を含んだ 2×2 の行列です。ALPHA は、
%   0.05 のデフォルト値で、100*(1-ALPHA)% の信頼区間を指定します。PLO と 
%   PUP は、信頼区間の下限と上限を含む P と同じサイズの配列です。
%
%   参考 ERF, ERFC, LOGNFIT, LOGNINV, LOGNLIKE, LOGNPDF, LOGNRND, LOGNSTAT.


%   Copyright 1993-2007 The MathWorks, Inc.
