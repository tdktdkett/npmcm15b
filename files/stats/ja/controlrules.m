% CONTROLRULES  SPC �f�[�^�ɑ΂���Ǘ����[�� (Western Electric �܂��� Nelson)
%
%   R=CONTROLRULES(RULES,X,CL,SIGMA) �́A�x�N�g�� X �̂ǂ̓_���Ǘ����[����
%   �ᔽ���邩�𔻒肵�܂��BCL �͒������̃x�N�g���ł��BSIGMA �̓V�O�}���E��
%   �x�N�g���ł��B(��ʓI�ɁA�Ǘ��}��̊Ǘ����E�́ACL-3*SIGMA �� CL+3*SIGMA 
%   �̒l�ł��B) RULES �́A�Ǘ����[�����A�܂��́A�����̊Ǘ����[�������܂�
%   �Z���z��ł��BX �� N �̒l�������ARULES �� M �̃��[�����܂ޏꍇ�AR ��
%   �_ I �����[�� J �Ɉᔽ�����ꍇ�� R(I,J) = true �ƂȂ� N�~M �̍s��ł��B
%
%   ���̊Ǘ����E�����p�\�ł��B
%
%         'we1'   % CL+3*SIGMA �̏�� 1 �_
%         'we2'   % CL+2*SIGMA �̏�� 2/3
%         'we3'   % CL+SIGMA �̏�� 4/5
%         'we4'   % CL �̏�� 8/8
%         'we5'   % CL-3*SIGMA �̉��� 1
%         'we6'   % CL-2*SIGMA �̉��� 2/3
%         'we7'   % CL-SIGMA �̉��� 4/5
%         'we8'   % CL �̉��� 8/8
%         'we9'   % CL-SIGMA �� CL+SIGMA �̊Ԃ� 15/15
%         'we10'  % CL-SIGMA �̉��A�܂��� CL+SIGMA �̏�� 8/8
%
%         'n1'   % CL-3*SIGMA �̉��A�܂��� CL+3*SIGMA �̏�� 1 �_
%         'n2'   % CL �Ɠ������� 9/9
%         'n3'   % 6/6 �̑���
%         'n4'   % �㉺�Ɍ��݂ɕ��� 14
%         'n5'   % �������� CL-2*SIGMA �̉��A�܂���CL+2*SIGMA �̏�� 2/3
%         'n6'   % �������� CL-SIGMA �̉��A�܂��� CL+SIGMA �̏�� 4/5
%         'n7'   % CL-SIGMA �� CL+SIGMA �̊Ԃ� 15/15
%         'n8'   % ������ CL-SIGMA �̉��A�܂��� CL+SIGMA �̏�� 8/8
%
%         'we'   we1-we10 �̂��ׂẴ��[�� (Western Electric ���[��)
%         'n'    n1-n8 �̂��ׂẴ��[�� (Nelson ���[��)
%
%   [R,RULES]=CONTROLRULES(...) �́A�K�p���ꂽ���[�������X�g���� M ��
%   �e�L�X�g������̃Z���z��Ƃ��� RULES ���Ԃ��܂��B
%
%   ������ X, CL, SE �̂����ꂩ�̒l�Ƃ��� NaN �����C�ӂ̓_�́A�ᔽ����
%   ���[���ƍl����ꂸ�A���̓_�ɑ΂��郋�[���ɃJ�E���g����܂���B�����̓_��
%   �΂��āA�_ I �ł̃��[���ᔽ�́A���̃��[���Ńg���K���ꂽ�_ I �̍Ō��
%   �_�̐ݒ�������܂��B�_ I �����[���̏����Ɉᔽ����_�� 1 �ł���ꍇ�̂�
%   ����̓��[���Ɉᔽ�����ƍl�����܂��B
%
%   �Q�l CONTROLCHART.


%   Copyright 2006-2007 The MathWorks, Inc. 
