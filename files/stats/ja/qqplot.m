%QQPLOT  �o���l����-�l���ʃv���b�g�̕\��
%
%   QQPLOT(X) �́A�x�N�g�� X �̃f�[�^�̎l���ʐ��ƕW�����K���z�̎l���ʐ���
%   �o�� QQ-�v���b�g���쐬���܂��B
%
%   QQPLOT(X,PD) �́A�x�N�g�� X �̃f�[�^�̎l���ʐ��� ProbDist �I�u�W�F�N�g 
%   PD �Ŏw�肳�ꂽ���z�̎l���ʐ��̌o�� QQ-�v���b�g���쐬���܂��B
%
%   QQPLOT(X,Y) �́AX �̎l���ʐ��ƃx�N�g�� Y �̃f�[�^�̎l���ʐ��̌o�� 
%   QQ-�v���b�g���쐬���܂��B
%
%   HQQPLOT(X,Y,PVEC) �́A�x�N�g�� PVEC ���g���āA�v���b�g�����l���ʐ���
%   �ݒ肷�邱�Ƃ��ł��܂��B�f�t�H���g�̎l���ʐ��́AX �� Y �̎l���ʐ����
%   �������Ȃ�܂��B
%
%   H = QVEC(...) �́A�v���b�g���ꂽ���C���̃n���h���܂ރx�N�g�� H ��Ԃ��܂��B
%
%   �l����-�l���ʃv���b�g�̖ړI�́AX ���̕W�{������̕��z����`�悳��Ă��邩�A
%   �܂��́AX �� Y ���̕W�{���������z���瓾���Ă��邩����肷�邱�Ƃł��B
%   ���镪�z���V�t�g������A(�ʒu�ƃX�P�[���p�����[�^�̈قȂ�) ���̕��z����
%   �ăX�P�[�����O�����ꍇ�ł��A�W�{���������z (�����`��) ���瓾���Ă���΁A
%   �v���b�g�͐��`�ɂȂ�܂��B1 �Ԗڂ� 3 �Ԗڂ̎l���ʐ���ʂ����́A�_��
%   ���`�ł��邩�ǂ����𔻒肷�邽�߂ɖ𗧂��܂��B
%
%   ���m�Ȋϑ��l�Ɗ����Ɏˉe�����l��ǂݎ��ɂ́A�f�[�^�J�[�\����
%   �g�p���Ă��������B�ϐ��Ɍ����l���Ȃ��A���̕ϐ����f�[�^�������Ȃ��ꍇ�́A
%   �ϐ��̊ϑ��ԍ����\������܂��B
%
%   ��:
%        % �K�\�����̉��i�͐��K���z�ɏ]���܂���?
%        load gas
%        qqplot(price1)
%
%        % �ʂ̎��Ԃ̉��i�͓������z�ɂȂ�܂���?
%        qqplot(price1,price2)
%
%   �Q�l NORMPLOT, PROBPLOT.


%   Copyright 1993-2009 The MathWorks, Inc. 