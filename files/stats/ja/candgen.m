% CANDGEN   D-最適化計画のための候補集合の作成
%
%   XCAND = CANDGEN(NFACTORS,MODEL) は、要因 NFACTORS と モデル MODEL を
%   用いて、D-最適計画に適切な候補集合を生成します。出力行列 XCAND は、
%   各行を N 個の候補点の 1 つの座標を表す、N×NFACTORS の行列です。
%   MODEL は、つぎの文字列のいずれかとなります。
%
%     'linear'          定数と線形項 (デフォルト)
%     'interaction'     定数、線形、クロス積の項
%     'quadratic'       相互作用項と 2 乗項の和
%     'purequadratic'   定数、線形、および、2 乗の項
%
%   あるいは、MODEL は、関数 X2FX で使用するための項の定義の行列になります。
%
%   [XCAND,FXCAND] = CANDGEN(NFACTORS,MODEL) は、要因の値 XCAND の行列と
%   項の値 FXCAND の行列の両方を出力します。後者は、D-最適化計画を生成
%   するための CANDEXCH への入力となることができます。
%
%   [...] = CANDGEN(NFACTORS,MODEL,'PARAM1',VALUE1,'PARAM2',VALUE2,...)
%   は、パラメータ/値の組み合わせ設定を通し、候補の設定の生成に関して
%   さらに制御することができます。有効なパラメータは、つぎの通りです。
%
%      パラメータ    値
%      'bounds'      2×NFACTORS の行列として指定される各要因の下限と上限。
%                    あるいは、この値は、対応する要因の指定可能な値の
%                    ベクトルを指定する各要素となる NFACTORS 要素を含む
%                    セル配列になります。
%      'levels'      各要因のレベル数のベクトル
%      'categorical' カテゴリ予測子のインデックス
%
%   ROWEXCH は、関数 CANDGEN を使用して、候補集合を自動的に生成し、関数
%   CANDEXCH を使用して、D-最適化計画を作成します。デフォルトの候補集合を
%   修正したい場合、これらの関数を別々に呼び出すことが望まれる場合も
%   あります。
%
%   参考 ROWEXCH, CANDEXCH, X2FX.


%   Copyright 1993-2007 The MathWorks, Inc. 
