%ZSCORE  �W�������ꂽ z �X�R�A
%
%   Z = ZSCORE(X) �́A���S������AX �Ɠ����T�C�Y�ŃX�P�[�����O���ꂽ�o�[�W������
%   �Ԃ��܂��B�x�N�g������ X �ɑ΂��āAZ �� z-�X�R�A (X-MEAN(X)) ./ STD(X) ��
%   �x�N�g���ł��B�s�� X �ɑ΂��āAz �X�R�A�́AX �̊e��ɉ����ĕ��ςƕW���΍���
%   �g���Čv�Z����܂��B�����̔z��ɑ΂��āAz �X�R�A�́A1 �Ԗڂ̔�V���O���g��
%   ���� (first non-singleton dimension) �ɉ����ĕ��ςƕW���΍����g���Čv�Z����܂��B
%
%   Z �̗�́A�W�{�̕��� 0 �ƕW�{�̕W���΍� 1 �������܂� (X �̗񂪒萔�łȂ�
%   �ꍇ�AZ �̗�� 0 �Œ萔�ɂȂ�܂�)�B
%
%   [Z,MU,SIGMA] = ZSCORE(X) �́A����ɁAMU �� MEAN(X) ���ASIGMA �� STD(X) ��
%   �Ԃ��܂��B
%
%   [...] = ZSCORE(X,1) �́ASTD(X,1) ���g���āA���Ȃ킿�AN-1 �ł͂Ȃ� N ��
%   �g���ĕW���΍����v�Z���邱�ƂŁAX �𐳋K�����܂��B�����ŁAN �� ZSCORE ��
%   �@�\���鎟���̒����ł��BZSCORE(X,0) �́AZSCORE(X) �Ɠ����ł��B
%
%   [...] = ZSCORE(X,FLAG,DIM) �́AX �̎��� DIM �ɉ����ē��삷�邱�ƂŁAX ��
%   �W�������܂��BN-1 �Ńf�t�H���g�̐��K�����g�p����ɂ� FLAG==0 ���AN ��
%   �g�p����ꍇ�� 1 ��n���Ă��������B
%
%   �Q�l MEAN, STD.


%   Copyright 1993-2008 The MathWorks, Inc. 
