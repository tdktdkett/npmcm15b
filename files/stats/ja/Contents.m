% Statistics Toolbox
% Version 9.0 (R2014a) 11-Dec-2013
%
% 分布
% パラメータ推定
%   betafit     - ベータ分布パラメータ推定
%   binofit     - 二項分布パラメータ推定
%   dfittool    - 分布のフィッティングツール
%   evfit       - 極値分布パラメータ推定
%   expfit      - 指数分布パラメータ推定
%   fitdist     - 分布の近似
%   gamfit      - ガンマ分布パラメータ推定
%   gevfit      - 一般化極値のパラメータ推定
%   gmdistribution - ガウス混合分布クラス
%   gpfit       - 一般化パレートのパラメータ推定
%   lognfit     - 対数正規分布パラメータ推定
%   mle         - 最尤推定 (MLE) 法
%   mlecov      - MLE の漸近的な共分散行列
%   nbinfit     - 負の二項分布パラメータ推定
%   normfit     - 正規分布パラメータ推定
%   paretotails - 一般化パレートの裾を持つ経験累積分布
%   poissfit    - ポアソン分布パラメータ推定
%   raylfit     - レイリーパラメータ推定
%   unifit      - 一様分布パラメータ推定
%   wblfit      - ワイブル分布パラメータ推定
%
% 確率密度関数 (pdf)
%   betapdf     - ベータ密度
%   binopdf     - 二項密度
%   chi2pdf     - カイ二乗密度
%   evpdf       - 極値密度
%   exppdf      - 指数密度
%   fpdf        - F 密度
%   gampdf      - ガンマ密度
%   geopdf      - 幾何密度
%   gevpdf      - 一般化極値の密度
%   gppdf       - 一般化パレート密度
%   hygepdf     - 超幾何密度
%   lognpdf     - 対数正規密度
%   mnpdf       - 多項分布確率関数
%   mvnpdf      - 多変量正規分布密度
%   mvtpdf      - 多変量 t 密度
%   nbinpdf     - 負二項密度
%   ncfpdf      - 非心 F 密度
%   nctpdf      - 非心 t 密度
%   ncx2pdf     - 非心カイ二乗密度
%   normpdf     - 正規 (ガウス) 密度
%   pdf         - 指定した分布に対する確率密度関数
%   poisspdf    - ポアソン密度
%   raylpdf     - レイリー密度
%   tpdf        - T 密度
%   unidpdf     - 離散一様密度
%   unifpdf     - 一様密度
%   wblpdf      - ワイブル密度
% 
% 累積分布関数 (cdf)
%   betacdf     - ベータ累積分布関数
%   binocdf     - 二項累積分布関数
%   cdf         - 指定した累積分布関数
%   chi2cdf     - カイ二乗累積分布関数
%   ecdf        - 経験累積分布関数 (カプラン・マイヤー推定値)
%   evcdf       - 極値累積分布関数
%   expcdf      - 指数累積分布関数
%   fcdf        - F 累積分布関数
%   gamcdf      - ガンマ累積分布関数
%   geocdf      - 幾何累積分布関数
%   gevcdf      - 一般化極値の累積分布関数
%   gpcdf       - 一般化パレートの累積分布関数
%   hygecdf     - 超幾何累積分布関数
%   logncdf     - 対数正規累積分布関数
%   mvncdf      - 多変量正規累積分布関数
%   mvtcdf      - 多変量 t 累積分布関数
%   nbincdf     - 負二項累積分布関数
%   ncfcdf      - 非心 F 累積分布関数
%   nctcdf      - 非心 t 累積分布関数
%   ncx2cdf     - 非心カイ二乗累積分布関数
%   normcdf     - 正規 (ガウス) 累積分布関数
%   poisscdf    - ポアソン累積分布関数
%   raylcdf     - レイリー累積分布関数
%   tcdf        - T 累積分布関数
%   unidcdf     - 離散一様累積分布関数
%   unifcdf     - 一様累積分布関数
%   wblcdf      - ワイブル累積分布関数
% 
% 分布関数の棄却限界
%   betainv     - ベータ逆累積分布関数
%   binoinv     - 二項逆累積分布関数
%   chi2inv     - カイ二乗逆累積分布関数
%   evinv       - 極値逆累積分布関数
%   expinv      - 指数逆累積分布関数
%   finv        - F 逆累積分布関数
%   gaminv      - ガンマ逆累積分布関数
%   geoinv      - 幾何逆累積分布関数
%   gevinv      - 一般化極値の逆累積分布関数
%   gpinv       - 一般化パレートの逆累積分布関数
%   hygeinv     - 超幾何逆累積分布関数
%   icdf        - 指定した逆累積分布関数
%   logninv     - 対数正規逆累積分布関数
%   nbininv     - 負二項逆累積分布関数
%   ncfinv      - 非心 F 逆累積分布関数
%   nctinv      - 非心 t 逆累積分布関数
%   ncx2inv     - 非心カイ二乗逆累積分布関数
%   norminv     - 正規 (ガウス) 逆累積分布関数
%   poissinv    - ポアソン逆累積分布関数
%   raylinv     - レイリー逆累積分布関数
%   tinv        - T 逆累積分布関数
%   unidinv     - 離散一様逆累積分布関数
%   unifinv     - 一様逆累積分布関数
%   wblinv      - ワイブル逆累積分布関数
%
% 乱数の発生
%   betarnd     - ベータ分布乱数
%   binornd     - 二項分布乱数
%   chi2rnd     - カイ二乗分布乱数
%   evrnd       - 極値分布乱数
%   exprnd      - 指数分布乱数
%   frnd        - F 分布乱数
%   gamrnd      - ガンマ分布乱数
%   geornd      - 幾何分布乱数
%   gevrnd      - 一般化極値の乱数
%   gprnd       - 一般化パレートの乱数
%   hygernd     - 超幾何分布乱数
%   iwishrnd    - ウィッシャート乱数逆行列
%   johnsrnd    - 分布のジョンソンシステムからの乱数
%   lognrnd     - 対数正規分布乱数
%   mhsample    - メトロポリス-ヘイスティングス法
%   mnrnd       - 多項分布の乱数ベクトル
%   mvnrnd      - 多変量による正規分布乱数
%   mvtrnd      - 多変量 t 分布乱数
%   nbinrnd     - 負二項分布乱数
%   ncfrnd      - 非心 F 分布乱数
%   nctrnd      - 非心 t 分布乱数
%   ncx2rnd     - 非心カイ二乗分布乱数
%   normrnd     - 正規 (ガウス) 分布乱数
%   pearsrnd    - 分布のピアソンシステムからの乱数
%   poissrnd    - ポアソン分布乱数
%   randg       - ガンマ分布乱数 (単位スケール)
%   random      - 指定した分布をする乱数
%   randsample  - 有限母集団からの無作為標本
%   raylrnd     - レイリー分布乱数
%   slicesample - スライスサンプリング法
%   trnd        - T 分布乱数
%   unidrnd     - 離散一様分布乱数
%   unifrnd     - 一様分布乱数
%   wblrnd      - ワイブル分布乱数
%   wishrnd     - ウィッシャートランダム行列
%
%  準乱数発生器
%   haltonset   - ハルトン (Halton) 点列集合
%   qrandstream - 準乱数のストリーム
%   sobolset    - ソボル (Sobol) 点列集合
%
% 統計量
%   betastat    - ベータ分布の平均値と分散
%   binostat    - 二項分布の平均値と分散
%   chi2stat    - カイ二乗分布の平均値と分散
%   evstat      - 極値分布の平均値と分散
%   expstat     - 指数分布の平均値と分散
%   fstat       - F 分布の平均値と分散
%   gamstat     - ガンマ分布の平均値と分散
%   geostat     - 幾何分布の平均値と分散
%   gevstat     - 一般化極値の平均値と分散
%   gpstat      - 一般化パレートの平均値と分散
%   hygestat    - 超幾何分布の平均値と分散
%   lognstat    - 対数正規分布の平均値と分散
%   nbinstat    - 負の二項分布の平均値と分散
%   ncfstat     - 非心 F 分布の平均値と分散
%   nctstat     - 非心 t 分布の平均値と分散
%   ncx2stat    - 非心カイ二乗分布の平均値と分散
%   normstat    - 正規 (ガウス) 分布の平均値と分散
%   poisstat    - ポアソン分布の平均値と分散
%   raylstat    - レイリー分布の平均値と分散
%   tstat       - T 分布の平均値と分散
%   unidstat    - 離散一様分布の平均値と分散
%   unifstat    - 一様分布の平均値と分散
%   wblstat     - ワイブル分布の平均値と分散
%
%  尤度関数
%   betalike    - 負のベータ対数尤度
%   evlike      - 負の極値対数尤度
%   explike     - 負の指数対数尤度
%   gamlike     - 負のガンマ対数尤度
%   gevlike     - 負の一般化極値の対数尤度
%   gplike      - 負の一般化パレートの対数尤度
%   lognlike    - 負の対数正規対数尤度
%   nbinlike    - 負の二項対数尤度
%   normlike    - 負の正規対数尤度
%   wbllike     - 負のワイブル対数尤度
%
%  確率分布オブジェクト
%   ProbDistUnivKernel - 1 変量カーネル平滑化分布
%   ProbDistUnivParam  - 1 変量パラメトリック分布
%
% 記述的統計量
%   bootci      - ブートストラップ信頼区間
%   bootstrp    - ブートストラップ統計量
%   corr        - 線形、または順位相関係数
%   corrcoef    - 線形相関係数 (MATLAB ツールボックス)
%   cov         - 共分散 (MATLAB ツールボックス)
%   crosstab    - ベクトルのクロス表
%   geomean     - 幾何平均
%   grpstats    - グループ毎の統計量
%   harmmean    - 調和平均
%   iqr         - 標本の四分位レンジ
%   jackknife   - ジャックナイフ統計量
%   kurtosis    - 標本尖度
%   mad         - データ標本の平均絶対偏差
%   mean        - 標本平均 (MATLAB ツールボックス)
%   median      - 標本の 50 番目の百分位数 (MATLAB ツールボックス)
%   mode        - 標本内のモードまたは最も頻度の高い値 (MATLAB ツールボックス)
%   moment      - ある標本のモーメント
%   nancov      - NaN を無視した共分散行列
%   nanmax      - NaN を無視した最大値
%   nanmean     - NaN を無視した平均値
%   nanmedian   - NaN を無視した中央値
%   nanmin      - NaN を無視した最小値
%   nanstd      - NaN を無視した標準偏差
%   nansum      - NaN を無視した和
%   nanvar      - NaN を無視した分散
%   partialcorr - 線形、または順位部分相関係数
%   prctile     - 標本の百分位数
%   quantile    - 四分位
%   range       - 範囲
%   skewness    - 標本歪度
%   std         - 標準偏差 (MATLAB ツールボックス)
%   tabulate    - 頻度表
%   trimmean    - 異常値を除去したデータ標本の平均
%   var         - 分散 (MATLAB ツールボックス)
% 
% 線形モデル
%   addedvarplot - ステップワイズ回帰のための追加された変数プロットの作成
%   anova1      - 一要因分散分析
%   anova2      - 二要因分散分析
%   anovan      - n-要因分散分析
%   aoctool     - 共分散の解析のための対話形式のツール
%   dummyvar    - 0 と 1 のダミー変数行列
%   friedman    - フリードマン検定 (ノンパラメトリック二要因分散分析)
%   glmfit      - 一般化線形モデルのフィッティング
%   glmval      - 一般化線形モデルの予測値の計算
%   invpred     - 単純な線形回帰の逆予測
%   kruskalwallis - クラスカル-ワリス検定 (ノンパラメトリック一要因分散分析)
%   leverage    - 回帰診断
%   lscov       - 通常の重み付けされた、または一般化最小二乗 (MATLAB ツールボックス)
%   lsqnonneg   - 非負の最小二乗 (MATLAB ツールボックス)
%   manova1     - 一要因分散多変量解析
%   manovacluster - manova1 に対するグループ平均のクラスタの図示
%   mnrfit      - 名義または順序の多項分布回帰モデルのフィッティング
%   mnrval      - 名義または順序の多項分布回帰の予測値
%   multcompare - 平均値、他の推定値の多重比較検定
%   mvregress   - 欠損値を持つ多変量回帰
%   mvregresslike - 多変量回帰に対する負の対数尤度
%   polyconf    - 多項式計算と信頼区間の算出
%   polyfit     - 最小二乗法を使った多項式近似 (MATLAB ツールボックス)
%   polyval     - 多項式関数を使った予測値 (MATLAB ツールボックス)
%   rcoplot     - ケース毎の残差表示
%   regress     - 最小二乗を使った多重線形回帰
%   regstats    - 回帰診断を示すグラフィカルユーザインタフェース
%   ridge       - リッジ回帰のパラメータ推定
%   robustfit   - ロバスト回帰モデルフィッテング
%   rstool      - 多次元応答サーフェスの応答の可視化ツール (RSM)
%   stepwise    - ステップワイズ回帰の対話型ツール
%   stepwisefit - 対話型ではないステップワイズ回帰
%   x2fx        - 予測子を計画行列に変換
%
% 非線形モデル
%   coxphfit    - コックス比例ハザード回帰
%   nlinfit     - ニュートン法を使った非線形最小二乗法によるデータフィッティング
%   nlintool    - 非線形モデルの予測に対する対話型グラフィックスツール
%   nlmefit     - 非線形混合効果データ近似
%   nlpredci    - 予測に対する信頼区間
%   nlparci     - パラメータに対する信頼区間
%
% 実験計画法(DOE)
%   bbdesign    - Box-Behnken 計画
%   candexch    - D-最適計画 (候補集合に対する行交換アルゴリズム)。
%   candgen     - D-最適化計画作成のための候補集合
%   ccdesign    - 中心複合計画
%   cordexch    - D-最適計画法 (座標交換アルゴリイズム)
%   daugment    - 拡大 D-最適計画法
%   dcovary     - 修正共分散を持つ D-最適計画法
%   fracfactgen - 一部実施要因計画法の生成子
%   ff2n        - 2 レベルの完全実施計画
%   fracfact    - 2 レベル一部実施要因計画法
%   fullfact    - 混合レベルの完全実施計画
%   hadamard    - アダマール行列 (直交配列) (MATLAB ツールボックス)
%   lhsdesign   - ラテン超方格の標本を作成
%   lhsnorm     - 多変量正規分布を持つラテン超方格標本
%   rowexch     - D-最適計画法 (行交換アルゴリズム)
%
% 統計的工程管理 (SPC)
%   capability  - 工程能力指数
%   capaplot    - 工程能力プロット
%   controlchart - シューハート管理図
%   controlrules - SPC データに対する管理ルール (Western Electric または Nelson)
%   gagerr      - ゲージの反復性と再現性 (R&R) 分析
%   histfit     - ヒストグラムと正規密度曲線
%   normspec    - 設定した範囲間での正規分布密度のプロット
%   runstest    - 無作為性の検定を実行
%
% 多変量統計量
%  クラスタ分析
%   cophenet    - コーフェン相関係数を算出
%   cluster     - LINKAGE 出力からのクラスタの作成
%   clusterdata - データからクラスタの作成
%   dendrogram  - 樹形の作成
%   gmdistribution - ガウスの混合モデルの推定
%   inconsistent- クラスタツリーの整合性のない値
%   kmeans      - K 平均クラスタリング
%   linkage     - 階層的なクラスタの情報の取得
%   pdist       - 観測間の距離の算出
%   silhouette  - クラスタデータの輪郭をプロット
%   squareform  - 正方行列形式で距離を表現
%
%  分類
%   classify    - 線形判別分析
%   NaiveBayes  - 単純なベイズ分類
%
% 次元削減手法
%   factoran    - 要因分析
%   nnmf        - 非負の行列の因子分解
%   pcacov      - 共分散行列による主成分分析
%   pcares      - 主成分分析からの残差
%   princomp    - 実データ行列による主成分分析
%   rotatefactors - FA または PCA の荷重回転
%
% コピュラ (連辞)
%   copulacdf   - コピュラの累積確率関数
%   copulafit   - パラメトリックなコピュラをデータに近似
%   copulaparam - 順位相関の関数としてのコピュラのパラメータ
%   copulapdf   - コピュラの確率密度関数
%   copularnd   - コピュラの乱数ベクトル
%   copulastat  - コピュラの順位相関
%
% プロット
%   andrewsplot - 多変量データに対する Andrews プロット
%   biplot      - 変数/要因の係数とスコアのバイプロット
%   interactionplot - 要因効果の相互作用プロット
%   maineffectsplot - 要因効果の主効果プロット
%   glyphplot   - 多変量データに対するスタープロットまたは Chernoff の顔グラフのプロット
%   gplotmatrix - 共通変数でグループ化された散布図プロット行列
%   multivarichart - 要因効果の多変量管理図
%   parallelcoords - 多変数データに対する平行座標プロット
%
% 他の多変量手法
%   barttest    - 次元に関するバートレット検定
%   canoncorr   - 正準相関分析
%   cmdscale    - 古典的多次元尺度構成法
%   mahal       - マハラノビスの距離
%   manova1     - 一要因分散多変量解析
%   mdscale     - ノンメトリックおよびメトリック多次元スケーリング
%   mvregress   - 欠損データを持つ多変量回帰
%   plsregress  - 部分最小二乗回帰
%   procrustes  - プロクラステス分析
%
% 決定木手法
%   classregtree - 分類または回帰木
%   TreeBagger   - まとまった決定木の集合
%   CompactTreeBagger - まとまった決定木の軽量な集合
%
% 仮説検定
%   ansaribradley - 等価な分散に対するアンサリ-ブラッドリーの 2 標本検定
%   dwtest      - 線形回帰の自己相関に対するダービン-ワトソン検定
%   linhyptest  - パラメータ推定における線形仮説検定
%   ranksum     - ウィルコクソンの順位和検定 (独立な標本)
%   runstest    - 無作為性に対する検定の実行
%   sampsizepwr - 仮説検定の標本サイズと出力計算
%   signrank    - ウィルコクソン符号つき順位和検定 (対標本)
%   signtest    - 符号つき検定 (対標本)
%   ttest       - 1 標本 t 検定
%   ttest2      - 2 標本 t 検定
%   vartest     - 分散の 1 標本検定
%   vartest2    - 等価な分散の 2 標本 F 検定
%   vartestn    - 複数のグループにまたがる等価な分散の検定
%   ztest       - Z 検定
%
% 分布テスト
%   chi2gof     - カイ二乗適合性検定
%   jbtest      - 正規性の Jarque-Bera 検定
%   kstest      - 1 標本に対するコルモゴルフ-スミルノフ検定
%   kstest2     - 2 標本に対するコルモゴルフ-スミルノフ検定
%   lillietest  - 正規性のリリーフォース検定
%
% ノンパラメトリック関数
%   friedman    - フリードマン検定 (ノンパラメトリックニ要因分散分析)
%   kruskalwallis - クラスカル-ワリス検定 (ノンパラメトリック一要因分散分析)
%   ksdensity   - カーネル平滑化密度の推定
%   ranksum     - ウィルコクソンの順位和検定 (独立な標本)
%   signrank    - ウィルコクソン符号つき順位和検定 (対標本)
%   signtest    - 符号つき検定 (対標本)
%
% 隠れマルコフモデル
%   hmmdecode   - HMM の後方の状態確率を計算
%   hmmestimate - 状態情報を与えられたHMMパラメータ推定
%   hmmgenerate - HMM に対するランダムな系列の生成
%   hmmtrain    - HMM パラメータに対する最尤推定値の計算
%   hmmviterbi  - HMM の系列に対して最も起こりうる状態パスを計算
%
% モデル評価
%   confusionmat - 分類アルゴリズムに対する混合行列
%   crossval    - 交差検定を使った損失推定
%   cvpartition - 交差検定の区分
%   perfcurve   - ROC と分類アルゴリズムに対する他の性能の尺度
%
% モデル選択
%   sequentialfs - 連続した機能選択
%   stepwise    - ステップワイズ回帰に対する対話型ツール
%   stepwisefit - 非対話型のステップワイズ回帰
%
% 統計特有のプロット関数
%   andrewsplot - 多変量データに対する Andrews プロット
%   biplot      - 変数/要因の係数とスコアのバイプロット
%   boxplot     - データ行列のボックスプロット (列単位)
%   cdfplot     - 経験累積分布関数のプロット
%   ecdf        - 経験的累積分布関数 (カプラン-マイヤー推定値)
%   ecdfhist    - 経験的累積分布関数から計算されたヒストグラム
%   fsurfht     - ある関数の対話型によるコンタープロット
%   gline       - 図の中に対話形式で直線を描写
%   glyphplot   - 多変量データに対するスタープロットまたは Chernoff の顔グラフのプロット
%   gname       - 対話型で点のラベル表示
%   gplotmatrix - 共通変数を使ってグループ化された散布図プロットの行列
%   gscatter    - グループ化された変数の散布図を作成
%   hist        - ヒストグラム (MATLAB ツールボックス)
%   hist3       - 2 変数データの 3 次元ヒストグラム
%   ksdensity   - カーネル平滑化密度推定
%   lsline      - 散布図に最小二乗近似直線を重ね表示
%   normplot    - 正規確率分布のプロット
%   parallelcoords - 多変数データに対する平行座標プロット
%   probplot    - 確率プロット
%   qqplot      - 四分位プロット
%   refcurve    - 基準多項式のプロット
%   refline     - 基準ライン
%   scatterhist - 周辺ヒストグラムを持つ 2D 散布図
%   surfht      - データグリッドの対話型コンタープロット
%   wblplot     - ワイブル確率のプロット
%
% データオブジェクト
%   dataset     - ワークスペース変数またはファイルからデータセットを作成
%   nominal     - 名義尺度データの配列を作成
%   ordinal     - 順序尺度データの配列を作成
%
% 統計デモ
%   aoctool     - 共分散の解析に対する対話形式のツール
%   disttool    - 確率分布関数を調べる GUI ツール
%   polytool    - 近似多項式の予測に関する対話型のグラフィックスツール
%   randtool    - 乱数発生用の GUI ツール
%   rsmdemo     - 実験計画と曲線近似のデモンストレーション
%   robustdemo  - ロバスト回帰と最小二乗フィッティングを比較する対話形式のツール
%
% ファイルの I/O 関連
%   tblread     - ファイルシステムから表にしたデータを取り込む
%   tblwrite    - ファイルシステムに表にしたデータを書き込む
%   tdfread     - タブ区切りのファイルからテキストと数値データの読み込み
%   caseread    - ファイルからケース名を読み込む
%   casewrite   - ファイルにケース名を書き込む
%
% ユーティリティ関数
%   cholcov     - 共分散行列に対するコレスキーライクな分解
%   combnk      - n オブジェクトの k 個を同時に取り出すすべての組み合わせ
%   corrcov     - 共分散行列から相関行列を計算
%   grp2idx     - グループ化変数をインデックスと名前の配列に変換
%   hougen      - Hougen モデル (非線形の例) に対する予測関数
%   statget     - STATS オプションパラメータ値の取得
%   statset     - STATS オプションパラメータ値の設定
%   tiedrank    - 同順位に対して調整された標本の順位を計算
%   zscore      - 各列が平均値 0、分散 1 の列となる標準化行列

% Copyright 1993-2013 The MathWorks, Inc.