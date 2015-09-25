%NORMSPEC  設定した範囲内での正規密度のプロット
%
%    NORMSPEC(SPECS) は、SPECS の範囲内の部分をシェーディングした標準正規密度を
%    プロットします。SPECS は、仕様範囲の上限と下限を含む 2 要素のベクトルです。
%    下限の範囲の制限がない場合は SPECS(1)=-Inf に、上限の制限がない場合は 
%    SPECS(2)=Inf に設定します。
%
%    NORMSPEC(SPECS,MU,SIGMA) は、パラメータ MU と SIGMA で正規密度の SPECS の
%    範囲内の部分をシェーディングします。デフォルトは、MU=0 と SIGMA=1 です。
%
%    NORMSPEC(SPECS,MU,SIGMA,REGION) は、SPECS の範囲の 'inside' または 
%    'outside' のどちらかの部分をシェーディングします。デフォルトは、
%    REGION='inside' です。
%
%    [P] = NORMSPEC(...) は、シェーディングする領域の確率 P を返します。
%
%    [P,H] = NORMSPEC(...) は、line オブジェクトのハンドル H を返します。


%   Copyright 1993-2008 The MathWorks, Inc. 
