%LHSNORM  正規分布を持つラテン超方格 (latin hypercube) 標本を作成
%
%   X=LHSNORM(MU,SIGMA,N) は、平均ベクトル MU と共分散行列 SIGMA を持つ
%   多変量正規分布から、サイズ N のラテン超方格 (latin hypercube) 標本 X を
%   作成します。X は、多変量正規分布からのランダム標本に類似していますが、
%   各列の周辺分布は、その標本の周辺分布が、理論的な正規分布に近くなるように
%   調節されます。
%
%   X=LHSNORM(MU,SIGMA,N,'ONOFF') は、標本の平滑化量を制御します。'ONOFF' が 
%   'off' の場合、各列は、確率のスケール上で等間隔に配置した点を持ちます。
%   言い換えると、各列は、値 G(.5/N), G(1.5/N), ..., G(1-.5/N) の順列です。
%   ここで、G は、列の周辺分布に対する正規逆累積分布です。'ONOFF' が 'on' 
%   (デフォルト) の場合、各列は、確率のスケール上で一様に分布した点を持ちます。
%   たとえば、0.5/N の代わりに、区間 (0/N,1/N) 上に、一様分布を持つ値を使用します。
%
%   [X,Z]=LHSNORM(...) は、X を得るために周辺を調整する前のオリジナルの
%   多変量正規標本 Z も返します。
%
%   参考 LHSDESIGN, MVNRND.


%   Copyright 1993-2008 The MathWorks, Inc. 
