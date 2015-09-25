% MDSCALE   非計量的と計量的多次元尺度法
%
%   Y = MDSCALE(D,P) は、N×N の類似行列 D について非計量的多次元尺度法を
%   行い、P 次元 (列) の N 点 (行) の構成をもつ Y を出力します。Y の点間の
%   ユークリッド距離は、D の対応する非類似の単調変換を近似します。デフォルト
%   では、MDSCALE は、クラスカルの正規化基準 STRESS1 を用います。
%
%   D は、N×N のフル行列、あるいは PDIST による出力のような、上三角形行列
%   で指定することができます。非類似のフル行列は、実数対称行列で、対角が
%   0 でそれ以外では非負の要素をもたなければなりません。上三角行列の非類似
%   行列は、実数の非負の項目でなければなりません。MDSCALE は、D 内の NaN を
%   欠測値として扱い、それらの要素を無視します。Inf は利用できません。
%
%   D は、対角に 1、それ以外のすべての要素が 1 よりも小さい類似フル行列
%   として指定することもできます。MDSCALE は、Y に出力される点間距離が、
%   sqrt(1-D) に近似されるように、類似行列を非類似行列に変換します。他の
%   変換を使用するには、MDSCALE の呼び出しの前に類似行列を変換します。
%
%   [Y,STRESS] = MDSCALE(D,P) は、最小化ストレス、つまり Y で評価される
%   ストレスを出力します。
%
%   [Y,STRESS,DISPARITIES] = MDSCALE(D,P) は、格差、すなわち非類似性 
%   D の単調変換を出力します。
%
%   [...] = MDSCALE(..., 'PARAM1',val1, 'PARAM2',val2, ...) は、MDSCALE の
%   詳細を制御するオプションのパラメータ名と値の組を指定することができます。
%   パラメータは以下の通りです。
%
%   'Criterion' - 最小化のための適合性基準。これは、MSDCALE が実行する
%   非計量的、あるいは計量的な尺度のタイプも決定します。非計量的尺度法の
%   選択肢は、以下の通りです
%
%
%           'stress'  - STRESS1 としても知られる点間距離の二乗和により正規化
%                       されるストレス。これはデフォルトです。
%           'sstress' - 点間距離の 4 乗和により正規化される二乗ストレス
%
%       計量的尺度法の選択肢は以下の通りです。
%
%           'metricstress'  - 非類気の二乗和により正規化されるストレス。
%           'metricsstress' - 非類似の 4 乗和により正規化される二乗ストレス。
%           'sammon'        - Sammon の非線形マッピング基準。
%                             非対角の類似は、この基準により厳密に正で
%                             なければなりません。
%           'strain'        - 古典的 MDS で用いられるものと同じ基準
%
%   'Weights' - 非負の非類似重みを含む、Dと同じサイズの行列またはベクトル。
%       これらを使って、ストレスの計算および最小化においてDの対応する要素の
%	 寄与に重みを付けることができます。ゼロ重みに対応するDの要素は、事実上
%	 無視されます。
%
%   'Start' - Y に対する点の初期設定を選択するために用いる手法。選択肢は、以下
%             の通りです。
%
%       'cmdscale' - 古典的 MDS 解を利用します。これは、デフォルトです。
%                    'cmdscale' は、0 の重みがある場合は無効です。
%       'random'   - 非相関座標を使って適切にスケーリングされた P 次元の
%                    正規分布から位置を無作為に選択します。
%       matrix     - 初期位置の N×P 行列。この場合、P について[] で渡す
%                    ことが可能で、MDSCALE は、行列の 2 番目の次元から 
%                    P を推測します。配列の 3 番目の次元から 'Replicates' 
%                    に対する値を暗示して、3 次元配列も与えることができます。
%                    
%   'Replicates' - 新規の初期設定によるスケーリングの反復回数。デフォルトは
%                  1 です。
%
%   'Options' - STATSET によって作成される近似基準の最小化に用いる反復
%               アルゴリズムに対するオプション。STATSET パラメータの
%               選択肢は、以下の通りです。
%
%       'Display'     - 表示出力レベル。選択肢は、'off' (デフォルト), 'iter', 
%                       'final' です。
%       'MaxIter'     - 可能な最大反復回数。デフォルトは 200 です。
%       'TolFun'      - ストレスの基準および勾配に対する許容終了値。
%                       デフォルトは 1e-4 です。
%       'TolX'        - 設定位置のステップサイズに対する許容終了値。
%                       デフォルトは 1e-4 です。
%
%   例:
%
%      % cereal データを読み込み、非類似行列を作成します。
%      load cereal.mat
%      X = [Calories Protein Fat Sodium Fiber Carbo Sugars Shelf Potass Vitamins];
%      X = X(Mfg == 'K',:); % take a subset from a single manufacturer
%      dissimilarities = pdist(X);
%
%      % 非計量的尺度法を使って、データを 2D で再作成し、結果の Shepard
%      % プロットを作成します。
%      [Y,stress,disparities] = mdscale(dissimilarities,2);
%      distances = pdist(Y);
%      [dum,ord] = sortrows([disparities(:) dissimilarities(:)]);
%      plot(dissimilarities,distances,'bo', ...
%           dissimilarities(ord),disparities(ord),'r.-');
%      xlabel('Dissimilarities'); ylabel('Distances/Disparities')
%      legend({'Distances' 'Disparities'}, 'Location','NorthWest');
%
%      % 同じ非類似行列について計量的尺度法を行います。
%      [Y,stress] = mdscale(dissimilarities,2,'criterion','metricsstress');
%      distances = pdist(Y);
%      plot(dissimilarities,distances,'bo', ...
%           [0 max(dissimilarities)],[0 max(dissimilarities)],'k:');
%      xlabel('Dissimilarities'); ylabel('Distances')
%
% 参考  CMDSCALE, PDIST, STATSET.


%   Copyright 1993-2011 The MathWorks, Inc.
