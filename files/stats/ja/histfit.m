%HISTFIT  正規確率密度を重ね合わせたヒストグラム
%
%   HISTFIT(DATA,NBINS) は、データから推定されたパラメータで正規分布関数と共に
%   ベクトル DATA 内の値のヒストグラムをプロットします。NBINS は、ヒストグラム
%   のバーの数です。引数を設定しないで使用すると、NBINS は DATA 内の要素数の
%   平方根を計算した値を使います。
%
%   HISTFIT(DATA,NBINS,DIST) は、DIST 分布からの密度でヒストグラムをプロット
%   します。DIST は以下の値を指定することができます。
%
%         'beta'                             ベータ
%         'birnbaumsaunders'                 Birnbaum-Saunders
%         'exponential'                      指数
%         'extreme value' または 'ev'        極値
%         'gamma'                            ガンマ
%         'generalized extreme value' 'gev'  一般化極値
%         'generalized pareto' または 'gp'   一般化パレート (閾値 0)
%         'inverse gaussian'                 逆ガウス
%         'logistic'                         ロジスティック
%         'loglogistic'                      対数ロジスティック
%         'lognormal'                        対数正規
%         'negative binomial' または 'nbin'  負の二項
%         'nakagami'                         Nakagami
%         'normal'                           正規
%         'poisson'                          ポアソン
%         'rayleigh'                         レイリー
%         'rician'                           ライス (Rician)
%         'tlocationscale'                   t 分布の位置-スケール
%         'weibull' または 'wbl'             ワイブル
%
%   H = HISTFIT(...) は、プロットされたラインのハンドルを要素とするベクトルです。
%   H(1) は、ヒストグラムのハンドル番号で、H(2) は、密度曲線のハンドル番号です。


%   Copyright 1993-2009 The MathWorks, Inc. 
