%CLUSTER  �K�w�I�ȃN���X�^�c���[����N���X�^���쐬
%
%   T = CLUSTER(Z,'CUTOFF',C) �́AZ �ŕ\�����N���X�^�c���[ ����K�w�I��
%   �N���X�^���쐬���܂��BZ �́ALINKAGE �ō쐬���ꂽ (M-1)�~3 �̍s��ł��B
%   C �́A��`����Ă���N���X�^�ɑ΂���臒l�ł��B���[�g����n�߂āACLUSTER �́A
%   �������̂Ȃ��l (INCONSISTENT ���Q��) �� C ��菬�����A�q���̒l�����ׂ� 
%   C ��菬�����m�[�h�ɑ�������܂ŁA�c���[���~��Ă����܂��B�m�[�h��艺��
%   ���ׂĂ̗t�́A(�m�[�h���g���t�ł���ꍇ�ɒP�W���ƂȂ�) �N���X�^��
%   �O���[�v������܂��B
%   CLUSTER �́A���ׂĂ̗t�m�[�h���N���X�^���ɓ���܂Ŗ؂̂��ׂĂ̎}�ɑ����܂��B
%   T �́A�I���W�i���f�[�^�ɂ��� M �̊e�ϑ��ɑ΂���N���X�^�����܂ޒ��� 
%   M �̃x�N�g���ł��BC ���x�N�g���̏ꍇ�AT �̓N���X�^�s��ł���A���̊e���
%   �J�b�g�I�t�̒l�ɑΉ����Ă��܂��B
%
%   T = CLUSTER(Z,'Cutoff',C,'Depth',D) �́A�e�m�[�h��艺�̐[�� D �ɖʂ���
%   �������̂Ȃ��l��]�����܂��B�f�t�H���g�̐[���� 2 �ł��B
%
%   T = CLUSTER(Z,'Cutoff',C,'Criterion','distance') �́A�N���X�^���`��������
%   ���߂̊�Ƃ��ċ������g�p���܂��B�c���[���̊e�m�[�h�̍����́A�m�[�h��
%   �Z������� 2 �̃T�u�m�[�h�Ԃ̋�����\���܂��B������ C �ȉ��̂��ׂĂ�
%   �m�[�h��艺�̂��ׂĂ̗t�́A(�m�[�h���g���t�ł���ꍇ�ɒP�W���ƂȂ�) 
%   �N���X�^�ɃO���[�v������܂��B
%
%   T = CLUSTER(Z,'Cutoff',C,'Criterion','inconsistent') �́ACLUSTER(Z,'Cutoff',C) 
%   �Ɠ����ł��B
%
%   T = CLUSTER(Z,'MaxClust',N) �́A��Ƃ��ċ������g�p���� N �̃N���X�^��
%   �ő�l���\�z���܂��B�c���[���̊e�m�[�h�̍����́A�m�[�h�ŗZ������� 2 ��
%   �T�u�m�[�h�Ԃ̋�����\���܂��BCLUSTER �́A�c���[�� N �������菭����
%   �N���X�^���c�����߂� "�����ɃJ�b�g���� (horizontal cut)" ���ƂŁA�ł�
%   �����������������܂��BN ���x�N�g���̏ꍇ�AT �̓N���X�^�s��ł���A
%   ���̊e��͍ő吔�ɑΉ����Ă��܂��B
%
%   ��:�t�B�b�V���[�̃A�C���X�f�[�^����̃N���X�^�� species ���r
%      load fisheriris
%      d = pdist(meas);
%      z = linkage(d);
%      c = cluster(z,'maxclust',5);
%      crosstab(c,species)
%
%   �Q�l PDIST, LINKAGE, COPHENET, INCONSISTENT, CLUSTERDATA.


%   Copyright 1993-2008 The MathWorks, Inc. 
