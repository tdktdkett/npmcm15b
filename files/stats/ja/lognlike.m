% LOGNLIKE   �ΐ����K���z�ɑ΂��镉�̑ΐ��ޓx
%
%   NLOGL = LOGNLIKE(PARAMS,DATA) �́A�p�����[�^ PARAMS(1) = MU �� 
%   PARAMS(2) = SIGMA �����ΐ����K���z�ɑ΂��� DATA �̕��̑ΐ��ޓx��
%   �Ԃ��܂��BMU�� SIGMA�́A���ꂼ��֘A�̐��K���z�̕��ςƕW���΍��ł��B
%   NLOGL �̓X�J���ł��B
%
%   [NLOGL, AVAR] = LOGNLIKE(PARAMS,DATA) �́A�t�B�b�V���[���s�� AVAR ��
%   �t���o�͂��܂��BPARAMS �̓��̓p�����[�^���Ŗސ���ł���ꍇ�AAVAR ��
%   �Ίp�v�f�́A�����̑Q�ߓI�ȕ��U�l�ł��BAVAR �́A�\�z���ꂽ���ł�
%   �Ȃ��A�ϑ����ꂽ�t�B�b�V���[���Ɋ�Â��܂��B
%
%   [...] = LOGNLIKE(PARAMS,DATA,CENSORING) �́A���m�Ɋϑ����ꂽ�ϑ��l��
%   �΂��� 0 ���A�E���ł��؂�̊ϑ��l�ɑ΂��� 1 �ƂȂ�ADATA �Ɠ����T�C�Y��
%   �_���x�N�g�����󂯓���܂��B
%
%   [...] = LOGNLIKE(PARAMS,DATA,CENSORING,FREQ) �́ADATA �Ɠ����T�C�Y��
%   �p�x�x�N�g�����󂯓���܂��BFREQ �́A�ʏ�́ADATA �̗v�f�ɑΉ�����
%   ���߂̐����̕p�x���܂݂܂����A�C�ӂ̐����łȂ��񕉒l���܂ނ��Ƃ�
%   �ł��܂��B�����̃f�t�H���g�l���g�p����ɂ́ACENSORING �ɑ΂��� 
%   [] ��n���Ă��������B
%
%   �Q�l LOGNCDF, LOGNFIT, LOGNINV, LOGNPDF, LOGNRND, LOGNSTAT.


%   Copyright 1993-2007 The MathWorks, Inc.
