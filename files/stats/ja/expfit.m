% EXPFIT   �w���I�ȃf�[�^�ɑ΂���p�����[�^����ƐM�����
%
% PARMHAT = EXPFIT(X) �́A�^����ꂽ X �̃f�[�^�ŁA�w�����z�̈ʒu�p�����[�^
% mu �̍Ŗސ�����o�͂��܂��BX ���s��̏ꍇ�AEXPFIT �́AX �̊e��ɑ΂���
% �X�̃p�����[�^������o�͂��܂��B
%
% [PARMHAT,PARMCI] = EXPFIT(X) �́A�p�����[�^����ɑ΂��� 95% �̐M����Ԃ�
% �o�͂��܂��B
% 
% [PARMHAT,PARMCI] = EXPFIT(X,ALPHA) �́A�p�����[�^����ɑ΂��� 100(1-ALPHA)% ��
% �M����Ԃ��o�͂��܂��B
%
% ���̍\���́AX ���x�N�g���̂Ƃ��ɕK�v�ł��B
%
% [...] = EXPFIT(X,ALPHA,CENSORING) �́A���m�Ɋϑ����ꂽ�ϑ��l�ɑ΂��� 0 ���A
% �E���ł��؂�̊ϑ��l�ɑ΂���1�ƂȂ�AX �Ɠ����傫���̘_���x�N�g�����󂯓���܂��B
%
% [...] = EXPFIT(X,ALPHA,CENSORING,FREQ) �́AX �Ɠ����傫���̕p�x�x�N�g����
% �󂯓���܂��BFREQ �́A�ʏ�́AX �̗v�f�ɑΉ����邽�߂̐����̕p�x��
% �܂݂܂����A�C�ӂ̐����łȂ��񕉒l���܂ނ��Ƃ��ł��܂��B
%
% �����̃f�t�H���g�l���g�p����ɂ́AALPHA, CENSORING, FREQ �ɑ΂��āA
% [] ��n���Ă��������B
%
%   �Q�l EXPCDF, EXPINV, EXPLIKE, EXPPDF, EXPRND, EXPSTAT, MLE.


%   Copyright 1993-2004 The MathWorks, Inc.
