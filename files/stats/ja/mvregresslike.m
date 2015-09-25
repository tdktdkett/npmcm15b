%MVREGRESSLIKE  多変量回帰に対する負の対数尤度
%
%   NLOGL=MVREGRESSLIKE(X,Y,BETA,SIGMA,ALG) は、X 内の予測変数についての 
%   N×D 行列の Y 内の多変量観測の多変量回帰に対する負の対数尤度関数 NLOGL を
%   計算し、係数推定値の P×1 の列ベクトル BETA と Y の行の共分散を指定する 
%   D×D の行列 SIGMA に対して評価されます。ALG は、回帰の近似で使用される
%   アルゴリズムを指定します (以下を参照)。X または Y の NaN 値は、欠損値
%   として受け入れます。X に 欠損値を持つ観測値は無視されます。Y 内の欠損値の
%   扱いは、アルゴリズムに依存します。
%
%   Y は、D-次元の多変量観測の N×D の行列です。X は、行列かセル配列のいずれか
%   になります。D=1 の場合、X は、予測変数の N×P の計画行列になります。
%   D の任意の値において、X は、各セルが 1 つの多変量観測に対して D×P の
%   計画行列を含む長さ N のセル配列にもなります。すべての観測が同じ D×P の
%   計画行列の場合、X は単一のセルになります。
%
%   ALG は、係数推定値 BETA を得るために MVREGRESS で使用されるアルゴリズムと
%   一致する必要があり、以下の値のいずれかでなければなりません。
%         'ecm'    ECM アルゴリズム
%         'cwls'   条件付き SIGMA によって重み付けされる最小二乗
%         'mvn'    Y 内に欠損値を持つ行を省略した後で計算される多変量正規の
%                  推定量
%
%   [NLOGL,VARPARAM]=MVREGRESSLIKE(...) は、パラメータ推定 BETA の推定された
%   共分散行列も返します。
%
%   [NLOGL,VARPARAM]=MVREGRESSLIKE(...,VARTYPE,VARFORMAT) は、VARPARAM の
%   タイプと形式を指定します。VARTYPE は、ヘシアンか観測情報を使用する場合は 
%   'hessian' (デフォルト) で、フィッシャーか予測された情報を使用する場合は 
%   'fisher' のいずれかです。VARFORMAT は、BETA だけに対して VARPARAM を
%   計算する場合は 'beta' (デフォルト) で、BETA と SIGMA の両方に対して 
%   VARPARAM を計算する場合は 'full' のいずれかです。'hessian' メソッドは、
%   欠損データのために増加した不確実性を考慮します。'fisher' メソッドは、
%   完全なデータの予測された情報を使用し、欠損データのための不確実性を
%   含みません。
%
%   参考 MVREGRESS, REGSTATS, MANOVA1.


%    Copyright 2006-2008 The MathWorks, Inc.
