%RANDSAMPLE  無作為標本の復元抽出または非復元抽出
%
%   Y = RANDSAMPLE(N,K) は、整数 1:N から、非復元の一様かつ無作為に抽出
%   された K 値のベクトルとして Y を返します。
%
%   Y = RANDSAMPLE(POPULATION,K) は、ベクトル POPULATION 内の値から、
%   (非復元の) 一様かつ無作為に抽出された K 個の値を返します。
%
%   Y = RANDSAMPLE(...,REPLACE) は、REPLACE が真の場合、復元抽出を行い、
%   REPLACE が偽 (デフォルト) の場合、非復元の標本を返します。
%
%   Y = RANDSAMPLE(...,true,W) は、正の重み W を用いて、復元抽出され、
%   重み付けされた標本を返します。W は、しばしば確率のベクトルです。
%   この関数は、非復元で重み付けされた標本をサポートしていません。
%
%   例: 指定した確率に従って復元抽出された文字 ACGT の乱数列を生成します。
%
%      R = randsample('ACGT',48,true,[0.15 0.35 0.35 0.15])
%
%   参考 RAND, RANDPERM.


%   Copyright 1993-2009 The MathWorks, Inc.
