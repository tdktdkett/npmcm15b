%WBLPLOT  ワイブル確率のプロット
%
%   H = WBLPLOT(X) は、X のデータのワイブル確率のプロットを表示します。 
%   行列X に対して、WBLPLOT は、列ごとにプロットを表示します。
%   H は、プロットしたラインのハンドル番号です。
%
%   ワイブル確率のプロットの目的は、X のデータがワイブル分布からなるか
%   どうかをグラフィカルに評価することです。データがワイブルの場合、
%   プロットは線形になります。他の分布タイプでは、プロットは曲率を示します。
%   WBLPLOT は、位置をプロットしている中間確率を使用します。
%   データが打ち切られた観測値を含む場合は PROBPLOT を使用します。
%
%   正確な値と観測数、基準線に投影される観測値を確認するには、データカーソルを
%   使用してください。
%
%   参考 PROBPLOT, NORMPLOT.


%   Copyright 1993-2009 The MathWorks, Inc. 
