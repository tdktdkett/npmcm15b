%PRINCOMP  主成分分析
%
%   COEFF = PRINCOMP(X) は、N×P のデータ行列 X で主成分分析を実行し、
%   負荷量として知られる主成分係数を返します。X の行は観測に対応し、
%   列は変数です。COEFF は、各列が 1 つの主成分に対する係数を含む P×P の
%   行列です。列は、成分の分散の降べきの順になります。
%
%   PRINCOMP は、列の平均を引くことによって X を中心にしますが、X の列の
%   再スケールは行いません。標準化変数を持つ、すなわち相関に基づく PCA を
%   行なうには、PRINCOMP(ZSCORE(X)) を使用してください。共分散、または、
%   相関行列で直接 PCA を行なうには、PCACOV を使用してください。
%
%   [COEFF, SCORE] = PRINCOMP(X) は、主成分のスコア、すなわち、主成分
%   空間内での X の表現を返します。SCORE の行は観測に、列は成分に対応します。
%
%   [COEFF, SCORE, LATENT] = PRINCOMP(X) は、主成分分散、すなわち、LATENT に 
%   X の共分散行列の固有値を返します。
%
%   [COEFF, SCORE, LATENT, TSQUARED] = PRINCOMP(X) は、X の各観測に対する
%   ホテリングの T2 乗統計量を返します。
%
%   N <= P の場合、SCORE(:,N:P) と LATENT(N:P) は、0 である必要があり、
%   COEFF(:,N:P) の列は、X と直交する方向に定義されます。
%
%   [...] = PRINCOMP(X,'econ') は、必ずしも 0 でない、すなわち、N <= P の
%   場合の 1 番目の N-1 のみで、かつ COEFF と SCORE の対応する列である 
%   LATENT の要素のみを返します。これは、P >> N の場合にきわめて速くなります。
%
%   参考 BARTTEST, BIPLOT, CANONCORR, FACTORAN, PCACOV, PCARES, ROTATEFACTORS.


%   Copyright 1993-2008 The MathWorks, Inc.
