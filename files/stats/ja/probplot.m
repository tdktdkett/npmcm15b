%PROBPLOT  確率プロット
%
%   PROBPLOT(Y) は、データ Y の分布を正規分布と比較して、正規分布の確率
%   プロットを作成します。Y は、1 つのベクトル、または、各列に別の標本を
%   持つ行列です。プロットは Y の下位四分位と上位四分位と通して渡される
%   基準線を含んでおり、データが正規分布に従うかどうかを判定するために
%   役立ちます。PROBPLOT は、位置をプロットする中間確率を使用します。
%
%   PROBPLOT('DISTNAME',Y) は、指定した分布の確率プロットを作成します。
%   DISTNAME は、以下の分布のリストから選択される文字列です。
%
%       'exponential'                      指数
%       'extreme value' または 'ev'        極値
%       'lognormal'                        対数正規
%       'normal'                           正規
%       'rayleigh'                         レイリー
%       'weibull' または 'wbl'             ワイブル
%
%   PROBPLOT(Y,CENS,FREQ) または PROBPLOT('DISTNAME',Y,CENS,FREQ) は、
%   ベクトル Y が必要です。CENS は Y と同じサイズのベクトルで、右側打ち切り
%   となる観測に対して 1、正確に観測される観測に対して 0 とします。
%   FREQ は、Y と同じサイズのベクトルで、Y の対応する要素に対する整数の頻度です。
%
%   PROBPLOT(AX,Y) は、既存の確率プロットに対するハンドル AX を与え、Y の標本
%   に対してさらにラインを追加します。AX は、Axes の集合に対するハンドルです。
%
%   CENS と FREQ が指定されていない場合、データ点から観測数を取得するのと同様に、
%   データカーソルを使用しプロットから正確な値を読み取ってください。
%
%   PROBPLOT(...,'noref') は、基準線を省略します。
%
%   PROBPLOT(AX,PD) は、確率分布オブジェクト PD を与え、PD で指定された確率
%   分布を表すために AX で指定した座標軸に近似したラインを追加します。
%
%   PROBPLOT(AX,FUN,PARAMS) は、関数 FUN とパラメータの集合 PARAMS を与え、
%   AX で指定した Axes に対して近似したラインを追加します。FUN は、cdf 関数を
%   計算する関数のため、(@weibcdf のように) @ を使用して指定します。PARAMS は、
%   FUN を評価するために必要なパラメータの集合のため、セル配列、またはベクトルと
%   して指定します。関数は、最初の引数として X 値のベクトル、次にオプションの
%   パラメータを受け、X で評価される cdf のベクトルを返さなければなりません。
%
%   H=PROBPLOT(...) は、プロットしたラインのハンドルを返します。
%
%   y 軸のスケールは、選択した確率分布に基づきます。x 軸は、ワイブルと対数
%   正規分布の場合は対数スケール、他の分布の場合は線形スケールになります。
%   サイズ N の標本から I 番目に並べ替えられた値は、y 軸上の経験累積分布関数の
%   飛び値の中間に対するプロットです。打ち切られていないデータでは、中間は 
%   (I-0.5)/N です。打ち切られたデータでは、y 値の計算はより複雑になります。
%
%   例: 指数データを生成します。正規分布プロットは、よい近似を示しません。
%       指数分布は分布のワイブル群の一部であるため、ワイブル確率プロットは
%       より良い結果となります。
%       y = exprnd(5,200,1);
%       probplot(y);                      % 正規分布プロット
%       figure; probplot('weibull',y);    % ワイブル分布プロット
%
%   参考 NORMPLOT, WBLPLOT, ECDF.


%   Copyright 2003-2009 The MathWorks, Inc.
