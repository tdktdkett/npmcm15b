% QUANTILE   �T���v����Quantiles 
%
%   Y = QUANTILE(X,P)�́AX�̒l�̕��ʂ��o�͂��܂��BP�́A�ݐϊm���l�̃X�J��
%   �܂��̓x�N�g���ł��BX���x�N�g���̂Ƃ��AY��P�Ɠ����T�C�Y�ŁAY(i)�́A
%   P(i)�Ԗڂ̕��ʂ��܂݂܂��BX���s��̂Ƃ��AY��i�Ԗڂ̍s�́AX�̊e���
%   P(i)�Ԗڂ̕��ʂ��܂݂܂��BN-�����z��ɑ΂��āAQUANTILE�́A�ŏ��̔�
%   �V���O���g�������ɉ����ċ@�\���܂��B
%
%   Y = QUANTILE(X,P,DIM) �́A����DIM�ɉ����ĕ��ʂ��v�Z���܂��BY��DIM
%   �Ԗڂ̎����̒����́ALENGTH(P)�ł��B
%
%   ���ʂ́A0����1�̗ݐϊm�����g���Ďw�肳��܂��B
%   N�v�f�x�N�g��X�ɑ΂��āAQUANTILE�́A�ȉ��̂悤�ɕ��ʂ��v�Z���܂��B
%      1) X �̕��בւ���ꂽ�l�́A(0.5/N), (1.5/n),..., ((N-0.5)/N) 
%         ���ʂƂ��ĂƂ��܂��B
%      2) ���`���}�́A(0.5/N) ��((N-0.5)/N)�̊Ԃ̊m���ɑ΂��镪��
%         �̌v�Z�ɗp�����܂��B
%      3) X �̍ŏ��l�܂��͍ő�l�́A�͈͊O�̊m���ɑ΂��镪�ʂɊ��蓖�Ă��܂��B
%
%   QUANTILE �́ANaNs�������l�Ƃ��Ĉ����A�폜���܂��B
%
%   ���:
%      y = quantile(x,.50); % x�̃��W�A��
%      y = quantile(x,[.025 .25 .50 .75 .975]); % x�̂܂Ƃ�
%
% �Q�l  PRCTILE, IQR, MEDIAN.


%   Copyright 1993-2004 The MathWorks, Inc. 
