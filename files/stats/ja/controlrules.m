% CONTROLRULES  SPC データに対する管理ルール (Western Electric または Nelson)
%
%   R=CONTROLRULES(RULES,X,CL,SIGMA) は、ベクトル X のどの点が管理ルールを
%   違反するかを判定します。CL は中央線のベクトルです。SIGMA はシグマ限界の
%   ベクトルです。(一般的に、管理図上の管理限界は、CL-3*SIGMA と CL+3*SIGMA 
%   の値です。) RULES は、管理ルール名、または、複数の管理ルール名を含む
%   セル配列です。X が N の値をもち、RULES が M のルールを含む場合、R は
%   点 I がルール J に違反した場合に R(I,J) = true となる N×M の行列です。
%
%   つぎの管理限界が利用可能です。
%
%         'we1'   % CL+3*SIGMA の上の 1 点
%         'we2'   % CL+2*SIGMA の上の 2/3
%         'we3'   % CL+SIGMA の上の 4/5
%         'we4'   % CL の上の 8/8
%         'we5'   % CL-3*SIGMA の下の 1
%         'we6'   % CL-2*SIGMA の下の 2/3
%         'we7'   % CL-SIGMA の下の 4/5
%         'we8'   % CL の下の 8/8
%         'we9'   % CL-SIGMA と CL+SIGMA の間の 15/15
%         'we10'  % CL-SIGMA の下、または CL+SIGMA の上の 8/8
%
%         'n1'   % CL-3*SIGMA の下、または CL+3*SIGMA の上の 1 点
%         'n2'   % CL と同じ側の 9/9
%         'n3'   % 6/6 の増減
%         'n4'   % 上下に交互に並ぶ 14
%         'n5'   % 同じ側の CL-2*SIGMA の下、またはCL+2*SIGMA の上の 2/3
%         'n6'   % 同じ側の CL-SIGMA の下、または CL+SIGMA の上の 4/5
%         'n7'   % CL-SIGMA と CL+SIGMA の間の 15/15
%         'n8'   % 両側の CL-SIGMA の下、または CL+SIGMA の上の 8/8
%
%         'we'   we1-we10 のすべてのルール (Western Electric ルール)
%         'n'    n1-n8 のすべてのルール (Nelson ルール)
%
%   [R,RULES]=CONTROLRULES(...) は、適用されたルールをリストする M 個の
%   テキスト文字列のセル配列として RULES も返します。
%
%   それらの X, CL, SE のいずれかの値として NaN をもつ任意の点は、違反した
%   ルールと考えられず、他の点に対するルールにカウントされません。複数の点に
%   対して、点 I でのルール違反は、そのルールでトリガされた点 I の最後の
%   点の設定を示します。点 I がルールの条件に違反する点の 1 つである場合のみ
%   それはルールに違反したと考えられます。
%
%   参考 CONTROLCHART.


%   Copyright 2006-2007 The MathWorks, Inc. 
