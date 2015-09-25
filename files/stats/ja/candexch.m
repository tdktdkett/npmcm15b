%CANDEXCH  行交換を使用した候補集合からの D-最適化計画
%
%   RLIST = CANDEXCH(C,NROWS) は、行交換アルゴリズムを使用して、候補集合 
%   C から D-最適化計画を設計します。C は、各N 点で、P モデル項目の値を
%   含む N×P 行列です。NROWS は、計画で必要な行数です。RLIST は、選択行を
%   表示する長さ NROWS のベクトルです。
%
%   関数 CANDEXCH は、出発点となる計画 X をランダムに選択し、行交換アルゴリズム
%   を使用して、X の行を C の行と繰り返し置き換えて、X'* X の行列式を改良します。
%
%   RLIST = CANDEXCH(C,NROWS,'PARAM1',VALUE1,'PARAM2',VALUE2,...) は、
%   パラメータ/値の組を設定して、計画の作成を更に制御します。利用可能な
%   パラメータは、以下のとおりです。
%
%      パラメータ  値
%      'display'    繰り返し回数 (デフォルト = 'on') の表示を制御するため
%                   に、'on' あるいは 'off' のいずれかとなります。
%      'init'       NROWS×P 行列としての初期設計 (デフォルトは、C の行の
%                   ランダムなデータです)。
%      'maxiter'    最大繰り返し回数 (デフォルト = 10)。
%      'start'      計画に含めるために修正した計画ポイント NOBS の集合を
%                   指定する NOBS×P 行列 (デフォルトは空) の因子の設定行列。
%                   CANDEXCH 関数は、'start' の設計に追加する NROWS-NOBS の
%                   行を検出します。
%      'tries'      おそらく最初を除く各試行に対してランダムポイントを
%                   使用し、新規開始点から設計の生成を試行する回数 (デフォルト 1)。
%
%   関数 ROWEXCH は、また、行交換アルゴリズムを使用して D-最適計画を生成しますが、
%   指定したモデルに適切な候補集合も生成します。DAUGMENT 関数は、座標交換
%   アルゴリズムを使用して、修正した計画ポイントの集合を拡大します。一方、
%   'start' パラメータは、行交換アルゴリズムを使用して、同じ機能を提供します。
%
%   例: 候補集合に制限がある場合、D-最適計画を作成します。
%       そのため、関数 ROWEXCH は適切ではありません。
%      F = (fullfact([5 5 5])-1)/4;   % 単位立方体での要因の設定
%      T = sum(F,2)<=1.51;            % 制限に適合する行の検出
%      F = F(T,:);                    % これらの行のみ除去
%      C = [ones(size(F,1),1) F F.^2];% 定数とすべての 2 乗の項を含む
%                                     % モデル項の計算
%      R = candexch(C,12);            % D-最適 12 点データの検出
%      X = F(R,:);                    % 要因の設定の取得
%
%   参考 CANDGEN, ROWEXCH, CORDEXCH, DAUGMENT, X2FX.


%   Copyright 1993-2008 The MathWorks, Inc. 
