%REFLINE  プロットに基準線を追加
%
%   REFLINE(SLOPE,INTERCEPT) は、現在の Figure に設定した SLOPE と INTERCEPT 
%   を持つラインを加えます。
%
%   REFLINE(SLOPE) は、SLOPE が 2 要素ベクトルの場合、次の式で示されるライン
%   を Figure に加えます。
%        y = SLOPE(2) + SLOPE(1)*x
%   POLYFIT を参照してください。
%
%   H = REFLINE(SLOPE,INTERCEPT) は、line オブジェクトのハンドル番号を H に
%   返します。
%
%   入力引数を持たない REFLINE は、LSLINE で認識された点に基づきプロット上に
%   最小二乗ラインを重ね書きします。
%
%   参考 POLYFIT, POLYVAL, LSLINE.


%   Copyright 1993-2009 The MathWorks, Inc. 
