%REGSTATS  線形モデルに対する回帰診断
%
%   REGSTATS(RESPONSES,DATA,MODEL) は、複数の線形モデルを使用して、行列 
%   DATA の値でベクトル RESPONSES の測定の回帰を求めます。
%   関数は、ユーザインタフェースを作成し、チェックボックス群に診断統計量を
%   表示し、指定した変数名でベースワークスペースに保存します。MODEL は、
%   回帰モデルの次数を制御します。デフォルトでは、REGSTATS は、定数項を持つ
%   線形加算モデルに対する設計行列を返します。
%
%   オプションの入力 MODEL は、どの計画行列を DATA から作成するかを指定します。
%   計画行列は、各観測に対する項の値の行列です。MODEL は、以下の文字列の
%   いずれかになります。
%
%     'linear'        定数と線形項 (デフォルト)
%     'interaction'   定数、線形、相互作用項
%     'quadratic'     定数、線形、相互作用、二乗項
%     'purequadratic' 定数、線形、二乗項
%
%   さらに、MODEL は、X2FX 関数に入力されるようなモデルの項の行列です。
%   この行列の説明と、項が現れる順番の説明については、X2FX を参照してください。
%   定数項のないものを含む他のモデルを指定するには、この行列を使用することが
%   可能です。
%
%   STATS=REGSTATS(RESPONSES,DATA,MODEL,WHICHSTATS) は、WHICHSTATS にリスト
%   された統計量を含む出力構造体 STATS を作成します。WHICHSTATS は、'leverage' の
%   ような単一の文字列、あるいは、{'leverage' 'standres' 'studres'} のような
%   文字列のセル配列のいずれかになります。デフォルトでは、REGSTATS はすべての
%   統計量を返します。有効な統計量の文字列は以下のとおりです。
%
%      名前          意味
%      'Q'           計画行列の QR 分解からの Q
%      'R'           計画行列の QR 分解からの R
%      'beta'        回帰係数
%      'covb'        回帰係数の共分散
%      'yhat'        応答データの近似した値
%      'r'           残差
%      'mse'         平均二乗誤差
%      'rsquare'     決定係数の統計量
%      'adjrsquare'  調整決定係数の統計量
%      'leverage'    レバレッジ
%      'hatmat'      Hat (射影) 行列
%      's2_i'        Delete-1 分散
%      'beta_i'      Delete-1 係数
%      'standres'    標準化された残差
%      'studres'     スチューデント化された残差
%      'dfbetas'     回帰係数のスケールされた変化
%      'dffit'       近似した値における変化
%      'dffits'      近似した値におけるスケールされた変化
%      'covratio'    共分散の変化
%      'cookd'       クックの距離
%      'tstat'       係数に対する t 統計量
%      'fstat'       F 統計量
%      'dwstat'      ダービン-ワトソン統計量
%      'all'         上記の統計量をすべて生成する
%
%   注意: F 統計量とその p-値は、モデルが定数項を含み、それらは定数を持たない
%   モデルに対して正しくないという仮定の下で計算されます。決定係数の値は、
%   総二乗和への 1 から二乗和誤差を引いたものです。この値は、データに対する
%   近似を行なわないモデルを示す定数を持たないモデルに対して負になります。
%
%   例:Hald データに対する残差と近似した値をプロットします。
%      load hald
%      s = regstats(heat,ingredients,'linear',{'yhat','r'});
%      scatter(s.yhat,s.r)
%      xlabel('Fitted Values'); ylabel('Residuals');
%
%   参考 X2FX, REGRESS, STEPWISE, LEVERAGE.


%   Copyright 1993-2008 The MathWorks, Inc.
