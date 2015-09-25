% NANCOV  NaN �𖳎����������U�s��
%
%   C = NANCOV(X) �́AX ���x�N�g���̏ꍇ�A�����l�Ƃ��� NaN ����舵���A
%   X �̒l�̕W�{�̕��U��Ԃ��܂��B�s��ɂ����āA�e�s�͊ϑ��ŁA�e��͕ϐ�
%   �̏ꍇ�ANANCOV(X) �́AX �̍s���g�p���ċ����U�s��̌v�Z�́ANaN �l��
%   �S���܂݂܂���BX �� Y �������v�f�������ꍇ�ANANCOV(X,Y) �́A
%   NANCOV([X(:) Y(:)]) �Ɠ����ɂȂ�܂��B
%   
%   NANCOV(X) �܂��� NANCOV(X,Y) �́AN>1 �̏ꍇ (N-1) �Ő��K������܂��B
%   �����ŁAN �́A�����l���폜������̊ϑ����ł��B����́A�ϑ������K���z
%   ���琬��ꍇ�ANANCOV(X) �������U�s��̍ł��o�C�A�X�̂Ȃ�����ɂ��܂��B
%   N=1 �ɑ΂��āACOV �� N �Ő��K������܂��B
%
%   NANCOV(X,1) �܂��� NANCOV(X,Y,1) �́AN �Ő��K�����A�����̕��ς�
%   �ւ���ϑ��� 2 �����[�����g�s��𐶐����܂��BNANCOV(X,Y,0) �� 
%   NANCOV(X,Y) �Ɠ����ŁANANCOV(X,0) �� NANCOV(X) �Ɠ����ł��B
%
%   C = NANCOV(...,'pairwise') �́A�� I�A�܂��� J �� NaN �l�̂Ȃ��s��
%   �g�p���� C(I,J) ���v�Z���܂��B���ʂ́A����s��ɂ͂Ȃ�Ȃ��\����
%   ����܂��BC = NANCOV(...,'complete') �́A�f�t�H���g�ŁA����炪 
%   I�A�܂��� J �łȂ��Ă��C�ӂ� NaN �l�����s���ȗ����܂��B
%
%   ���ς́A���ʂ��v�Z����O�Ɋe�񂩂�폜����܂��B
%
%   ��:  �� 4 �Ƒ��̗�̊ԂŔ��̋����U���������f�[�^�𐶐����܂��B
%       x = randn(30,4);       % �����ւ̃f�[�^
%       x(:,4) = sum(x,2);     % ���ւ𓱓�
%       x(2,3) = NaN;          % 1 �̌����l�𓱓�
%       c = nancov(x)          % �W�{�̋����U���v�Z
%
%   ���� X,Y �̃N���X�T�|�[�g:
%      float: double, single
%
%   �Q�l COV, VAR, NANVAR.


%   Copyright 1984-2007 The MathWorks, Inc. 
