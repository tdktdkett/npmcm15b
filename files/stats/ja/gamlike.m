% GAMLIKE   �K���}�ΐ��ޓx�֐��̕��̒l
%
% NLOGL = GAMLIKE(PARAMS,DATA)  �́A�^����ꂽ DATA �A�p�����[�^ PARAMS(1) = A �� 
% PARAMS(2) = B �ŕ]�������K���}���z�ɑ΂��āA�ΐ��ޓx�̕��̒l���o�͂��܂��B
% NLOGL �́A�X�J���ł��B
% 
% [NLOGL, AVAR] = GAMLIKE(PARAMS,DATA) �́AFisher ���s�� AVAR �̋t�s���
% �o�͂��܂��BPARAMS �̓��̓p�����[�^�l���Ŗސ���̏ꍇ�AAVAR �̑Ίp�v�f�́A
% �e�X�̃p�����[�^�̑Q�ߓI�ȕ��U�ɂȂ�܂��BAVAR �́A�\�����ꂽ���ł͂Ȃ��A
% �ϑ����ꂽ Fisher ���Ɋ�Â��܂��B
% 
% [...] = GAMLIKE(PARAMS,DATA,CENSORING) �́A�������ϑ����ꂽ�ϑ��l�ɑ΂��� 0�A
% �E���ł��؂�̊ϑ��l�ɑ΂��� 1 �ƂȂ� DATA �Ɠ����T�C�Y�̃u�[���A���x�N�g����
% �󂯓���܂��B
%
% [...] = GAMLIKE(PARAMS,DATA,CENSORING,FREQ) �́ADATA �Ɠ����傫����
% �p�x�x�N�g�����󂯓���܂��BFREQ �́A�ʏ�́ADATA �̗v�f�ɑΉ�����
% ���߂̐����̕p�x���܂݂܂����A�C�ӂ̐����łȂ��񕉒l���܂ނ��Ƃ�
% �ł��܂��B�����̃f�t�H���g�l���g�p����ɂ́ACENSORING �ɑ΂��� [] ��
% �n���Ă��������B
%
%   �Q�l GAMCDF, GAMFIT, GAMINV, GAMPDF, GAMRND, GAMSTAT.


%   B.A. Jones 11-4-94, Z. You 5-25-99
%   Copyright 1993-2004 The MathWorks, Inc.
