%CAPABILITY  能力指数
%
%   STR=CAPABILITY(DATA,SPECS) は、指定したデータの様々な能力指数を含む
%   構造体 STR を返します。DATA は、測定のベクトル、または行列のいずれかに
%   なります。SPECS は、仕様範囲の上限と下限を含む 2 要素のベクトルです。
%   指数は、DATA 値が一定の平均と分散を持ち、データ値が独立である正規分布で
%   説明可能な工程から成るという仮定の下で計算されます。
%
%   DATA が行列の場合、CAPABILITY は列毎に処理します。SPECS は、2 要素
%   ベクトル、または DATA と同じ列数を持つ 2 行の行列のいずれかになります。
%
%   出力 STR は、以下のフィールドを持つ構造体です。
%       mu      標本の平均
%       sigma   標本の標準偏差
%       P       範囲内の推定された確率
%       Pl      下限 L (下限の仕様) の推定された確率
%       Pu      上限 U (上限の仕様) の推定された確率
%       Cp      (U-L)/(6*sigma)
%       Cpl     (mu-L)./(3.*sigma)
%       Cpu     (U-mu)./(3.*sigma)
%       Cpk     min(Cpl, Cpu)
%
%   下限がない場合、SPECS の最初の要素に -Inf を使用します。
%   同様に、上限がない場合、2 番目の要素に Inf を使用します。
%
%   参考 CAPAPLOT, HISTFIT.


%   Copyright 2006-2009 The MathWorks, Inc. 
