% NBINRND   負の二項分布からの乱数の配列
%
% RND = NBINRND(R,P,M,N) は、パラメータ R と P をもつ負の二項分布から
% 抽出した乱数の配列を出力します。RND の大きさは、R と P が共に配列の場合、
% それらに共通する大きさになります。どちらかのパラメータがスカラの場合、
% RND の大きさは、もう一方のパラメータと同じ大きさになります。
%
% RND = NBINRND(R,P,M,N,...) または RND = NBINRND(R,P,[M,N,...]) は、
% M×N×... の配列を出力します。 
%
%   参考 NBINCDF, NBININV, NBINPDF, NBINSTAT, RANDOM.


%   Copyright 1993-2004 The MathWorks, Inc. 
