%ProbDistUnivKernel  1 変量カーネル確率分布
%
%   ProbDistUnivKernel オブジェクトは、カーネル平滑化で定義された 1 変量の
%   ノンパラメトリック確率分布を表します。FITDIST 関数を呼び出すことで、
%   または、クラスのコンストラクタを呼び出すことでこのオブジェクトを作成する
%   ことができます。
%
%   ProbDistUnivKernel プロパティ:
%       DistName      - 分布名 'kernel'
%       InputData     - 分布を近似するために使用するデータを含む構造体
%       NLogL         - 近似したデータに対する負の対数尤度
%       Support       - 分布のサポートを記述する構造体
%       Kernel        - カーネル平滑化関数名
%       BandWidth     - 平滑化カーネルの帯域幅
%
%   ProbDistUnivKernel メソッド:
%      ProbDistUnivKernel/ProbDistUnivKernel - コンストラクタ
%      cdf            - 累積分布関数
%      icdf           - 逆累積分布関数
%      iqr            - 四分位範囲
%      median         - 中央値
%      pdf            - 確率密度関数
%      random         - 乱数生成
%
%   参考 FITDIST, PROBDIST, PROBDISTKERNEL, KSDENSITY.


%   Copyright 2008-2009 The MathWorks, Inc.
