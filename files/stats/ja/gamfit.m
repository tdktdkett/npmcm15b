% GAMFIT   ガンマ分布データのパラメータ推定 
%
% PARMHAT = GAMFIT(X) は、ガンマ分布を X のデータに適合するためのパラメータの
% 最尤推定を出力します。PARMHAT(1) と PARMHAT(2) は、それぞれ形状とスケール
% パラメータ A と B の推定です。
%
% [PARMHAT,PARMCI] = GAMFIT(X) は、パラメータ推定に対する 95% の信頼区間を
% 出力します。
%
%  [PARMHAT,PARMCI] = GAMFIT(X,ALPHA) は、パラメータ推定に対する 100(1-ALPHA)% の
% 信頼区間を出力します。
%
% [...] = GAMFIT(X,ALPHA,CENSORING) 正確に観測された観測値に対して 0 を、
% 右側打ち切りの観測値に対して1となる、X と同じ大きさの論理ベクトルを受け入れます。
%
% [...] = GAMFIT(X,ALPHA,CENSORING,FREQ) は、X と同じ大きさの頻度ベクトルを
% 受け入れます。FREQ は、通常は、X の要素に対応するための整数の頻度を
% 含みますが、任意の整数でない非負値を含むこともできます。
%
% [...] = GAMFIT(X,ALPHA,CENSORING,FREQ,OPTIONS) は、これらが打ち切られるときの
% MLの推定を計算するために使われる反復アルゴリズムに対するコントロールパラメータを
% 指定します。
%
% これらのデフォルト値を使用するには、ALPHA, CENSORING, FREQ に対して、
% [] を渡してください。
%
%   参考 GAMCDF, GAMINV, GAMLIKE, GAMPDF, GAMRND, GAMSTAT, MLE, STATSET.


%   Copyright 1993-2004 The MathWorks, Inc.
