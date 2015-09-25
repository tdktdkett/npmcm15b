% PCACOV  共分散行列を使った主成分分析
%
%   COEFF = PCACOV(V) は、P x P の共分散行列 V で主成分分析を実行し、
%   別名負荷量とも呼ばれる主成分係数を返します。COEFF は、各列に 1 つの
%   主成分に対する係数を含む P x P の行列です。列は、成分の分散の降べきの
%   順になります。
%
%   PCACOV は、1 つの分散を持つために V を標準化しません。標準化された変数で 
%   PCA を実行するには、V の代わりに相関行列 R = V./(SD*SD') を使用してください。
%   ここで、SD = sqrt(diag(V)) です。
%
%   [COEFF, LATENT] = PCACOV(V) は、主成分の分散、すなわち V の固有値を返します。
%
%   [COEFF, LATENT, EXPLAINED] = PCACOV(V) は、各主成分で説明される全分散の
%   パーセンテージを返します。
%
%   参考 BARTTEST, BIPLOT, FACTORAN, PCARES, PRINCOMP, ROTATEFACTORS.


%   Copyright 1993-2009 The MathWorks, Inc.
