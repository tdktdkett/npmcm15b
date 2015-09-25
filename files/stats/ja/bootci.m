%BOOTCI  ブートストラップ信頼区間
%
%   CI = BOOTCI(NBOOT,BOOTFUN,...) は、関数 BOOTFUN で定義される統計量の 
%   95% の BCa ブートストラップ信頼区間を計算します。NBOOT は、計算で使われる
%   ブートストラップデータの標本数を示す正の整数です。BOOTFUN は、@ 付きで
%   指定される関数ハンドルのため、スカラを返さなければなりません。BOOTCI の 
%   3 番目以降の入力引数は、BOOTFUN への入力引数を作成するのに使われるデータ 
%   (スカラ、列ベクトル、または行列) です。BOOTCI は、非スカラデータの引数 
%   (これらは同じ行数でなければなりません) の行から再配置してサンプリング
%   することで、ブートストラップの各標本を作成します。BOOTFUN に渡される
%   スカラデータは変更されません。CI は、信頼区間の下限と上限を含むベクトルです。
%
%   CI = BOOTCI(NBOOT,{BOOTFUN,...},'alpha',ALPHA) は、関数 BOOTFUN で定義
%   される統計量の 100*(1-ALPHA)% の BCa ブートストラップ信頼区間を計算します。
%   ALPHA は、0 と 1 の間のスカラです。ALPHA のデフォルト値は 0.05 です。
%   セル配列は BOOTFUN をグループ化するため、その引数は入力を作成するために
%   使われます。ALPHA と BOOTCI の他の引数は、セル配列の外側に指定します。
%
%   CI = BOOTCI(NBOOT,{BOOTFUN,...},...,'type',TYPE) は、関数 BOOTFUN で
%   定義される統計量のブートストラップ信頼区間を計算します。
%   TYPE は、信頼区間を計算する異なる方法を指定する信頼区間のタイプです。
%   TYPE は、以下のいずれかから選択する文字列です。
%       'norm' or 'normal':               ブートストラップされたバイアスと
%                                         標準誤差を持つ正規の近似された区間
%       'per' または 'percentile':        基本の等百分位法
%       'cper' または 'corrected percentile': バイアスが修正された等百分位法
%       'bca' :                           バイアスが修正され高速化された
%                                         等百分位法
%       'stud' または 'student':          スチューデント化された信頼区間
%   TYPE のデフォルト値は 'bca' です。
%
%   CI = BOOTCI(NBOOT,{BOOTFUN,...},...,'type','stud','nbootstd',NBOOTSTD) 
%   は、関数 BOOTFUN で定義される統計量のスチューデント化されたブートストラップ
%   信頼区間を計算します。ブートストラップ統計量の標準誤差は、NBOOTSTD のブート
%   ストラップデータ標本を持つブートストラップを使って推定されます。
%   NBOOTSTD は正の整数値です。NBOOTSTD のデフォルト値は 100 です。
%
%   CI = BOOTCI(NBOOT,{BOOTFUN,...},...,'type','stud','stderr',STDERR) は、
%   関数 BOOTFUN で定義される統計量のスチューデント化されたブートストラップ
%   信頼区間を計算します。ブートストラップ統計量の標準誤差は、関数 STDERR で
%   評価されます。STDERR は、@ を使って作成される関数ハンドルです。STDERR は、
%   BOOTFUN と同じ引数を与えるため、BOOTFUN で計算された統計量の標準誤差が
%   返されます。
%
%   例:
%     統計的工程管理の能力指数に対する信頼区間を計算します。
%          y = normrnd(1,1,30,1);                  % シミュレーションした工程データ
%          LSL = -3;  USL = 3;                     % 工程の仕様
%          capable = @(x) (USL-LSL)./(6* std(x));  % 工程能力
%          bootci(2000,capable, y)                 % Bca 信頼区間
%          bootci(2000,{capable, y},'type','stud') % スチューデント化された信頼区間
%
%   参考: BOOTSTRP, JACKKNIFE.


% Copyright 2005-2009 The MathWorks, Inc. 
