%SCATTERHIST  周辺ヒストグラムを持つ 2D 散布図
%
%   SCATTERHIST(X,Y) は、ベクトル X と Y のデータの 2D 散布図を作成し、
%   プロットの水平方向と垂直方向の Axes 上に一変数のヒストグラムを配置します。
%   X と Y は同じ長さでなければなりません。
%
%   SCATTERHIST(X,Y,NBINS) は、X と Y のヒストグラムに対するビン数を指定する 
%   2 要素ベクトルも与えます。デフォルトは、標本の標準偏差に基づく Scott の
%   ルールを使ってビン数が計算されます。
%
%   X または Y のいずれかにある NaN の値は、欠損値として扱われ、X と Y の
%   両方から削除されます。そのため、プロットには X と Y の両方で欠損値の
%   ない点が反映されます。
%
%   プロットから正確な値と観測数を確認するには、データカーソルを使用してください。
%
%   H = SCATTERHIST(...) は、散布図、水平軸方向のヒストグラム、垂直軸方向の
%   ヒストグラムのそれぞれに対する 3 つの Axes ハンドルのベクトルを返します。
%
%   例:
%      独立な正規分布と対数正規分布の無作為標本
%         x = randn(1000,1);
%         y = exp(.5*randn(1000,1));
%         scatterhist(x,y)
%      独立でない一様な周辺分布の標本
%         u = copularnd('Gaussian',.8,1000);
%         scatterhist(u(:,1),u(:,2))
%      混在した離散と連続データ
%         cars = load('carsmall');
%         scatterhist(cars.Weight,cars.Cylinders,[10 3])


%   Copyright 2006-2009 The MathWorks, Inc.
