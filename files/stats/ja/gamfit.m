% GAMFIT   �K���}���z�f�[�^�̃p�����[�^���� 
%
% PARMHAT = GAMFIT(X) �́A�K���}���z�� X �̃f�[�^�ɓK�����邽�߂̃p�����[�^��
% �Ŗސ�����o�͂��܂��BPARMHAT(1) �� PARMHAT(2) �́A���ꂼ��`��ƃX�P�[��
% �p�����[�^ A �� B �̐���ł��B
%
% [PARMHAT,PARMCI] = GAMFIT(X) �́A�p�����[�^����ɑ΂��� 95% �̐M����Ԃ�
% �o�͂��܂��B
%
%  [PARMHAT,PARMCI] = GAMFIT(X,ALPHA) �́A�p�����[�^����ɑ΂��� 100(1-ALPHA)% ��
% �M����Ԃ��o�͂��܂��B
%
% [...] = GAMFIT(X,ALPHA,CENSORING) ���m�Ɋϑ����ꂽ�ϑ��l�ɑ΂��� 0 ���A
% �E���ł��؂�̊ϑ��l�ɑ΂���1�ƂȂ�AX �Ɠ����傫���̘_���x�N�g�����󂯓���܂��B
%
% [...] = GAMFIT(X,ALPHA,CENSORING,FREQ) �́AX �Ɠ����傫���̕p�x�x�N�g����
% �󂯓���܂��BFREQ �́A�ʏ�́AX �̗v�f�ɑΉ����邽�߂̐����̕p�x��
% �܂݂܂����A�C�ӂ̐����łȂ��񕉒l���܂ނ��Ƃ��ł��܂��B
%
% [...] = GAMFIT(X,ALPHA,CENSORING,FREQ,OPTIONS) �́A����炪�ł��؂���Ƃ���
% ML�̐�����v�Z���邽�߂Ɏg���锽���A���S���Y���ɑ΂���R���g���[���p�����[�^��
% �w�肵�܂��B
%
% �����̃f�t�H���g�l���g�p����ɂ́AALPHA, CENSORING, FREQ �ɑ΂��āA
% [] ��n���Ă��������B
%
%   �Q�l GAMCDF, GAMINV, GAMLIKE, GAMPDF, GAMRND, GAMSTAT, MLE, STATSET.


%   Copyright 1993-2004 The MathWorks, Inc.
