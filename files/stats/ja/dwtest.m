%DWTEST  線形回帰の自己相関に対するダービン-ワトソン検定
%
%    [P,DW]=DWTEST(R,X) は、線形回帰からの残差のベクトル R でダービン-ワトソン
%    検定を行ないます。ここで、X は、線形回帰からの計画行列です。P は検定に
%    対して計算された p-値で、DW はダービン-ワトソン統計量です。ダービン-ワトソン
%    検定は、残差間に自己相関のある選択肢に対して残差が独立しているかどうかの
%    テストに使用されます。
%
%    [...]=DWTEST(R,X,'METHOD') は、p-値を計算するために使われる手法を指定
%    します。'METHOD' は、以下のいずれかになります。
%       'exact'        PAN アルゴリズムを使用して正確に p-値を計算します
%                      (標本サイズが 400 より小さい場合のデフォルト)。
%       'approximate'  正規近似を使用して p-値を計算します
%                      (標本サイズが 400 以上の場合のデフォルト)。
%
%    [...]=DWTEST(R,X,'METHOD','TAIL') は、TAIL で指定される対立仮説に対して
%    検定を行ないます。
%       'both'   "系列相関が 0 ではない" (両側検定。デフォルト)
%       'right'  "系列相関が 0 より大きい" (右側検定)
%       'left'   "系列相関が 0 より小さい" (左側検定)
%
%   例:
%      % 直線を人口調査のデータに近似し、残差内の自己相関を参照します
%      load census
%      n = length(cdate);
%      X = [ones(n,1), cdate];
%      [b,bint,r1] = regress(pop,X);
%      p1 = dwtest(r1,X)
%      plot(cdate,r1,'b-', cdate,zeros(n,1),'k:')
%
%      % 二乗項を加えると自己相関は減りますが、それはまだ 0 とは有意な
%      % 差があります
%      X = [ones(n,1), cdate, cdate.^2];
%      [b,bint,r2] = regress(pop,X);
%      p2 = dwtest(r2,X)
%      line(cdate,r2,'color','r')
%
%   参考 REGRESS.


%   Copyright 1993-2008 The MathWorks, Inc. 
