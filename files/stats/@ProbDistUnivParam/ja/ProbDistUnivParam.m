%ProbDistUnivParam  1 変量パラメトリック確率分布
%
%   ProbDistUnivParam オブジェクトは、1 変量のパラメトリック確率分布を表します。
%   コンストラクタを使ってパラメータ値を与えることで、または、分布をデータに
%   近似するための FITDIST 関数を使うことによって、このオブジェクトを作成する
%   ことができます。
%
%   PD = ProbDistUnivParam(DISTNAME,PARAMS) は、パラメータ PARAMS で 
%   DISTNAME という名前の確率分布を定義するオブジェクト PD を作成します。
%
%   PD = FITDIST(X,DISTNAME) は、ベクトル X 内のデータから推定されるパラメータで、
%   DISTNAME という名前の確率分布を定義するオブジェクト PD を作成します。
%
%   ProbDistUnivParam プロパティ:
%       DistName      - 分布名
%       InputData     - 分布を近似するために使用するデータを含む構造体
%       NLogL         - 近似したデータに対する負の対数尤度
%       NumParams     - パラメータの個数
%       ParamNames    - NumParams パラメータ名のセル配列
%       Params        - NumParams パラメータ値の配列
%       ParamIsFixed  - 推定ではなく、どのパラメータを修正するかを示す
%                       論理ベクトル
%       ParamDescription - パラメータを記述する NumParams 文字列のセル配列
%       ParamCov      - パラメータ値の共分散行列
%       Support       - 分布のサポートを記述する構造体
%
%       パラメータ値は、プロパティとしても与えられます。たとえば、PD が
%       正規分布を表す場合、PD.mu と PD.sigma は、mu と sigma パラメータの
%       値を与えるプロパティになります。
%
%   ProbDistUnivParam メソッド:
%      ProbDistUnivParam/ProbDistUnivParam - コンストラクタ
%      cdf            - 累積分布関数
%      icdf           - 逆累積分布関数
%      iqr            - 四分位範囲
%      mean           - 平均
%      median         - 中央値
%      paramci        - パラメータに対する信頼区間
%      pdf            - 確率密度関数
%      random         - 乱数生成
%      std            - 標準偏差
%      var            - 分散
%
%   参考 PROBDIST, PROBDISTPARAMETRIC, FITDIST.


%   Copyright 2008-2009 The MathWorks, Inc.
