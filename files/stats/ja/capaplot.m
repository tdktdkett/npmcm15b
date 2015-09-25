%CAPAPLOT  工程能力プロット
%
%   CAPAPLOT(DATA,SPECS) は、ベクトル DATA の観測値を未知の平均値と分散を
%   持つ正規分布に近似し、推定した新規観測の分布をプロットします。
%   2 要素ベクトル SPECS に含まれる分布の上限と下限の間の部分はプロット図では、
%   影が付けられます。
%
%   [P, H] = CAPAPLOT(DATA,SPECS) は、P に仕様の範囲に存在する新しい観測の
%   確率を、H にプロットの要素のハンドルを返します。
%
%   参考 CAPABILITY, HISTFIT.


%   Copyright 1993-2009 The MathWorks, Inc. 
