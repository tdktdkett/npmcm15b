%PROCRUSTES  プロクラステス解析
%
%   D = PROCRUSTES(X, Y) は、行列 X の点ともっとも良く一致するように、
%   行列 Y の点の (変換、反射、直交回転、スケーリングなどの) 線形変換を
%   定義します。"適合度" の基準は、誤差の二乗和です。PROCRUSTES は、D に
%   この相違点の測定値を最小化した値を返します。D は、以下で与えられる 
%   X のスケールの基準で標準化されたものです。
%
%      sum(sum((X - repmat(mean(X,1), size(X,1), 1)).^2, 1))
%
%   すなわち、X の中心からの各要素の二乗和です。しかし、X が同じ点の繰り返し
%   を含む場合、誤差の二乗和は標準化されません。
%
%   X と Y は点 (行) の同じ数を持つと仮定され、PROCRUSTES は、Y の i 番目の点
%   と X の i 番目の点を一致させます。Y の点は、X の点より小さい次元 (列数) を
%   持つことができます。この場合、PROCRUSTES は、必要なときに Y に 0 の列を
%   加えます。
%
%   [D, Z] = PROCRUSTES(X, Y) は、変換した Y の値も返します。
%
%   [D, Z, TRANSFORM] = PROCRUSTES(X, Y) は、Y を Z に写像した変換の内容も
%   返します。TRANSFORM は、以下のフィールドを持つ構造体です。
%      c:  平行移動成分
%      T:  直交回転と反射成分
%      b:  倍率成分
%   これは Z = TRANSFORM.b * Y * TRANSFORM.T + TRANSFORM.c となります。
%
%   [...] = PROCRUSTES(..., 'Scaling',false) は、倍率成分を含まない、
%   すなわち、TRANSFORM.b == 1 の場合のプロクラステス解を計算します。
%   PROCRUSTES(..., 'Scaling',true) は、デフォルトの倍率成分を含む
%   プロクラステス解を計算します。
%
%   [...] = PROCRUSTES(..., 'Reflection',false) は、反射成分を含まない、
%   すなわち、DET(TRANSFORM.T) が 1 の場合のプロクラステス解を計算します。
%   PROCRUSTES(..., 'Reflection','best') は、デフォルトの 'best' として、
%   反射成分を含むか含まない最適近似のプロクラステス解を計算します。
%   PROCRUSTES(..., 'Reflection',true) は、解が反射成分を強制的に含むように、
%   すなわち DET(TRANSFORM.T) を -1 とします。
%
%   例:
%
%      % 2 次元のいくつかのランダムな点を作成します。
%      n = 10;
%      X = normrnd(0, 1, [n 2]);
%
%      % これらのいくつかの点に、回転、倍率、平行移動の変換を行い、
%      % ノイズを加えます。
%      S = [0.5 -sqrt(3)/2; sqrt(3)/2 0.5]; % 60 度回転
%      Y = normrnd(0.5*X*S + 2, 0.05, n, 2);
%
%      % Y を X に適合させ、オリジナルの X と Y と変換された Y を
%      % 表示します。
%      [d, Z, tr] = procrustes(X,Y);
%      plot(X(:,1),X(:,2),'rx', Y(:,1),Y(:,2),'b.', Z(:,1),Z(:,2),'bx');
%
%   参考 FACTORAN, CMDSCALE.


%   Copyright 1993-2009 The MathWorks, Inc.
