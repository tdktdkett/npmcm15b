%QRANDSTREAM  準乱数のストリームの作成
%
%   Q = QRANDSTREAM(TYPE,D) は、点集合の指定したタイプをカプセル化する
%   ストリームの参照オブジェクトを作成します。TYPE は、点集合名を含む
%   文字列で、'sobol' または 'halton' のいずれかでなければなりません。
%   D は次元数を指定します。
%
%   Q = QRANDSTREAM(TYPE,D,PROP,VAL,...) は、基本となるストリーム上での
%   点集合の作成に使用されるプロパティ-値の組み合わせの設定を指定します。
%
%   Q = QRANDSTREAM(PS) は、点集合 PS のコピーに基づきストリームを作成します。
%   PS は、準乱数の点集合オブジェクト (例. sobolset または haltonset) で
%   なければなりません。
%
%   準乱数のストリームには、以下のプロパティとメソッドがあります。
%
%   読み取り専用のプロパティ:
%      PointSet     - ストリームを描画する点集合オブジェクト。
%
%   設定可能なプロパティ:
%      State        - 最後の点の点のストリーム内のインデックス。
%
%   qrandstream メソッド:
%      qrand,rand   - ストリームから点を描画し、状態をインクリメント。
%      reset        - ストリームを初期状態に戻すよう設定。
%
%   例:
%
%      ソボル列に基づき 5 次元のストリームを作成し、値を描画:
%         Q = qrandstream('sobol',5);
%         qrand(Q,10000)
%
%      ハルトン列に基づきストリームを作成し、初期の点をスキップ:
%         Q = qrandstream('halton',5,'Leap',12,'Skip',1);
%         qrand(Q,100)
%
%      スクランブルなソボルの集合に基づきストリームを作成:
%         S = sobolset(5);
%         S = scramble(S,'MatousekAffineOwen');
%         Q = qrandstream(S);
%         qrand(Q,2^16)
%
%      ストリームを作成し、rand を使ってストリームから値を描画:
%         Q = qrandstream('sobol',5);
%         rand(Q, 100, 5)
%
%   参考 QRAND, HALTONSET, SOBOLSET, RAND, RANDSTREAM.


%   Copyright 2007-2009 The MathWorks, Inc.
