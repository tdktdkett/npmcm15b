%CONTROLCHART  シューハート管理図
%
%   CONTROLCHART(X) は、X のデータの xbar 管理図を生成します。X が行列の
%   場合、その行は時刻順で、同じ時間で繰り返される観測を含む必要があります。
%   X が timeseries オブジェクトの場合、各時刻での標本は、繰り返される観測を
%   含む必要があります。プロットは、工程が管理下にある場合に定義する中心線 
%   (CL) と上方と下方の管理限界 (LCL と UCL) と共に、各サブグループ、または
%   繰り返される観測の集合の平均を表示します。管理限界は、サブグループの
%   標準偏差の平均から推定されるシグマを持つ 3-シグマ限界です。
%
%   CONTROLCHART(X,G) は、測定のベクトル X と、カテゴリ変数、ベクトル、
%   文字配列、または文字列のセル配列であるグループ化の変数 G を受け入れます。
%   G の同じ値を共有する連続的な X の値は、サブグループになるよう定義されます。
%   xbar 管理図はサブグループの平均値をプロットします。サブグループは、
%   異なる観測数を持ちます。(X が行列の場合は G も受け入れますが、軸に
%   ラベル付けをするためだけに使われ、グループ化を変更するためには使われません)
%
%   プロットにおいて、制御できない点は、赤い丸印で描かれます。データの
%   カーソルモードが有効になるため、任意のデータ点をクリックすると、
%   その点についての情報を表示します。
%
%   [STATS,PLOTDATA]=CONTROLCHART(...) は、サブグループの統計量とパラメータ
%   推定の構造体 STATS とプロット値の構造体 PLOTDATA を返します。PLOTDATA は、
%   各管理図に対して 1 つの要素を持つ構造体です。STATS と PLOTDATA のフィールドは、
%   管理図のタイプに依存します。
%
%   CONTROLCHART(..., 'PARAM1',val1,'PARAM2',val2,...) は、以下のパラメータの
%   名前/値の組み合わせのいくつかを指定します。
%
%      'charttype'  以下の中から選択される管理図タイプ名:
%              'xbar'  X-bar または平均
%              's'     標準偏差
%              'r'     範囲
%              'ewma'  指数的な重み付き移動平均
%              'i'     個々の観測
%              'mr'    個々の観測の移動範囲
%              'ma'    個々の観測の移動平均
%              'p'     不良率
%              'np'    不良個数
%              'u'     単位当たりの不良
%              'c'     不良カウント
%                   代わりに、このパラメータは複数の互換性のある管理図タイプ
%                   をリストするセル配列にすることもできます。互換性のある
%                   管理図タイプは、次のとおりです。XBAR, S, R, EWMA; 
%                   I, MR, MA; P, NP; U, C;
%      'display'    管理図を表示する 'on' (デフォルト) 、または、表示を
%                   省略する 'off' のいずれか。
%      'label'      サブグループ毎に 1 つの文字列配列、または文字列のセル
%                   配列。このラベルは、プロット上の点に対するデータカーソルの
%                   一部として表示されます。
%      'lambda'     現在の予測測値が EWMA プロット内の過去の観測値にどの
%                   くらい影響されるかを制御する 0 と 1 の間のパラメータ。
%                   LAMBDA の値を高くすると、過去の観測により少ない重みを、
%                   現在の観測により多くの重みを与えます。デフォルトは 0.4 です。
%      'limits'     下方管理限界、中心線、上方管理限界の値を指定する 3 要素
%                   ベクトル。デフォルトは、推定されるシグマ値をもとに中心線が
%                   推定され、管理限界が計算されます。複数の管理図タイプがある
%                   場合は許可されません。
%      'mean'       工程平均の値、または X から平均を推定するための空の値 
%                   (デフォルト)。これは、P と NP 管理図の P パラメータ、
%                   U と C 管理図のための単位毎の平均不良と他の管理図の
%                   正規の MU パラメータです。
%      'nsigma'     中央線から管理限界へのシグマの倍数。デフォルトは 3 です。
%      'parent'     管理図プロットを表示する Axes のハンドル。デフォルトは、
%                   新規 Figure に作成される座標軸です。
%                   複数の管理図タイプがある場合は許可されません。
%      'rules'      管理ルール名、または複数の管理ルール名を含むセル配列。
%                   これらのルールは、管理限界と共に、制御できない点に印を
%                   付けるかどうかを決定します。デフォルトでは任意の管理
%                   ルールを適用せず、点が制御できないかどうかを決定する
%                   ために管理限界のみ使用します。詳細は "help controlrules" 
%                   を参照してください。管理ルールは、変化量 ('r','s') よりも
%                   プロセスレベル ('xbar','i','c','u','p','np') を測定する
%                   管理図に適用され、移動統計量 ('ma','mr','ewma') に基づく
%                   管理図には適用されません。
%      'sigma'      サブグループ内の平均の標準偏差を使用するには 'std' 
%                   (デフォルト)、平均のサブグループ範囲を使用するには 'range'、
%                   併合された分散の平方根を使用するには 'variance' から
%                   選択されたシグマに対する値、またはシグマを推定する手法の
%                   いずれか。サブグループ内に存在しないデータに対して 
%                   I, MR, MA のいずれかの管理図を作成する場合、推定は常に
%                   移動平均に基づきます。
%      'specs'      仕様限界を指定するベクトル。一般的に、これは上限と下限の
%                   仕様限界の 2 要素のベクトルです。仕様限界は、一般的に
%                   個々の測定に適用するため、このパラメータは、主に 
%                   'i' 管理図に適しています。これらの限界は、'r', 's', 'mr' 
%                   のいずれかの管理図にはプロットできません。
%      'unit'       P と NP 管理図で検査された品の総数と、U と C 管理図に
%                   対して検査された単位のサイズ。
%                   いずれの場合も、X は欠陥の数、または見つかった欠陥数の
%                   カウントでなければなりません。
%                   デフォルトは、U と C 管理図に対して 1 です。
%                   この引数は、P と NP 管理図で必要です (デフォルトでは
%                   ありません)。
%      'width'      MR と MA 管理図の移動の範囲と平均を計算し、I, MR, MA 
%                   管理図でシグマ推定を計算するために使われるウィンドウ幅。
%                   デフォルトは 5 です。
%
%   例: PARTS データに対する X-bar と R 管理図を作成します。
%       load parts
%       st = controlchart(runout,'chart',{'xbar' 'r'});
%       fprintf('Parameter estimates:  mu=%g, sigma=%g\n',st.mu,st.sigma);
%
%   参考 CONTROLRULES.


%   Copyright 2006-2008 The MathWorks, Inc. 
