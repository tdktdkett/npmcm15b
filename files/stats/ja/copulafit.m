%COPULAFIT  パラメトリックなコピュラをデータに近似
%
%   RHOHAT = COPULAFIT('Gaussian', U) は、U に与えられたデータを元に、
%   ガウス・コピュラに対する線形相関パラメータの推定行列 RHOHAT を返します。
%   U は、P 次元の単位超立方体内の N 点を表す (0,1) 内にある値の N×P 行列です。
%
%   [RHOHAT, NUHAT] = COPULAFIT('t', U) は、U に与えられたデータを元に、
%   t コピュラに対する線形相関パラメータの推定行列 RHOHAT と自由度の推定値 
%   NUHAT を返します。U は、P 次元の単位超立方体内の N 点を表す (0,1) 内に
%   ある値の N×P 行列です。
%
%   [RHOHAT, NUHAT, NUCI] = COPULAFIT('t', U) は、U に与えられたデータを元に、
%   t コピュラに対する自由度の推定値に対する 95% の信頼区間を返します。
%
%   PARAMHAT = COPULAFIT(FAMILY, U) は、U に与えられたデータを元に、FAMILY で
%   指定したアルキメデス型コピュラに対するコピュラパラメータの推定値 PARAMHAT 
%   を返します。U は、単位正方形内の N 点を表す (0,1) 内にある値の N×P 行列です。
%   FAMILY は 'Clayton', 'Frank', 'Gumbel' のいずれかです。
%
%   [PARAMHAT, PARAMCI] = COPULAFIT(FAMILY, U) は、U に与えられたデータを元に、
%   FAMILY で指定したアルキメデス型コピュラからコピュラパラメータに対する 95% の
%   信頼区間を返します。
%
%   [...] = COPULAFIT(..., 'Alpha', ALPHA) は、パラメータ推定に対する 
%   100(1-ALPHA)% の信頼区間の近似を返します。
%
%   COPULAFIT は、コピュラを U に近似するために最尤推定を使用します。U が
%   それらの周辺の累積分布関数のパラメトリックな推定で単位超立方体に変換された
%   データを含む場合、これは、Inference Functions for Margins (IFM) メソッドと
%   呼ばれています。U が経験累積分布関数で変換されたデータを含む場合、
%   これは、Canonical Maximum Likelihood (CML) と呼ばれています。
%
%   [...] = COPULAFIT('t', U, ..., 'Method', 'ApproximateML') は、Bouye 
%   およびその他によって示されているように、大きい標本サイズに対して自由度 
%   nu の側面となる統計データの対数尤度を近似する目的関数の最大化により 
%   t コピュラを近似します。このメソッドは、最尤推定を使用するよりきわめて
%   高速になりますが、推定と信頼限界が小規模、または、中規模の標本サイズに
%   対して正確ではない可能性があるため、注意深く使用する必要があります。
%   COPULAFIT('t', U, ..., 'Method', 'ML') は、デフォルトの最尤推定近似と等価です。
%
%   [...] = COPULAFIT(..., 'Options', OPTIONS) は、推定を計算するために
%   使われる反復アルゴリズムに対する制御パラメータを指定します。この引数は、
%   STATSET の呼び出しで作成されます。パラメータ名とデフォルト値については、
%   STATSET('copulafit') を参照してください。
%   この引数は、'Gaussian' ファミリには適用されません。
%
%   参考 ECDF, COPULACDF, COPULAPDF, COPULARND.


%   Copyright 2007-2008 The MathWorks, Inc. 
