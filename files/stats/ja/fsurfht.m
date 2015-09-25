% FSURFHT   対話形式による関数のコンタープロット
%
% FSURFHT は、いずれの引数ももたないでコールする場合、PEAKS 関数の対話的な
% コンタープロットを表示します。
%
% FSURFHT(FUN,XLIM,YLIM) は、テキスト変数 FUN で設定された関数の対話形式
% でのコンタープロットを行います。x-軸の範囲は、XLIM = [XMIN XMAX] で、
% y-軸の範囲は、YLIM で設定されます。
%
% FSURFHT(FUN,XLIM,YLIM,VARARGIN) は、関数 FUN が、オプションパラメータを
% 使用可能にします。FUN の最初の2つの引数は、x-軸とy-軸の変数です。 
% 
% プロット上には、垂直方向と水平方向の基準線があり、これにより、カレントの
%  x-値と y-値を対話的に定義できます。この点線の白線をドラッグすると、
% 同時にz-値が計算され、(プロット上部に)更新されます。また、x-軸と y-軸の
% それぞれのエディット可能なテキストフィールドに、x-値と y-値を入力する
% ことにより、それらにより設定される z-値を得ることができます。


%   Copyright 1993-2006 The MathWorks, Inc. 
