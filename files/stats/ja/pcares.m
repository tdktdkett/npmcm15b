% PCARES 主成分分析の残差
%
%   RESIDUALS = PCARES(X,NDIM) は、N×P のデータ行列 X の最初の NDIM 個の
%   主成分要素を使った後に得られる残差を出力します。X の行は観測に対応し、
%   列は変数です。NDIM はスカラで、P に等しいか以下の値でなければなりません。
%   RESIDUALS は、X と同じサイズの行列です。
%
%   PCARES は、X の列を正規化しません。標準化変数に基づき PCA を実行する
%   には、PCARES(ZSCORE(X),NDIM) を使用してください。
%
%   [RESIDUALS,RECONSTRUCTED] = PCARES(X,NDIM) は、再構成した観測、すなわち、
%   最初の NDIM 個の主成分の残りで得られた X への近似を出力します。
%
%   参考 FACTORAN, PCACOV, PRINCOMP.


%   Copyright 1993-2007 The MathWorks, Inc.
