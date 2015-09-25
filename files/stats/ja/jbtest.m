% JBTEST �����̐��K���� Jarque-Bera ��������
%
%   H = JBTEST(X) �́A�����̐��K���� Jarque-Bera �K����������s�Ȃ��܂��B
%   ���Ȃ킿�A�x�N�g�� X ���̃f�[�^�����w��̐��K���z���琬��AH �Ɍ����
%   ���ʂ�Ԃ��܂��BH=0 �́A5% �̗L�Ӑ����Ŋ��p�ł��Ȃ��A������ ("�f�[�^��
%   ���K���z�ł���") �������܂��BH=1 �́A5% �̃��x���Ŋ��p�\�ȋA��������
%   �����܂��B
%
%   JBTEST �́AX ���� NaN �������l�Ƃ��Ĉ����A�����𖳎����܂��B
%
%   Jarque-Bera ����́A���S�Ɏw�肳�ꂽ�A�����z�����m�ł���A���̃p�����[�^
%   �𐄒肵�Ȃ���΂Ȃ�Ȃ��Ƃ����󋵂ɓK���������̓K��������ł��B�傫��
%   �W�{�T�C�Y�ɑ΂��āA���蓝�v�ʂ́A2 �̎��R�x�����J�C��敪�z��
%   �����܂��B�����e�E�J�����V�~�����[�V�������g���Čv�Z���ꂽ���p���E�́A
%   N <= 2000 �̕W�{�T�C�Y�ƗL�Ӑ��� 0.001 <= ALPHA <= 0.50 �ɑ΂���\��
%   �Ȃ�܂��BJBTEST �́A�傫�ȕW�{�T�C�Y�ɑ΂��āA�O�}���s�Ȃ����߂�
%   ��͓I�ߎ����g�p���A�\���ւ̓��}�ɂ��^����ꂽ����ɑ΂�����p���E��
%   �v�Z���܂��B
%
%   Jarque-Bera �����ƌ��蓝�v�ʂ͂��̂Ƃ���ł��B
%
%                    �A������:  X �́A���w��̕��ςƕW���΍��������K
%                               ���z�ł��B
%                    �Η�����:  X �͐��K���z�ł͂���܂���B����́A����
%                               ���z�̃s�A�\�����̑Η��ɑ΂��Čv�悳��܂��B
%                  ���蓝�v��:  JBSTAT = N*(SKEWNESS^2/6 + (KURTOSIS-3)^2/24),
%                               �����ŁAN �́A3 �Ƃ��Ē�`���ꂽ���K���z��
%                               �W�{�T�C�Y�Ɛ�x�ł��B
%
%   H = JBTEST(X,ALPHA) �́A�L�Ӑ��� ALPHA �Ō�����s�Ȃ��܂��BALPHA �́A
%   �͈� 0.001 <= ALPHA <= 0.50 ���̃X�J���ł��B�͈͊O�̗L�Ӑ����Ō����
%   �s�Ȃ��ɂ́AMCTOL �̓��͈������g�p���Ă��������B
%
%   [H,P] = JBTEST(...) �́A���p���E�̃��b�N�A�b�v�e�[�u�����ւ̋t��Ԗ@��
%   �g���Čv�Z���ꂽ p-�l P ��Ԃ��܂��B������ P �̒l�́A�A�������̑Ó�����
%   �^�킵���Ƃ���܂��BJBTEST �́AP ���\�͈͓̔��Ō�����Ȃ��A���Ȃ킿�A
%   ��� [0.001, 0.50] �̊O���ɂ���ꍇ�A�x���A�܂��͋�Ԃ̒[�_��Ԃ��܂��B
%   ���̏ꍇ�A��萸�x�̍����l���v�Z���邽�߂ɁAMCTOL �̓��͈������g�p����
%   ���Ƃ��\�ł��B
%
%   [H,P,JBSTAT] = JBTEST(...) �́A���蓝�v�� JBSTAT ��Ԃ��܂��B
%
%   [H,P,JBSTAT,CRITVAL] = JBTEST(...) �́A����ɑ΂�����p���E CRITVAL 
%   ��Ԃ��܂��BJBSTAT > CRITVAL �̏ꍇ�A�A�������́AALPHA �̗L�Ӑ�����
%   ���p�\�ł��B
%
%   [H,P,...] = JBTEST(X,ALPHA,MCTOL) �́A���炩���ߌv�Z���ꂽ�\�̒l��
%   ��Ԃ��g�p����̂ł͂Ȃ��A���� P �ɑ΂��ă����e�E�J�����ߎ����v�Z
%   ���܂��B����́AALPHA �܂��� P ���A���b�N�A�b�v�e�[�u���͈̔͊O��
%   ����Ƃ��L���ł��BJBTEST �́AMCTOL ��菬���� P �ɑ΂��� MC �W���덷
%   SQRT(P*(1-P)/MCREPS) ���쐬����̂ɏ\���ȑ傫���� MC �̔����� MCREPS 
%   ��I�����܂��B
%
%   �Q�l LILLIETEST, KSTEST, KSTEST2, CDFPLOT.


%   Copyright 1993-2007 The MathWorks, Inc.