%BETALIKE  ベータ対数尤度関数の負の値
%
%   NLOGL = BETALIKE(PARAMS,DATA) は、DATA を与えて、パラメータ PARAMS(1) = A 
%   と PARAMS(2) = B に対するベータ対数尤度関数の負の値を返します。
%
%   [NLOGL, AVAR] = BETALIKE(PARAMS,DATA) は、フィッシャー情報行列 AVAR も
%   返します。PARAMS の入力パラメータの値が最尤推定値の場合、AVAR の対角要素は、
%   漸近的な分散になります。AVAR は、予測された情報ではなく、観測された
%   フィッシャーの情報に基づきます。
%
%   BETALIKE は、最尤推定のユーティリティ関数です。
%
%   参考 BETAFIT, GAMLIKE, MLE, NORMLIKE, WBLLIKE.


%   Copyright 1993-2008 The MathWorks, Inc. 
