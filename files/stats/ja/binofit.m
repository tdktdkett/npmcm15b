% BINOFIT   �񍀃f�[�^�ɑ΂���p�����[�^����ƐM�����
%
%   PHAT = BINOFIT(X,N) �́A�񍀕��z�ł̐����m���̐����Ԃ��܂��BX �� 
%   N �́A���ꂼ�ꐬ���񐔂Ǝ��s�񐔂��܂ރX�J���ł��BX �� N ���x�N�g����
%   �ꍇ�ABINOFIT �� I �Ԗڂ̗v�f�� X(I) �� N(I) �̃p�����[�^����ƂȂ�
%   ����̃x�N�g����Ԃ��܂��BX�A�܂��� N �̃X�J���l�́A���̓��͂Ɠ���
%   �T�C�Y�Ɋg������܂��B
%
% 
%   [PHAT, PCI] = BINOFIT(X,N,ALPHA) �́A�^����ꂽ�f�[�^�ɑ΂��āA�Ŗ�
%   ����l�� 100(1-ALPHA)% �̐M����Ԃ��o�͂��܂��BPCI �̊e�s�́APHAT ��
%   �Ή�����v�f�ɑ΂��鉺���Ə�����܂݂܂��B�f�t�H���g�ł́A�I�v�V����
%   �p�����[�^�� ALPHA = 0.05 �́A95% �̐M����ԂɑΉ����܂��B
%
%   ����:  ����ȊO�̂قƂ�ǂ̕��z�̃t�B�b�e�B���O�֐��ƈقȂ�ABINOFIT �́A
%   �ʁX�̕W�{���瑪��l�̏W���Ƃ��ăx�N�g�� X �������A����̃x�N�g����
%   �Ԃ��܂��B1 �̕W�{�ŁA1 �̃p�����[�^����ƐM����Ԃ� X �������ꍇ�A
%   N ���x�N�g���̏ꍇ�� BINOFIT(SUM(X),SUM(N)) ���AN ���X�J���̏ꍇ��
%   BINOFIT(SUM(X),N*LENGTH(X)) ���g�p���Ă��������B
% 
%   �Q�l BINOCDF, BINOINV, BINOPDF, BINORND, BINOSTAT, MLE. 


%   Copyright 1993-2007 The MathWorks, Inc. 
