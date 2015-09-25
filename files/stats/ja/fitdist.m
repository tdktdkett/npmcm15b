%FITDIST  データの確率分布
%
%   PD = FITDIST(X,DISTNAME) は、確率分布 DISTNAME を列ベクトル X のデータに
%   近似し、近似した分布を表すオブジェクト PD を返します。PD は、ProbDist クラス
%   から派生したクラス内のオブジェクトです。
%
%   DISTNAME は、ノンパラメトリックカーネル平滑化の分布を近似する場合は 
%   'kernel'、または、以下のパラメータ分布名のいずれかにすることができます。
%
%         'beta'                             ベータ
%         'binomial'                         二項
%         'birnbaumsaunders'                 Birnbaum-Saunders
%         'exponential'                      指数
%         'extreme value', 'ev'              極値
%         'gamma'                            ガンマ
%         'generalized extreme value', 'gev' 一般化極値
%         'generalized pareto', 'gp'         一般化パレート
%         'inversegaussian'                  逆ガウス
%         'logistic'                         ロジスティック
%         'loglogistic'                      対数ロジスティック
%         'lognormal'                        対数正規
%         'nakagami'                         Nakagami
%         'negative binomial', 'nbin'        負の二項
%         'normal'                           正規
%         'poisson'                          ポアソン
%         'rayleigh'                         レイリー
%         'rician'                           ライス (Rician)
%         'tlocationscale'                   t 分布の位置-スケール
%         'weibull', 'wbl'                   ワイブル
%
%   [PDCA,GN,GL] = FITDIST(X,DISTNAME,'BY',G) は、グループ変数 G を与え、指定
%   した分布を各グループからの X データに近似し、近似した確率分布オブジェクトの
%   セル配列 PDCA を返します。詳細は "help groupingvariable" を参照してください。
%   G は、さらに複数のグループ変数のセル配列にすることもできます。
%   GN は、グループラベルのセル配列です。GL は、グループ変数ごとに 1 列を持つ
%   グループ変数のラベルのセル配列です。
%
%   PD = FITDIST(..., 'NAME1',VALUE1,'NAME2',VALUE2,...) は、以下のリストから
%   選択されるオプション引数の名前と値の組み合わせを指定します。引数名は、
%   大文字小文字の区別がなく、部分一致で構いません。
%
%      名前          値
%      'censoring'    X の対応する要素が右側打ち切りの場合に 1、対応する
%                     要素が正しい観測の場合に 0 を含む X と同じサイズの
%                     論理ベクトルです。
%                     デフォルトは、すべて正しく観測された観測値です。
%                     打ち切りはすべての分布に対してサポートされていません。
%      'frequency'    X の対応する要素に対する非負の整数の頻度を含む X と同じ
%                     サイズのベクトルです。デフォルトは、X の 1 つの要素に
%                     対して 1 つの観測値です。
%      'options'      繰り返し近似アルゴリズムに対して制御パラメータを指定
%                     するために STATSET で作成される構造体です。
%
%   'binomial' 分布の場合のみ:
%      'n'            N パラメータ (試行回数) を指定する正の整数です。
%                     他の分布では使用できません。
%
%   'generalized pareto' 分布の場合のみ:
%      'theta'        一般化パレート分布に対する THETA (閾値) パラメータの
%                     値です。デフォルトは 0 です。
%                     他の分布では使用できません。
%
%   'kernel' 分布の場合のみ:
%      'kernel'     'normal' (デフォルト), 'box', 'triangle', 
%                   'epanechinikov' の中から選択される使用のためのカーネル
%                   平滑化のタイプ
%      'support'    密度が全体の実線を越える場合 'unbounded' (デフォルト)、
%                   正の値に制限する場合は 'positive'、または密度のサポートに
%                   対して上限値と下限値の有限を与える 2 要素のベクトルの
%                   いずれかです。
%      'width'      カーネル平滑化ウィンドウの帯域幅。デフォルトは、正規分布
%                   の密度を推定することに最適ですが、複数のモードのような
%                   特徴を示すものには、より小さい値を選択してもかまいません。
%
%   FITDIST は、欠損値として NaN を扱い、削除します。
%
%   例:
%        % カーネル平滑化密度推定を使用して MPG データを近似します。
%        load carsmall
%        ksd = fitdist(MPG,'kernel')
%
%        % 生産国ごとにそれぞれ固有のワイブル分布を近似します。
%        % データの足りない国の場合、セル配列は空です。
%        wd = fitdist(MPG,'weibull', 'by',Origin)
%
%   参考 PROBDIST, GROUPINGVARIABLE, MLE.


%   Copyright 2008-2009 The MathWorks, Inc.
