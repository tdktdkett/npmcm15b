% GAMLIKE   ガンマ対数尤度関数の負の値
%
% NLOGL = GAMLIKE(PARAMS,DATA)  は、与えられた DATA 、パラメータ PARAMS(1) = A と 
% PARAMS(2) = B で評価されるガンマ分布に対して、対数尤度の負の値を出力します。
% NLOGL は、スカラです。
% 
% [NLOGL, AVAR] = GAMLIKE(PARAMS,DATA) は、Fisher 情報行列 AVAR の逆行列を
% 出力します。PARAMS の入力パラメータ値が最尤推定の場合、AVAR の対角要素は、
% 各々のパラメータの漸近的な分散になります。AVAR は、予測された情報ではなく、
% 観測された Fisher 情報に基づきます。
% 
% [...] = GAMLIKE(PARAMS,DATA,CENSORING) は、正しく観測された観測値に対して 0、
% 右側打ち切りの観測値に対して 1 となる DATA と同じサイズのブーリアンベクトルを
% 受け入れます。
%
% [...] = GAMLIKE(PARAMS,DATA,CENSORING,FREQ) は、DATA と同じ大きさの
% 頻度ベクトルを受け入れます。FREQ は、通常は、DATA の要素に対応する
% ための整数の頻度を含みますが、任意の整数でない非負値を含むことも
% できます。これらのデフォルト値を使用するには、CENSORING に対して [] を
% 渡してください。
%
%   参考 GAMCDF, GAMFIT, GAMINV, GAMPDF, GAMRND, GAMSTAT.


%   B.A. Jones 11-4-94, Z. You 5-25-99
%   Copyright 1993-2004 The MathWorks, Inc.
