% LOGNLIKE   対数正規分布に対する負の対数尤度
%
%   NLOGL = LOGNLIKE(PARAMS,DATA) は、パラメータ PARAMS(1) = MU と 
%   PARAMS(2) = SIGMA をもつ対数正規分布に対する DATA の負の対数尤度を
%   返します。MUと SIGMAは、それぞれ関連の正規分布の平均と標準偏差です。
%   NLOGL はスカラです。
%
%   [NLOGL, AVAR] = LOGNLIKE(PARAMS,DATA) は、フィッシャー情報行列 AVAR の
%   逆も出力します。PARAMS の入力パラメータが最尤推定である場合、AVAR の
%   対角要素は、それらの漸近的な分散値です。AVAR は、予想された情報では
%   なく、観測されたフィッシャー情報に基づきます。
%
%   [...] = LOGNLIKE(PARAMS,DATA,CENSORING) は、正確に観測された観測値に
%   対して 0 を、右側打ち切りの観測値に対して 1 となる、DATA と同じサイズの
%   論理ベクトルを受け入れます。
%
%   [...] = LOGNLIKE(PARAMS,DATA,CENSORING,FREQ) は、DATA と同じサイズの
%   頻度ベクトルを受け入れます。FREQ は、通常は、DATA の要素に対応する
%   ための整数の頻度を含みますが、任意の整数でない非負値を含むことも
%   できます。これらのデフォルト値を使用するには、CENSORING に対して 
%   [] を渡してください。
%
%   参考 LOGNCDF, LOGNFIT, LOGNINV, LOGNPDF, LOGNRND, LOGNSTAT.


%   Copyright 1993-2007 The MathWorks, Inc.
