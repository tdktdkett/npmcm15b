% GAMINV   ガンマ分布の逆累積分布関数(cdf)
%
% X = GAMINV(P,A,B)  は、パラメータ A と B をもつ P の確率でのガンマ累積
% 分布関数の逆関数を出力します。X の大きさは、入力引数と共通のサイズです。
% スカラの入力は、他の入力と同じ大きさの定数行列として機能します。
%
% [X,XLO,XUP] = GAMINV(P,A,B,PCOV,ALPHA) は、入力パラメータ A と B が
% 推定される場合に、X に対する信頼区間を与えます。PCOV は、推定された
% パラメータの共分散行列を含む 2×2 の行列です。ALPHA は 0.05 のデフォルト値を
% もち、100*(1-ALPHA)% の信頼区間を指定します。XLO と XUP は、上限と下限の
% 信頼区間を含む X と同じサイズの配列です。
% 
%   参考 GAMCDF, GAMFIT, GAMLIKE, GAMPDF, GAMRND, GAMSTAT.


%   Copyright 1993-2004 The MathWorks, Inc. 
