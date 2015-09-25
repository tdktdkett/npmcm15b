% ROTATEFACTORS   FA または PCA 荷重回転
%
%   B = ROTATEFACTORS(A) は、D×M の荷重行列 A を回転して、バリマックス
%   基準を最大にし、結果を B に出力します。変数と列に対応する A と B の
%   行は、因子に対応します。たとえば、A の(i,j) 番目の要素は、j 番目の
%   因子の i 番目の変数に対する係数です。行列 A は、通常、PRINCOMP または
%   PCACOV で作成される主成分要素係数または、FACTORAN で推定される荷重
%   因子を含みます。
%
%   B = ROTATEFACTORS(A, 'Method','orthomax', 'Coeff',GAMMA) は、A を
%   回転して、係数 GAMMA をもつオーソマックス基準を最大化します。すなわち、
%   B は、以下を最大化する A の直交回転です。
%
%      sum(D*sum(B.^4,1) - GAMMA*sum(B.^2,1).^2)
%
%   GAMMA に対するデフォルト値 1 は、バリマックス回転に対応します。その他
%   の可能性は、GAMMA = 0, M/2, D*(M-1)/(D+M-2) で、quartimax, equamax, 
%   parsimax に対応します。'method' パラメータに対して文字列 'varimax', 
%   'quartimax', 'equamax', 'parsimax' を与え、'Coeff' パラメータを省略
%   することもできます。
%
%   'Method' が 'orthomax', 'varimax', 'quartimax', 'equamax', 'parsimax' 
%   の場合、追加パラメータはつぎの通りです。
%
%      'Normalize'  - 荷重行列が回転に対して行を正規化するかどうかを示す
%                     フラグ。'on' (デフォルト) の場合、A の行は、単位
%                     ユークリッドノルムをもつように回転の前に正規化され、
%                     回転後に非正規化されます。'off' の場合、raw 荷重は
%                     回転され、出力されます。
%      'Reltol'     - T を求めるために用いられる反復アルゴリズムでの相対
%                     収束許容値。デフォルトは、sqrt(eps) です。
%      'Maxit'      - T を求めるために用いられる反復アルゴリズムの反復
%                     回数の制限。デフォルトは、250 です。
%
%   B = ROTATEFACTORS(A, 'Method','procrustes', 'Target',TARGET) は、
%   D×M のターゲット荷重行列 TARGET について A の斜交プロクラステス回転を
%   行います。
%
%   B = ROTATEFACTORS(A, 'Method','pattern', 'Target',TARGET) は、D×M の
%   ターゲットパターン行列について荷重行列 A の斜交回転を行い、結果を B に
%   出力します。TARGET は、B の "制限された" 要素を定義します。すなわち、
%   TARGET の 0 要素に対応する B の要素は、小さく制限され、TARGET の非零
%   要素に対応する B の要素は、任意の大きさを取ることが可能です。
%
%   'Method' が 'procrustes' または 'pattern' の場合、追加パラメータは
%   つぎの通りです。
%
%      'Type'  - 回転のタイプ。'orthogonal' の場合、回転は直交で、因子は
%                無相関です。'oblique' (デフォルト) の場合、回転は斜交で、
%                回転因子は、相関があります。
%
%   'Method' が 'pattern' のとき、TARGET に制約があります。A が M 列の
%   場合、直交回転に対して、TARGET の J 番目の列は少なくとも M-J 個の 
%   0 を含まなければなりません。斜交回転に対して、TARGET の各列は、少なく
%   とも M-1 個の 0 を含まなければなりません。
%
%   B = ROTATEFACTORS(A, 'Method','promax') は、プロマックス基準を最大化
%   するように A を回転し、これは、オーソマックス回転によって作成される
%   ターゲットによる斜交プロクラステス回転と等価です。プロマックスにより
%   内部的に用いられるオーソマックス回転を制御するために、4 つのオーソ
%   マックスパラメータを利用します。'promax' の追加パラメータは、つぎの
%   通りです。
%
%      'Power'  - プロマックスターゲット行列の作成用の指数。1 以上で
%                 なければなりません。デフォルトは 4 です。
%
%   [B,T} = ROTATEFACTORS(A, ...) は、B、すなわち B = A*T を作成するために
%   用いられる回転行列 T を出力します。inv(T'*T) は、回転因子の相関行列
%   です。直交回転に対しては、これは単位行列で、斜交回転に対しては、単位
%   対角要素をもちますが、これは非零の非対角要素です。
%
%   例:
%
%      X = randn(100,10);
%      L = princomp(X);
%
%      % PCA の最初の 3 要素のデフォルトの (正規化バリマックス) 回転
%      [L1,T] = rotatefactors(L(:,1:3));
%
%      % PCA の最初の 3 要素の Equamax 回転
%      [L2,T] = rotatefactors(L(:,1:3),'method','equamax');
%
%      % PCA の最初の 3 要因の Promax 回転
%      L = factoran(X,3,'Rotate','none');
%      [L3,T] = rotatefactors(L,'method','promax','power',2);
%
%      % PCA の最初の 3 要因のパターン回転
%      Tgt = [1 1 1 1 1 0 1 0 1; 0 0 0 1 1 1 0 0 0; 1 0 0 1 0 1 1 1 1]';
%      [L4,T] = rotatefactors(L,'method','pattern','target',Tgt);
%      inv(T'*T) % 回転因子の相関行列
%
% 参考  BIPLOT, FACTORAN, PRINCOMP, PCACOV, PROCRUSTES.


%   Copyright 1993-2007 The MathWorks, Inc.
