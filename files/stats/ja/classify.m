%CLASSIFY  判別分析
%
%   CLASS = CLASSIFY(SAMPLE,TRAINING,GROUP) は、SAMPLE のデータの各行を 
%   TRAINING のグループの値に割り当てます。SAMPLE とTRAINING は、同数の列を持つ
%   行列でなければなりません。GROUPは、TRAINING に対するグループ変数です。
%   その値はグループを定義し、各要素は、どのグループが TRAINING の行に属して
%   いるかを決定します。GROUP は、カテゴリ変数、数値ベクトル、文字配列、
%   または、文字列のセル配列になります。TRAINING とGROUP は同じ行数でなければ
%   なりません。CLASSIFY は、GROUP の NaN、または、空の文字列を欠損値として
%   取り扱い、TRAINING の対応する行を無視します。CLASSは、SAMPLE の各行が、
%   どのグループに割り当てられるかを示し、GROUP と同じタイプを持ちます。
%
%   CLASS = CLASSIFY(SAMPLE,TRAINING,GROUP,TYPE) は、'linear', 'quadratic', 
%   'diagLinear', 'diagQuadratic', 'mahalanobis' のいずれかの判別関数のタイプを
%   指定することが可能です。線形識別は、共分散のプールされた推定を各グループへの
%   多変量正規密度に近似します。2 次識別は、グループで階層化された共分散の推定を
%   持つ MVN 密度に近似します。両方の手法とも、グループへの観測を割り当てるために
%   尤度比を使用します。'diagLinear' と 'diagQuadratic' は、対角の共分散行列の
%   推定を持ちますが、'linear' と 'quadratic' と似ています。これらの対角要素の
%   選択は、単純なベイズの分類の例です。マハラノビスの識別は、階層化された共分散の
%   推定を持つマハラノビス距離を使用します。TYPE のデフォルトは、'linear' です。
%
%   CLASS = CLASSIFY(SAMPLE,TRAINING,GROUP,TYPE,PRIOR) は、3 つの方法の
%   いずれかのグループに対して、あらかじめ確率を指定することが可能です。
%   PRIOR は、GROUP 内の固有の値の数と同じ長さの数値ベクトル (あるいは、GROUP が
%   カテゴリの場合、GROUP に対して定義されたレベル数) になります。GROUP が数値か
%   カテゴリの場合、PRIOR の並びは、GROUP 内の並べ替えられた値に、あるいは、
%   GROUP が文字列を含む場合、GROUP 内の値の 1 番目に発生する並びに対応しなければ
%   なりません。PRIOR は、さらに、フィールド 'prob' を持つ構造体、数値ベクトル、
%   および、GROUP と同じタイプで 'prob' の要素がどのグループに対応するかを示す
%   固有の値を含む 'group' を持つ 1 x 1 の構造体にもできます。構造体の場合、
%   PRIOR は、GROUP に現れないグループを含む可能性があります。これは、TRAINING が
%   より大きい訓練の集合のデータである場合に役立ちます。CLASSIFY は、構造体内に
%   あるいくつかのグループを無視しますが、GROUPS 配列内のグループは無視しません。
%   最終的に、PRIOR は、TRAINING 内の頻度に関連するグループから推定する必要の
%   あるグループの前の確率を示す文字列の値 'empirical' になります。PRIOR の
%   デフォルトは、等しい確率、すなわち、一様分布の数値ベクトルです。PRIOR は、
%   誤差比の計算以外は、マハラノビス距離による識別のために使用されません
%
%   [CLASS,ERR] = CLASSIFY(...) は、訓練データに基づく誤判別の誤差の推定 ERR 
%   を返します。CLASSIFY は、見かけの誤差率、すなわち、グループに対して前の
%   確率で重み付けされ、誤判別された TRAINING の観測値の割合を返します。
%
%   [CLASS,ERR,POSTERIOR] = CLASSIFY(...) は、j 番目の訓練のグループは i 番目
%   の標暴の観測の元となる後領域の確率、すなわち Pr{group j | obs i} を含む
%   行列 POSTERIOR を返します。POSTERIOR は、マハラノビスの識別に対して計算
%   されません。
%
%   [CLASS,ERR,POSTERIOR,LOGP] = CLASSIFY(...) は、与えられたすべてのグループ
%   全体 p(obs i | group j)*Pr{group j} の和である標本の観測 p(obs i) の条件の
%   ない予測確率密度の対数の推定を含むベクトル LOGP を返します。LOGP は、
%   マハラノビスの識別に対して計算されません。
%
%   [CLASS,ERR,POSTERIOR,LOGP,COEF] = CLASSIFY(...) は、グループの各組み
%   合わせを分離する領域間の境界を記述する係数を含む構造体配列 COEF を返します。
%   各要素 COEF(I,J) は、以下のフィールドを使って定義されたグループ I とグループ J 
%   を比較するための情報を含んでいます。
%       'type'      TYPE の入力に基づく判別関数のタイプ
%       'name1'     組み合わせの最初のグループ名 (グループ I)
%       'name2'     組み合わせの 2 番目のグループ名 (グループ J)
%       'const'     境界方程式の定数項 (K)
%       'linear'    境界方程式の線形項の係数 (L)
%       'quadratic' 2 次の項の係数行列 (Q)
%
%   'linear' と 'diaglinear' では、'quadratic' フィールドは存在せず、
%   SAMPLE 配列の行 x は、以下の条件の場合、グループ J ではなくグループ 
%   I に分類されます。
%         0 < K + x*L
%   他のタイプでは、x は、以下の条件の場合、グループ I に分類されます。
%         0 < K + x*L + x*Q*x'
%
%   例:
%      % 2 次の判別関数を使ってフィッシャーのアイリスデータを分類します
%      load fisheriris
%      x = meas(51:end,1:2);  % 2 つの species (2 行) を使用します。
%      y = species(51:end);
%      [c,err,post,logl,str] = classify(x,x,y,'quadratic');
%      gscatter(x(:,1),x(:,2),y,'rb','v^')
%
%      % x-y 平面に対して分類します
%      [X,Y] = meshgrid(linspace(4.3,7.9), linspace(2,4.4));
%      X = X(:); Y = Y(:);
%      C = classify([X Y],x,y,'quadratic');
%      hold on; gscatter(X,Y,C,'rb','.',1,'off'); hold off
%
%      % 2 つの領域間の境界を描画します
%      hold on
%      K = str(1,2).const;
%      L = str(1,2).linear;
%      Q = str(1,2).quadratic;
%      f = sprintf('0 = %g + %g*x + %g*y + %g*x^2 + %g*x.*y + %g*y.^2', ...
%                  K,L,Q(1,1),Q(1,2)+Q(2,1),Q(2,2));
%      ezplot(f,[4 8 2 4.5]);
%      hold off
%      title('Classification of Fisher iris data')
%
%   参考 CLASSREGTREE.


%   Copyright 1993-2009 The MathWorks, Inc.
