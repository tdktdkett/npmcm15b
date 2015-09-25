%BIPLOT  変数/因子の係数とスコアのバイプロット
%
%   BIPLOT(COEFS) は、行列 COEFS 内の係数のバイプロットを作成します。
%   バイプロットは、COEFS が 2 列の場合は 2D、3 列の場合は 3D になります。
%   COEFS は、通常、PRINCOMP または PCACOV で作成される主成分要素係数、
%   または、FACTORAN または NNMF で推定される荷重因子を含みます。
%   バイプロット内の軸は、ベクトルとして表される主成分または潜在因子 
%   (COEFS の列) と観測変数 (COEFS の行) を表します。
%
%   BIPLOT(COEFS, ..., 'Scores', SCORES) は、COEFS とバイプロット内の行列 
%   SCORES のスコアの両方をプロットします。SCORES は、通常、PRINCOMP で
%   作成された主成分スコア、または、FACTORAN で推定された因子スコアを含みます。
%   各観測 (SCORES の行) は、バイプロットの点として表されます。
%
%   バイプロットは、最初の 2 つまたは 3 つの主成分に影響する各変数の値の
%   大きさと符号と、各観測がこれらの成分の項目をどのように表しているかを
%   可視化することができます。プロットから正確な値を確認するには、データ
%   カーソルを使用してください。
%
%   BIPLOT は、正の COEFS の最も大きな値を持つ要素に注目し、符合規則を
%   課します。
%
%   BIPLOT(COEFS, ..., 'VarLabels',VARLABS) は、文字配列またはセル配列 
%   VARLABS のテキストで各ベクトル (変数) にラベルを付けます。
%
%   BIPLOT(COEFS, ..., 'Scores', SCORES, 'ObsLabels', OBSLABS) は、データ
%   カーソルを表示するときの観測名として、文字配列またはセル配列 OBSLABS 内の
%   テキストを使用します。
%
%   BIPLOT(COEFS, ..., 'Positive', true) は、バイプロットを正の四分円 (2D) 
%   または八分円 (3D) に制限します。BIPLOT(COEFS, ..., 'Positive', false) は、
%   デフォルトで、すべての座標に対して範囲 +/- MAX(COEFS(:)) 上にバイプロットを
%   作成します。
%
%   BIPLOT(COEFFS, ..., 'PropertyName',PropertyValue, ...) は、BIPLOT で
%   作成されるすべての line グラフィックスオブジェクトに対して、指定した
%   プロパティ値にプロパティを設定します。
%
%   H = BIPLOT(COEFS, ...) は、BIPLOT で作成されるグラフィックスオブジェクト
%   のハンドルの列ベクトルを返します。H には、変数 (line ハンドル、マーカの
%   ハンドル、テキストのハンドル)、観測値 (存在する場合はマーカのハンドル)、
%   軸の line にそれぞれ対応するハンドルがこの順番で含まれます。
%
%   例:
%
%      load carsmall
%      X = [Acceleration Displacement Horsepower MPG Weight];
%      X = X(all(~isnan(X),2),:);
%      [coefs,score] = princomp(zscore(X));
%      vlabs = {'Accel','Disp','HP','MPG','Wgt'};
%      biplot(coefs(:,1:3), 'scores',score(:,1:3), 'varlabels',vlabs);
%
%   参考 FACTORAN, NNMF, PRINCOMP, PCACOV, ROTATEFACTORS.


%   Copyright 1993-2009 The MathWorks, Inc. 
