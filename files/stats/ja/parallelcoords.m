%PARALLELCOORDS  ���ϐ��f�[�^�ɑ΂��镽�s���W�v���b�g
%
%   PARALLELCOORDS(X) �́AN �s P ��̍s�� X �̑��ϐ��f�[�^�̕��s���W�v���b�g
%   ���쐬���܂��BX �̍s�͊ϑ��ɑΉ����A��͕ϐ��ł��B���s���W�v���b�g�́A
%   �������f�[�^�����o�����邽�߂̃c�[���ł��B�����ŁA�e�ϑ��́A���W��
%   �C���f�b�N�X�ɑ΂��ăv���b�g���ꂽ���W�l�̗�ŕ\�킳��܂��B
%   PARALLELCOORDS �́AX �� NaN �������l�Ƃ��Ď�舵���A�����̍��W�l��
%   �v���b�g����܂���B
%
%   PARALLELCOORDS(X, ..., 'Standardize','on') �́A�v���b�g���s�Ȃ��O�ɁA
%   ���� 0 �ƕW���΍� 1 �����悤��X �̊e����X�P�[�����܂��B
%
%   PARALLELCOORDS(X, ..., 'Standardize','PCA') �́A�ŗL�l�̑傫�������珇�� 
%   X �̎听���X�R�A���畽�s���W�v���b�g���쐬���܂��B
%   PARALLELCOORDS(X, ..., 'Standardize','PCAStd') �́A�W�������ꂽ�听��
%   �X�R�A���g�p���܂��BPARALLELCOORDS �́APCA �W�����ɑ΂��錇���l (NaN) ��
%   �܂� X �̍s���폜���܂��B
%
%   PARALLELCOORDS(X, ..., 'Quantile',ALPHA) �́A�����l�� t �̊e�l�ł� 
%   f(t) �� ALPHA �� (1-ALPHA) �l���ʐ��݂̂��v���b�g���܂��B����́A
%   X �������̊ϑ����܂ޏꍇ�A�L���ł��B
%
%   PARALLELCOORDS(X, ..., 'Group',GROUP) �́A�قȂ�O���[�v�̃f�[�^��ʁX��
%   �F�Ńv���b�g���܂��BGROUP �́A�J�e�S���ϐ��A���l�z��A�����s��A�܂��́A
%   ������̃Z���z��Ƃ��Ē�`�����O���[�v�ϐ��ł��B
%
%   PARALLELCOORDS(X, ..., 'Labels',LABS) �́ALABS���g�p���āA�������ɉ�����
%   ���W�ڐ�������x���t�����܂��BLABS �́A�����z��܂��͕�����̃Z���z��ł��B
%
%   PARALLELCOORDS(X, ..., 'PropertyName',PropertyValue, ...) �́A 
%   PARALLELCOORDS �ō쐬����邷�ׂĂ� line �O���t�B�b�N�X�I�u�W�F�N�g��
%   �΂���w��l�Ƀv���p�e�B��ݒ肵�܂��B
%
%   H = PARALLELCOORDS(X, ...) �́APARALLELCOORDS �ō쐬����� line �I�u�W�F�N�g
%   �ɑ΂���n���h���̗�x�N�g����Ԃ��܂��B���̓p�����[�^ 'Quantile' ���g�p����
%   �ꍇ�AH �́A�쐬����� 3 �� line �I�u�W�F�N�g�̂��ꂼ��ɑ΂��� 1 ��
%   �n���h�����܂݂܂��B'Quantile' �� 'Group' �̗�������̓p�����[�^�Ƃ���ꍇ�A
%   H �͊e�O���[�v�ɑ΂��� 3 �̃n���h�����܂݂܂��B
%
%   PARALLELCOORDS(AX,...) �́A�n���h�� AX �������W���Ƀv���b�g���܂��B
%
%   �v���b�g���琳�m�Ȓl�Ɗϑ������m�F����ɂ́A�f�[�^�J�[�\�����g�p���Ă��������B
%   �W�������ꂽ�l���v���b�g����邩�ǂ����Ɋւ�炸�AX �̃I���W�i���̒l��
%   �\������܂��B
%
%
%   ��:
%
%      % raw �f�[�^���O���[�v�����ăv���b�g���܂��B
%      load fisheriris
%      labs = {'Sepal Length','Sepal Width','Petal Length','Petal Width'};
%      parallelcoords(meas, 'group',species, 'labels',labs);
%
%      % �e�O���[�v�̒����l�Ǝl���ʐ��̂݃v���b�g���܂��B
%      parallelcoords(meas, 'group',species, 'labels',labs, 'quantile',.25);
%
%   �Q�l ANDREWSPLOT, GLYPHPLOT.


%   Copyright 1993-2009 The MathWorks, Inc.
