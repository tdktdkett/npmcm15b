% SQUAREFORM   正方行列で形式化された距離
%
%   Z = SQUAREFORM(Y) は、Y が PDIST 関数で作成されたベクトルの場合、
%   Z(i,j) が、オリジナルデータの i と j オブジェクト間の距離を定義する
%   ように Y を対称で、正方な形式に変換します。
%
%   Y=SQUAREFORM(Z) は、Z が対角に 0 をもつ対称の正方行列の場合、対角
%   以下に Z の要素を含むベクトル Y を作成します。Y は PDIST 関数からの
%   出力と同じ書式になります。
%
%   Z=SQUAREFORM(Y,'tovector') は、ベクトルとして Y を扱うために 
%   SQUAREFORM を使います。
%   Y=SQUAREFORM(Z,'tomatrix') は、行列として Z を取り扱うために 
%   SQUAREFORM を使います。入力が単一の要素をもつ場合、これらの書式は
%   役立ちます。したがって、ベクトルか正方行列のどちらかについては
%   あいまいです。
%
%   例:      Y = (1:6) で X = [0  1  2  3
%                              1  0  4  5
%                              2  4  0  6
%                              3  5  6  0],
%            の場合、squareform(Y) は X で、squareform(X) は Y です。
%
%   参考 PDIST.


%   Copyright 1993-2007 The MathWorks, Inc. 
