%TRIMMEAN  �g��������
%
%   M = TRIMMEAN(X,PERCENT) �́AX �̒l�̃g�������ς��v�Z���܂��B�x�N�g����
%   ���͂̏ꍇ�AM �� K �f�[�^�̍ō��l�ƍŒ�l�������� X �̕��ςɂȂ�܂��B
%   �����ŁAK=N*(PERCENT/100)/2 �ŁAN �� X ���̒l�̐��ł��B�s��̓��͂̏ꍇ�A
%   M �� X �̊e��̃g�������ς��܂ލs�x�N�g���ɂȂ�܂��BN-�����z��̏ꍇ�A
%   TRIMMEAN �́A�ŏ��̔�V���O���g�������ɉ����ď������s���܂��B
%   PERCENT �́A0 �� 100 �̊Ԃ̃X�J���ł��B
%
%   M = TRIMMEAN(X,PERCENT,FLAG) �́AK �������łȂ��ꍇ�A�ǂ̂悤�Ƀg������
%   �s�����𐧌䂵�܂��BFLAG �́A�ȉ��̂����ꂩ����I�����邱�Ƃ��ł��܂��B
%
%      'round'    K ���ߖT�̐����Ɋۂ߂� (K �������̔��� .5 �̏ꍇ�A
%                 �ł������������Ɋۂ߂܂�)�B����̓f�t�H���g�ł��B
%      'floor'    K �����̏����� (���̕�����) �����Ɋۂ߂܂��B
%      'weight'   I ���������� F ���������� K=I+F �̏ꍇ�A(I+1) �Ԗڂ� 
%                 (N-I) �Ԗڂ̒l�ɑ΂���d�� (1-F) �Ƃ����̊Ԃ̒l�ɑ΂���
%                 ���ׂĂ̏d�݂ŏd�ݕt�����ς��v�Z���܂��B
%
%   M = TRIMMEAN(X,PERCENT,FLAG,DIM) �́AX �̎��� DIM �ɉ����ăg�������ς�
%   �s�Ȃ��܂��B
%
%   �g�������ς́A�T���v���l�̃��o�X�g����ł��B
%
%   TRIMMEAN �́A�����l�Ƃ��� NaN �������A�폜���܂��B
%
%   �Q�l MEAN, NANMEAN, IQR.


%   Copyright 1993-2009 The MathWorks, Inc.
