% MVTPDF 多変量 t 確率密度関数 (pdf)
%
%   Y = MVTPDF(X,C,DF) は、X の各行で評価される、相関パラメータ C と自由度
%   DF をもつ多変量 t 分布の確率密度を返します。N×D の行列 X の行は、
%   観測、または点に対応し、列は、変数、または座標に対応します。Y は、
%   N×1 のベクトルです。
%
%   C は、対称で、正定の D×D 行列で、典型的な相関行列です。その対角要素が
%   1 でない場合、MVTPDF は、C を相関の形式にスケーリングします。DF は、
%   スカラ、または N 要素のベクトルです。
% 
%   例:
%
%      C = [1 .4; .4 1]; df = 2;
%      [X1,X2] = meshgrid(linspace(-2,2,25)', linspace(-2,2,25)');
%      X = [X1(:) X2(:)];
%      p = mvtpdf(X, C, df);
%      surf(X1,X2,reshape(p,25,25));
%
%   参考 MVNPDF, MVTCDF, MVTRND, TPDF.


%   Copyright 2005-2007 The MathWorks, Inc.
