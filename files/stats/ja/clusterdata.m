%CLUSTERDATA  �f�[�^����N���X�^���쐬
%
%   T = CLUSTERDATA(X, CUTOFF) �́A�f�[�^ X ����A�N���X�^���쐬���܂��B
%   X �́A�T�C�Y M�~N �̍s��ŁAN �̕ϐ��ɑ΂��āAM �̊ϑ��l�Ƃ���
%   ��舵���܂��BCUTOFF �́ALINKAGE �Ő��������K�w�I�ȃc���[���N���X�^��
%   �؂���臒l�ł��B0 < CUTOFF < 2 �̏ꍇ�A�N���X�^�́A�������̂Ȃ��l�� 
%   CUTOFF ���傫���ꍇ�ɍ쐬����܂� (INCONSISTENT�Q��)�BCUTOFF ���A
%   ������ CUTOFF >= 2 �̏ꍇ�ACUTOFF �́ALINKAGE �ō쐬�����K�w�I��
%   �c���[���ɕۂ����N���X�^�̍ő�̐��ƍl�����܂��B�o�� T �́A
%   �e�ϑ��ɑ΂���N���X�^�����܂ރT�C�Y M �̃x�N�g���ł��B
%
%   0 < CUTOFF < 2 �̏ꍇ�AT = CLUSTERDATA(X,CUTOFF) �͈ȉ��Ɠ����ł��B
%      Y = pdist(X, 'euclid');
%      Z = linkage(Y, 'single');
%      T = cluster(Z, 'cutoff', CUTOFF);
%
%   CUTOFF �� 2 �ȏ�̐����̏ꍇ�AT = CLUSTERDATA(X,CUTOFF) �͈ȉ��Ɠ����ł��B
%
%      Y = pdist(X,'euclid');
%      Z = linkage(Y,'single');
%      T = cluster(Z,'maxclust',CUTOFF)
%
%   T = CLUSTERDATA(X,'PARAM1',VAL1,'PARAM2',VAL2,...) �́A�p�����[�^/�l��
%   �g�ɂ��ݒ�@���g���āA�N���X�^����ɑ΂��āA��萧�䂪�\�ɂȂ�܂��B
%   ���p�\�ȃp�����[�^�́A�ȉ��̂Ƃ���ł��B
%
%      �p�����[�^  �l
%      'distance'   PDIST�ŁA�����ꂽ�����v�ʂ̖��O�̂����ꂩ�B
%                   (�I�v�V���� 'minkowski' �ɂ́A�w�� P �̒l�𑱂��邱�Ƃ�
%                   �ł��܂�)�B
%      'linkage'    LINKAGE �ŋ������A���@�B
%      'cutoff'     �������̂Ȃ��A�܂��́A�����v�ʂɑ΂���J�b�g�I�t�B
%      'maxclust'   �쐬����N���X�^�̍ő吔�B
%      'criterion'  'inconsistent' �܂��� 'distance' �̂����ꂩ�B
%      'depth'      �������̂Ȃ��l���v�Z���邽�߂̐[���B
%
%   �Q�l PDIST, LINKAGE, INCONSISTENT, CLUSTER, DENDROGRAM, KMEANS.


%   Copyright 1993-2008 The MathWorks, Inc. 
