%LOGNFIT  �ΐ����K�̃f�[�^�ɑ΂���p�����[�^����ƐM�����
%
%   PARMHAT = LOGNFIT(X) �́AX �ɋߎ�����ΐ����K���z�ɑ΂���p�����[�^��
%   �Ŗސ���̃x�N�g�� PARMHAT(1) = MU �� PARMHAT(2) = SIGMA ��Ԃ��܂��B
%   MU �� SIGMA�́A���ꂼ��֘A���鐳�K���z�̕��ςƕW���΍��ł��B
%
%   [PARMHAT,PARMCI] = LOGNFIT(X) �́A�p�����[�^����ɑ΂��� 95% �̐M����Ԃ�
%   �Ԃ��܂��B
%
%   [PARMHAT,PARMCI] = LOGNFIT(X,ALPHA) �́A�p�����[�^����ɑ΂��� 
%   100(1-ALPHA)% �̐M����Ԃ�Ԃ��܂��B
%
%   [...] = LOGNFIT(X,ALPHA,CENSORING) �́A���m�Ɋϑ����ꂽ�ϑ��l�ɑ΂��� 0�A
%   �E���ł��؂�̊ϑ��l�ɑ΂��� 1 �ƂȂ�AX �Ɠ����T�C�Y�̘_���x�N�g����
%   �󂯓���܂��B
%
%   [...] = LOGNFIT(X,ALPHA,CENSORING,FREQ) �́AX �Ɠ����T�C�Y�̕p�x�x�N�g��
%   ���󂯓���܂��BFREQ �́A�ʏ�́AX �̗v�f�ɑΉ����邽�߂̐����̕p�x��
%   �܂݂܂����A�C�ӂ̐����łȂ��񕉒l���܂ނ��Ƃ��ł��܂��B
%
%   [...] = LOGNFIT(X,ALPHA,CENSORING,FREQ,OPTIONS) �́A�Ŗ� (ML) ����̌v�Z
%   �Ɏg�p����锽���A���S���Y���ɑ΂��鐧��p�����[�^���w�肵�܂��B���̈����́A
%   STATSET �̌Ăяo���ō쐬����܂��B�p�����[�^���ƃf�t�H���g�l�ɂ��ẮA
%   STATSET('lognfit') ���Q�Ƃ��Ă��������B
%
%   �����̃f�t�H���g�l���g�p����ɂ́AALPHA, CENSORING, FREQ �ɑ΂��āA
%   [] ��n���Ă��������B
%
%   �ł��؂肪�Ȃ��ꍇ�ASIGMAHAT �� log(X) �̕��U�̃o�C�A�X�̂Ȃ�������
%   �������ł��B�ł��؂���ꍇ�ASIGMAHAT �́A�Ŗސ���ł��B
%
%   �Q�l LOGNCDF, LOGNINV, LOGNLIKE, LOGNPDF, LOGNRND, LOGNSTAT, MLE,
%        STATSET.


%   Copyright 1993-2009 The MathWorks, Inc.
