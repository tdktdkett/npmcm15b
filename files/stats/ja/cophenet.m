% COPHENET   �R�[�t�F�����֌W��
%
%   C = COPHENET(Z,Y) �́AZ �ŕ\�����K�w�I�ȃN���X�^�c���[�ɑ΂���
%   �R�[�t�F�����֌W�����v�Z���܂��BZ �́A�֐� LINKAGE �̏o�͂ł��B
%   Y �́A�֐� PDIST �̏o�͂Ƃ��� Z ���\�z���邽�߂Ɏg���鋗���Ɣ�ގ��x
%   ���܂݂܂��B
%
%   �N���X�^�c���[�̂��߂̃R�[�t�F�����ւ́A�c���[���瓾��ꂽ�R�[�t�F��
%   �����Ԃ̐��`�ȑ��֌W���Ƃ��Ē�`����A�I���W�i���̋��� (�܂��͔�ގ��x) 
%   �́A�c���[�̍\�z�̂��߂Ɏg���܂��B���������āA�c���[���ǂ̂��炢
%   ���m�Ɋϑ��̔�ގ��x��\�����̒P�ʂł��B
%
%   2 �̊ϑ��Ԃ̃R�[�t�F�������́A������2�̊ϑ����ŏ��ɘA�������
%   �����N�̍����Ŏ��`���ɕ\����܂��B���̍����́A�����N�ɂ���ėZ��
%   ����� 2 �̃T�u�N���X�^�Ԃ̋����ɂȂ�܂��B
%
%   [C,D] = COPHENET(Z,Y) �́AY �Ɠ������O�p�����x�N�g���`���̃R�[�t�F��
%   ���� D ��Ԃ��܂��B
%
% ��:
%
%      X = [rand(10,3); rand(10,3)+1; rand(10,3)+2];
%      Y = pdist(X);
%      Z = linkage(Y,'average');
%      c = cophenet(Z,Y);
%
%      % �ގ����ƃR�[�t�F���������v���b�g���A�����̊Ԃ̃X�s�A�}����
%      % ���ʑ��ւ��v�Z���܂��B
%      [c,D] = cophenet(Z,Y);
%      plot(Y,D,'.');
%      corr(Y',D','type','spearman')
%
%   �Q�l PDIST, LINKAGE, INCONSISTENT, DENDROGRAM, CLUSTER,
%        CLUSTERDATA, CORR.


%   Copyright 1993-2007 The MathWorks, Inc. 
