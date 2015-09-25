%PLSREGRESS  部分最小二乗回帰
%
%   [XLOADINGS,YLOADINGS] = PLSREGRESS(X,Y,NCOMP) は、NCOMP の PLS 要素、
%   または、潜在因子を使って X 上で Y の部分最小二乗回帰を計算し、予測子と
%   応答負荷量を返します。X は、観測値に対応する行と変数の持つ予測変数の 
%   N×P の行列です。Y は、N×M の応答行列です。XLOADINGS は、予測負荷量の 
%   P×NCOMP の行列です。ここで、XLOADINGS の各行は、オリジナルの予測変数を
%   近似する PLS 要素の線形結合を定義する係数を含みます。YLOADINGS は、
%   応答負荷量の M×NCOMP の行列です。ここで、YLOADINGS の各行は、オリジナルの
%   応答変数を近似する PLS 要素の線形結合を定義する係数を含みます。
%
%   [XLOADINGS,YLOADINGS,XSCORES] = PLSREGRESS(X,Y,NCOMP) は、予測スコア、
%   すなわち、X の変数の線形結合である PLS 要素を返します。XSCORES は、
%   観測値に対応する行と要素に対応する列を持つ N×NCOMP の直交行列です。
%
%   [XLOADINGS,YLOADINGS,XSCORES,YSCORES] = PLSREGRESS(X,Y,NCOMP) は、
%   応答スコア、すなわち、最大共分散を持つ PLS 要素の XSCORES を持つ応答の
%   線形結合である応答スコアを返します。YSCORES は、観測値に対応する行と
%   要素に対応する列を持つ N×NCOMP の行列です。YSCORES は、直交でもなく、
%   正規化もされません。
%
%   PLSREGRESS は、SIMPLS アルゴリズムを使用し、中心化された変数 X0 と Y0 を
%   取得するために、最初に列の平均を引くことによって X と Y を中心にします。
%   しかし、列を再度スケーリングすることはありません。標準化された変数で部分
%   最小二乗回帰を実行するには、X と Y を正規化するために ZSCORE を使用して
%   ください。
%
%   NCOMP が省略された場合、デフォルト値は MIN(SIZE(X,1)-1, SIZE(X,2)) です。
%
%   スコア、負荷量、中心化された変数 X0 と Y0 間の関係は以下のとおりです。 
%
%      XLOADINGS = (XSCORES\X0)' = X0'*XSCORES,
%      YLOADINGS = (XSCORES\Y0)' = Y0'*XSCORES,
%
%   すなわち、XLOADINGS と YLOADINGS は、XSCORES における X0 と Y0 の回帰
%   係数で、XSCORES*XLOADINGS' と XSCORES*YLOADINGS' は、X0 と Y0 への 
%   PLS 近似です。PLSREGRESS は、まず、以下のように YSCORES を計算します。
%
%      YSCORES = Y0*YLOADINGS = Y0*Y0'*XSCORES,
%
%   しかし、便宜上、PLSREGRESS は、XSCORES'*YSCORES が下三角行列となるように、
%   XSCORES の前の列に関する YSCORES の各列を直交させます。
%
%   [XL,YL,XS,YS,BETA] = PLSREGRESS(X,Y,NCOMP,...) は、PLS 回帰係数 BETA を
%   返します。BETA は 1 番目の行の切片の項を含む (P+1)×M の行列です。すなわち、
%   Y = [ONES(N,1) X]*BETA + RESIDUALS と Y0 = X0*BETA(2:END,:) + RESIDUALS です。
%
%   [XL,YL,XS,YS,BETA,PCTVAR] = PLSREGRESS(X,Y,NCOMP) は、モデルで説明される
%   分散のパーセンテージを含む 2×NCOMP の行列 PCTVAR を返します。PCTVAR の 
%   1 番目の行は、各 PLS 要素により X で説明される分散のパーセンテージを含み、
%   2 番目の行は、Y で説明される分散のパーセンテージを含みます。
%
%   [XL,YL,XS,YS,BETA,PCTVAR,MSE] = PLSREGRESS(X,Y,NCOMP) は、0:NCOMP の
%   要素を持つ PLS モデルに対して推定される平均二乗誤差を含む 2×(NCOMP+1) 
%   の行列 MSE を返します。MSE の 1 番目の行は、X 内の予測変数に対する
%   平均二乗誤差を含み、2 番目の行は、Y 内の応答変数に対する平均二乗誤差を
%   含みます。
%
%   [XL,YL,XS,YS,BETA,PCTVAR,MSE] = PLSREGRESS(...,'PARAM1',val1,...) は、
%   MSE の計算を制御するためのオプションパラメータの名前/値の組み合わせを
%   指定することが可能です。パラメータは以下のとおりです。
%
%      'CV'      MSE を計算するために使用するメソッド。'CV' が正の整数 
%                K の場合、PLSREGRESS は K-分割交互検定を使用します。
%                交互検定の別のフォームを使用するには、'CV' を CVPARITTION を
%                使って作成した交互検定の区分に設定します。
%                'CV' が 'resubstitution' の場合、PLSREGRESS は交互検定を行わずに
%                モデルを近似し、平均二乗誤差を推定するために X と Y を使用します。
%                デフォルトは 'resubstitution' です。
%
%      'MCReps'  交互検定に対するモンテ・カルロの繰り返し数を示す正の整数。
%                デフォルト値は 1 です。
%                'CV' が 'resubstitution' の場合、'MCReps' は 1 でなければ
%                なりません。
%
%   [XL,YL,XS,YS,BETA,PCTVAR,MSE,STATS] = PLSREGRESS(X,Y,NCOMP,...) は、
%   以下のフィールドを含む構造体を返します。
%       W            PLS 重みの P×NCOMP の行列。すなわち、XSCORES = X0*W
%       T2           XSCORES 内の点ごとの T^2 統計量
%       Xresiduals   予測残差。すなわち、X0 - XSCORES*XLOADINGS'
%       Yresiduals   応答残差。すなわち、Y0 - XSCORES*YLOADINGS'
%
%   例: 10 要素の回帰を近似し、最大 10 要素を持つモデルに対する予測の 
%       MSE の交互検定の推定をプロットします。観測と 10 要素のモデルと
%       近似した応答をプロットします。
%
%      load spectra
%      [xl,yl,xs,ys,beta,pctvar,mse] = plsregress(NIR,octane,10,'CV',10);
%      plot(0:10,mse(2,:),'-o');
%      octaneFitted = [ones(size(NIR,1),1) NIR]*beta;
%      plot(octane,octaneFitted,'o');
%
%   参考 PRINCOMP, BIPLOT, CANONCORR, FACTORAN, CVPARTITION.


%   Copyright 2007-2008 The MathWorks, Inc.
