% INCONSISTENT   �N���X�^�c���[�̐������̂Ȃ� (inconsistent) �l
%
% T = INCONSISTENT(Z) �́A�K�w�I�ȃN���X�^�c���[ Z �̂��ꂼ��t�̂Ȃ�
% �m�[�h�̐������̂Ȃ��l���v�Z���܂��BZ �́A�֐� LINKAGE ���琶�������
% (M-1)�~3 �̍s��ł��B���ꂼ��̐������̂Ȃ��l�́A�����̃N���X�^����
% �Z�����ꂽ�T�u�N���X�^�Ԃ̕������r�����A���̃m�[�h�ɂ���ĕ\�����
% 2�̃N���X�^�Ԃ̗Z���̕�����ł��B
% 
% T = INCONSISTENT(Z, DEPTH) �́A�e�m�[�h��艺�̐[�� DEPTH �ɂ��邱�Ƃɂ��
% �������̂Ȃ��l���v�Z���܂��B
% 
% Y �́AZ �ŕ\�����t�̂Ȃ��m�[�h�̂��ꂼ��ɑΉ�����s������ (M-1)�~4 ��
% �s��ł��BINCONSISTENT �́A�C�ӂ̗t�m�[�h�ȊO�ɁA�m�[�h (M+i) ��艺��
% DEPTH ��菬�����m�[�h�̐ݒ肪���򂵂� S_i ���g���ăm�[�h (M+i) �ɑ΂���
% �������̂Ȃ��l���v�Z���܂��B
% 
%      Y(i,1) = mean(Z(S_i,3))  S_i �̃m�[�h�̍����̕���
%      Y(i,2) = std(Z(S_i,3))  S_i �̃m�[�h�̍����̕W���΍�
%      Y(i,3) = length(S_i)  S_i �̃m�[�h�̐�
%      Y(i,4) = (Z(i,3) - Y(i,1))/Y(i,2)  �������̂Ȃ��l
%
% DEPTH �ɑ΂���f�t�H���g�l�́A2 �ł��B
%
%   �Q�l PDIST, LINKAGE, COPHENET, DENDROGRAM, CLUSTER, CLUSTERDATA.


%   Copyright 1993-2004 The MathWorks, Inc. 
