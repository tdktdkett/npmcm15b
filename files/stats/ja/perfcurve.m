%PERFCURVE  分類器の出力に対する受信者動作特性 (ROC) 曲線または他の性能曲線の計算
%
%   [X,Y] = PERFCURVE(LABELS,SCORES,POSCLASS) は、true のクラスのラベル 
%   LABELS を与え、分類器の予測ベクトル SCORES に対する ROC 曲線を計算します。
%   ラベルは、数値ベクトル、論理ベクトル、文字行列、文字列のセル配列、または
%   カテゴリのベクトルにすることができます (groupingvariable のヘルプを参照)。
%   SCORES は、いくつかのデータに対する分類器で返されるスコアの数値ベクトルです。
%   このベクトルは、LABELS と同じ要素数でなければなりません。POSCLASS は、
%   数値 (数値 LABELS の場合) または文字のいずれかの陽性のクラスのラベル 
%   (スカラ) です。指定した陽性のクラスは、入力のラベルの配列に与えなければ
%   なりません。戻り値 X と Y は、性能曲線に対する座標で、PLOT(X,Y) で
%   表示することができます。デフォルトでは、X は偽陽性率 FPR (同等に、fallout 
%   または 1 - 特異度) で、Y は真陽性率 TPR (同等に、recall または感度) です。
%
%   [X,Y,THRE] = PERFCURVE(LABELS,SCORES,POSCLASS) は、X と Y の計算した値に
%   対して分類器のスコアの閾値の配列を返します。X と Y は同じ行数になります。
%   それぞれの閾値に対して、TP はこの閾値以上のスコアを持つ真陽性の観測の
%   カウントで、FP はこの閾値以上のスコアを持つ偽陽性の観測のカウントです。
%   PERFCURVE は、陰性のカウント TN と FN を定義し、同じ方法で、陽性のカウントの
%   昇順に対応するように閾値を降順に並べ替えます。M 個の異なる閾値がスコアの
%   配列で見つかった場合、PERFCURVE は X, Y と M+1 行の THRE 配列を返します。
%   PERFCURVE は、要素 THRE(2:M+1) を異なる閾値に設定し、THRE(1) は THRE(2) を
%   複製します。便宜上、THRE(1) は最も高い 'すべて棄却' の閾値を表すため、
%   PERFCURVE は、TP=0 と FP=0 に対して X と Y の対応する値を計算します。
%   THRE(end) は、TN=0 と FN=0 の場合、最も低い 'すべて許可' の閾値です。
%
%   [X,Y,THRE,AUC] = PERFCURVE(LABELS,SCORES,POSCLASS) は、X と Y の計算した
%   値に対する曲線下面積 (AUC) を返します。XVALS が 'all' に設定された場合、
%   PERFCURVE は戻り値 X と Y を使って AUC を計算します。XVALS が数値配列の
%   場合、PERFCURVE は XVALS の最小要素と最大要素で指定した区間内のすべての
%   異なるスコアから得られる X と Y 値を使って AUC を計算します。正確には、
%   XVALS が 'all' に設定されるように、PERFCURVE はすべての異なる閾値に対する 
%   X 値を見つけ、AUC を計算するために MIN(XVALS) と MAX(XVALS) 間でこれら 
%   (対応する Y 値で) のデータを使用します。関数は、面積を推定するために
%   台形近似を使用します。
%
%   X または Y の最初と最後の値が NaN の場合、PERFCURVE は AUC の計算を行うために 
%   NaN を削除します。これは、特定の 'すべて棄却' または 'すべて許可' の閾値、
%   たとえば、陽性的中率 (PPV) または陰性的中率 (NPV) の場合に NaN を生成する
%   判定基準を守ります。
%
%   [X,Y,THRE,AUC,OPTROCPT] = PERFCURVE(LABELS,SCORES,POSCLASS) は、最適 ROC 
%   の作用点に対する FPR と TPR の値で ROC 曲線の最適な作用点を 1 行 2 列の
%   サイズの配列として返します。OPTROCPT は、標準 ROC 曲線の場合のみ計算が行われ、
%   そうでない場合は NaN に設定されます。ROC 曲線に対する最適な作用点を取得する
%   には、PERFCURVE は最初に以下の式を使って勾配 S を求めます。
%          S = (cost(P|N)-cost(N|N))/(cost(N|P)-cost(P|P)) * N/P
%   ここで、cost(I|J) はクラス J のインスタンスをクラス I に割り当てるコストです。
%   P=TP+FN と N=TN+FP は、それぞれ、陽性と陰性のクラスのインスタンスの総数です。
%   次に、PERFCURVE は、ROC 曲線と交差するまで ROC プロットの左上隅 (FPR=0,TPR=1) 
%   の下から勾配 S で直線を右に動かすことで、最適な作用点を求めます。
%
%   [X,Y,THRE,AUC,OPTROCPT,SUBY] = PERFCURVE(LABELS,SCORES,POSCLASS) は、陰性
%   のサブクラスに対する Y 値の配列を返します。1 つの陰性のクラスのみを指定した
%   場合、SUBY は Y と同じになります。そうでない場合、SUBY は、M 行 K 列のサイズ
%   の行列です。ここで、X と Y に対する戻り値の数で、K は陰性のクラスの数です。
%   PERFCURVE は、すべての陰性のクラスでカウントを加算することで Y 値を計算します。
%   SUBY は、陰性のクラスごとに別々に Y の基準値を与えます。それぞれの陰性の
%   クラスに対して、PERFCURVE は SUBY に新規の列を配置し、このクラスの場合のみ
%   カウントされる TN と FP に対する Y 値を入れます。
%
%   [X,Y,THRE,AUC,OPTROCPT,SUBY,SUBYNAMES] = PERFCURVE(LABELS,SCORES,
%   POSCLASS,'NegClass',NEGCLASS) は、陰性のクラス名のセル配列を返します。
%   陰性のクラス名 NEGCLASS の入力配列を与える場合、PERFCURVE はそれを 
%   SUBYNAMES にコピーします。NEGCLASS が与えられない場合、PERFCURVE は
%   入力ラベルから SUBYNAMES を抽出します。SUBYNAMES の順番は、SUBY と
%   同じ列順です。すなわち、SUBY(:,1) は陰性のクラス SUBYNAMES{1} に対応します。
%
%   [X,Y] = PERFCURVE(LABELS,SCORES,POSCLASS,'PARAM1',val1,'PARAM2',val2,...) 
%   は、追加のパラメータ名と値の組み合わせを指定します。
%
%     'NegClass' - 陰性のクラスのリスト。数値配列、文字配列、文字列のセル配列
%                  のいずれかになります。デフォルトでは、NegClass は 'all' に
%                  設定されるため、陽性のクラスではないラベルの入力配列にある
%                  すべてのクラスは陰性であるものと考えられます。NegClass が
%                  ラベルの入力配列にあるクラスのサブセットの場合、陽性または
%                  陰性のクラスのいずれかに属しないラベルを持つインスタンスは
%                  破棄されます。
%
%     'XCrit' - X に対する計算基準。以下の基準をサポートします。
%         TP    - 真陽性の数
%         FN    - 偽陰性の数
%         FP    - 偽陽性の数
%         TN    - 真陰性の数
%         TP+FP - TP と FP の和
%         RPP   = (TP+FP)/(TP+FN+FP+TN) 陽性の予測率
%         RNP   = (TN+FN)/(TP+FN+FP+TN) 陰性の予測率
%         accu  = (TP+TN)/(TP+FN+FP+TN) 精度
%         TPR, sens, reca = TP/(TP+FN) 真陽性率、感度、recall
%         FNR, miss       = FN/(TP+FN) 偽陰性率、miss
%         FPR, fall       = FP/(TN+FP) 偽陽性率、fallout
%         TNR, spec       = TN/(TN+FP) 真陰性率、特異度
%         PPV, prec = TP/(TP+FP) 陽性の予測値、精度
%         NPV       = TN/(TN+FN) 陰性の予測値
%         ecost=(TP*COST(P|P)+FN*COST(N|P)+FP*COST(P|N)+TN*COST(N|N))/(TP+FN+FP+TN)
%              必要なコスト
%         さらに、3 つの引数 (C,scale,cost) の無名関数を与えることで、任意の
%         基準を定義することができます。ここで、C は 2 行 2 列の混合行列、scale は 
%         2 行 1 列のクラスのスケールの配列、cost は 2 行 2 列の誤判別のコストです。
%         警告: これらの基準のいくつかは、2 つの特定の閾値 'すべて棄却' と 
%         'すべて許可' のいずれかで NaN を返します。
%
%     'YCrit' - Y に対する計算基準。X に対するサポートと同じ基準です。
%
%     'XVals' - X の基準に対する値。デフォルトでは、XVals は 'all' に設定
%               されるため、PERFCURVE はすべてのスコアに対する X と Y 値を
%               計算します。XVals が 'all' に設定されない場合は数値配列で
%               なければなりません。
%               この場合、X と Y は指定した XVals に対してのみ計算されます。
%
%     'ProcessNaN' - この引数は、PERFCURVE がどのように NaN のスコアを処理す
%                    るかを指定します。デフォルトでは、'ignore' に設定されるため、
%                    NaN のスコアを持つインスタンスはデータから削除されます。
%                    パラメータが 'addtofalse' に設定された場合、PERFCURVE 
%                    は NaN のスコアを持つインスタンスをそれぞれのクラスにある
%                    偽の誤判別のカウントに追加します。すなわち、陽性のクラス
%                    からのインスタンスは常に偽陰性 (FN) としてカウントされ、
%                    陰性のクラスからのインスタンスは常に偽陽性 (FP) として
%                    カウントされます。
%
%     'Prior' - 文字列または 2 要素を持つ配列のいずれか。それぞれ、陽性と陰性
%               のクラスに対する前の確率を表します。デフォルトは 'empirical' です。
%               すなわち、前の確率はクラスの頻度から派生します。'uniform' に
%               設定する場合、すべての前の確率が等しく設定されます。
%
%     'Cost'  - 誤判別のコストの 2 行 2 列の行列。
%                   [C(P|P) C(N|P); C(P|N) C(N|N)]
%               ここで、C(I|J) はクラス J をクラス I として誤判別するコストです。
%               デフォルトでは、[0 0.5; 0.5 0] に設定されます。
%
%   例: ロジスティック回帰で分類するために ROC 曲線をプロットします。
%      load fisheriris
%      x = meas(51:end,1:2);        % アイリスデータの 2 つのクラスと 2 つの機能
%      y = (1:100)'>50;             % versicolor=0, virginica=1
%      b = glmfit(x,y,'binomial');  % ロジスティック回帰
%      p = glmval(b,x,'logit');     % スコアに対して近似した確率を取得
%
%      [X,Y] = perfcurve(species(51:end,:),p,'virginica');
%      plot(X,Y)
%      xlabel('False positive rate'); ylabel('True positive rate')
%      title('ROC for classification by logistic regression')
%
%   参考 GLMFIT, CLASSIFY, NAIVEBAYES, CLASSREGTREE, GROUPINGVARIABLE.


%   Copyright 2008-2009 The MathWorks, Inc. 
