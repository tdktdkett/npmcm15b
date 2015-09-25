%CORRCOV  共分散行列から相関行列を計算
%
%   R = CORRCOV(C) は、C の分散 (対角要素) の平方根を使って、C の各行と列を
%   標準化することにより、共分散行列 C に対応する相関行列 R を計算します。
%   C は正方で対称な半正定行列でなければなりません。定数の変数 (C の 0 の
%   対角要素) に対する相関は定義されません。
%
%   [R,SIGMA] = CORRCOV(C) は、C の対角要素から標準偏差 SIGMA のベクトルを
%   計算します。
%
%   参考 COV, CORR, CORRCOEF, CHOLCOV.


%   Copyright 2007-2008 The MathWorks, Inc. 
