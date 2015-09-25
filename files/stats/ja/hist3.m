%HIST3  2 変数データの 3 次元ヒストグラム
%
%   HIST3(X) は、M 行 2 列の行列 X の要素を等間隔の格納、10 行 10 列のグリッド
%   に分け、ヒストグラムをプロットします。X の各列は、ビンのグリッドの 1 次元
%   に相当します。
%
%   HIST3(X,NBINS) は、NBINS(1) 行 NBINS(2) 列のグリッドのビンを使用して
%   ヒストグラムをプロットします。HIST3(X,'Nbins',NBINS) は、HIST3(X,NBINS) と
%   等価です。
%
%   HIST3(X,CTRS) は、1 番目の次元について中央が CTRS{1}、2 番目の次元に
%   ついて中央が CTRS{2} であるようなビンの 2 次元グリッドを使用します。
%   ここで、CTRS は、単調非減少の値を持つ数値ベクトルの 2 要素セル配列です。
%   HIST3 は、グリッドの範囲外となる X の行をグリッドの外端に隣接するビンに
%   割り当て、NaN を含む X の行を無視します。HIST3(X,'Ctrs',CTRS) は、
%   HIST3(X,CTRS) と等価です。
%
%   HIST3(X,'Edges',EDGES)は、1 番目の次元について端が EDGES{1}、2 番目の
%   次元について端が EDGES{2} のビンの 2 次元グリッドを使用します。ここで、
%   EDGES は、単調非減少の値を持つ数値ベクトルの 2 要素のセル配列です。
%   (i,j) 番目のビンは、以下の場合、値 X(k,:) を含みます。
%
%      EDGES{1}(i) <= X(k,1) < EDGES{1}(i+1) かつ
%      EDGES{2}(j) <= X(k,2) < EDGES{2}(j+1)
%
%   EDGES{1}(end) または EDGES{2}(end) は、グリッドの上端にとなる X の行で、
%   (I,j) 番目または (i,J) 番目のビンにカウントされます。ここで、I と J は、
%   EDGES{1} と EDGES{2} の長さです。HIST3 は、グリッドの範囲の外側になる 
%   X の行をカウントしません。すべての NaN でない値を含むためには、EDGES に 
%   -Inf と Inf を使用します。
%
%   N = HIST3(X,...) は、グリッドの各ビンに入る X の要素数を含む行列を返し、
%   ヒストグラムをプロットしません。
%
%   [N,C] = HIST3(X,...) は、数値ベクトルの 1 行 2 列のセル配列に、ビンの
%   中央の位置を返し、ヒストグラムをプロットしません。
%
%   HIST3(AX,X,...) は、GCA ではなく AX にプロットします。
%
%   HIST3(..., 'PARAM1',val1, 'PARAM2',val2, ...) により、プロットを微調整
%   するようにグラフィックスパラメータの名前と値の組を指定することができます。
%
%   例:
%
%      % 自動車データを作成し、7 行7 列のグリッドのビンでヒストグラムを作成します。
%      load carbig
%      X = [MPG,Weight];
%      hist3(X,[7 7]);
%      xlabel('MPG'); ylabel('Weight');
%
%      % 半透明のバーを持つヒストグラムを作成します。
%      hist3(X,[7 7],'FaceAlpha',.65);
%      xlabel('MPG'); ylabel('Weight');
%      set(gcf,'renderer','opengl');
%
%      % 高さに従って色付けされたバーを持つヒストグラムを作成します。
%      hist3(X,[7 7]);
%      xlabel('MPG'); ylabel('Weight');
%      set(gcf,'renderer','opengl');
%      set(get(gca,'child'),'FaceColor','interp','CDataMode','auto');
%
%      % 各方向で異なるビンの中央を指定します。% カウントし直しますが、
%      % プロットしません。
%      cnt = hist3(X, {0:10:50 2000:500:5000});
%
%   参考 ACCUMARRAY, BAR, BAR3, HIST, HISTC.


%   Copyright 1993-2009 The MathWorks, Inc.
