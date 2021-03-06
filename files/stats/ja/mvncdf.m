%MVNCDF  多変量正規累積分布関数 (cdf)
%
%   Y = MVNCDF(X) は、X の各行で評価される、0 の平均と単位共分散行列を持つ
%   多変量正規分布の累積確率を返します。N 行 D 列の行列 X の行は観測、または点に
%   対応し、列は変数、または座標に対応します。Y は、N 行 1 列のベクトルです。
%
%   Y = MVNCDF(X,MU,SIGMA) は、X の各行で評価される、平均 MU と共分散 SIGMA 
%   を持つ多変量正規分布の累積確率を返します。MU は 1 行 D 列のベクトルで、
%   SIGMA は D 行 D 列の対称な正定行列です。MU はスカラ値にすることも可能です。
%   MVNCDF は X のサイズと一致するよう複製します。共分散行列が対角行列で、対角に
%   沿った分散と対角でない 0 の共分散を含む場合、SIGMA は、対角成分のみが
%   含まれるように 1 行 D 列の行列を指定することができます。SIGMA のみを指定する
%   場合は、デフォルト値を使用するために、MU に対して空行列を渡してください。
%
%   多変量正規として分布した乱数ベクトル V が X で定義される多変量正規累積
%   分布は、上限を持つ半無限の矩形範囲、すなわち 
%   Pr{V(1)<=X(1), V(2)<=X(2), ... V(D)<=X(D)} に入ります。
%
%   Y = MVNCDF(XL,XU,MU,SIGMA) は、それぞれ XL と XU で定義された上限と下限を
%   持つ (D>2 の場合、超矩形となる) 矩形全体で評価される、多変量正規累積分布を
%   返します。
%
%   [Y,ERR] = MVNCDF(...) は、Y に誤差の推定を返します。2 変数と 3 変数の分布
%   の場合、MVNCDF は、リファレンスで説明するように Drezner と Wesolowsky と 
%   Genz が開発した手法に基づく t 密度の変換で適応求積法を使用します。これらの
%   場合のデフォルトの絶対許容誤差は、1e-8 です。4 次元以上の場合、MVNCDF は、
%   リファレンスで説明するように Genz と Bretz が開発した手法に基づく準モンテ
%   カルロの積分アルゴリズムを使用します。これらの場合のデフォルトの絶対許容誤差は、
%   1e-4 です。1 変量分布で SIGMA が対角行列として指定された場合、数値積分は
%   使用されず、エラーとして NaN を返します。
%
%   [...] = MVNCDF(...,OPTIONS) は、D > 1 で対角行列として指定されない場合に、
%   Y を計算するために使われる数値積分に対する制御パラメータを指定します。
%   この引数は、STATSET の呼び出しで作成されます。STATSET パラメータの選択は
%   以下のとおりです。
%
%         'TolFun'      - 最大絶対許容誤差。デフォルトは、D < 4 の場合 
%                         1e-8 で、D >= 4 の場合 1e-4 です。
%         'MaxFunEvals' - D >= 4 の場合に受け入れる被積分関数の解の最大数。
%                         デフォルトは 1e7 です。D < 4 の場合無視されます。
%         'Display'     - 表示出力レベル。選択肢は、'off' (デフォルト), 
%                         'iter', 'final' です。D < 4 の場合無視されます。
%
%   例:
%
%      mu = [1 -1]; Sigma = [.9 .4; .4 .3];
%      [X1,X2] = meshgrid(linspace(-1,3,25)', linspace(-3,1,25)');
%      X = [X1(:) X2(:)];
%      p = mvncdf(X, mu, Sigma);
%      surf(X1,X2,reshape(p,25,25));
%
%   参考 MVTCDF, MVNPDF, MVNRND, NORMCDF.


%   Copyright 2005-2009 The MathWorks, Inc.
