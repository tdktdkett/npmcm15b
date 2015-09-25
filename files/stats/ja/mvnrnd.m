%MVNRND  多変量正規分布からの乱数ベクトル
%
%   R = MVNRND(MU,SIGMA) は、平均ベクトル MU と共分散行列 SIGMA を使って
%   多変量正規分布から抽出された乱数ベクトルの N 行 D 列の行列 R を返します。
%   MU は、N 行 D 列の行列で、MVNRND は、MU の対応する行を使って R の各行を
%   生成します。SIGMA は、D 行 D 列の対称半正定行列か、D x D x N の配列です。
%   SIGMA が配列の場合、MVNRND は、SIGMA の対応するページを使って、たとえば 
%   MVNRND が MU(I,:) と SIGMA(:,:,I) を使って R(I,:) を計算するように、
%   R の各行を生成します。共分散行列が対角行列で、対角に沿った分散と対角でない 
%   0 の共分散を含む場合、SIGMA は、ちょうど対角成分が含まれるように 
%   1 行 D 列の行列、または 1 x D x N の配列で指定することができます。
%   MU が 1 行 D 列のベクトルの場合、MVNRND は、SIGMA の最後の次元に
%   一致するように複製します。
%
%   R = MVNRND(MU,SIGMA,N) は、共通の 1 行 D 列の平均ベクトルと、共通の 
%   D 行 D 列の共分散行列 SIGMA を持つ多変量正規分布から選択された乱数ベクトルの 
%   N 行 D 列の行列 R を返します。
%
%   例:
%
%      mu = [1 -1]; Sigma = [.9 .4; .4 .3];
%      r = mvnrnd(mu, Sigma, 500);
%      plot(r(:,1),r(:,2),'.');
%
%   参考 MVTRND, MVNPDF, MVNCDF, NORMRND.


%   Copyright 1993-2009 The MathWorks, Inc.
