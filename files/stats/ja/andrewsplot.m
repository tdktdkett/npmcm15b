%ANDREWSPLOT  ���ϗʃf�[�^�ɑ΂��� Andrews �v���b�g
%
%   ANDREWSPLOT(X) �́A�s�� X �̑��ϗʃf�[�^�� Andrews �v���b�g (�O�p������
%   �O���t) ���쐬���܂��BX �̍s�͊ϑ��l�ɑΉ����A��͕ϐ��ł��BAndrews 
%   �v���b�g�́A�������f�[�^�̉����̂��߂̃c�[���ł��B�����ŁA�e�ϑ��l�́A
%   ��� [0,1] �ŘA���_�~�[�ϐ� t �̊֐� f(t) �ŕ\����܂��Bf(t) �́A
%   �ȉ��̂悤�� X �� i �Ԗڂ̊ϑ��l�ɑ΂��Ē�`����܂��B
%
%      f(t) = X(i,1)/sqrt(2) + X(i,2)*sin(2*pi*t) + X(i,3)*cos(2*pi*t) + ...
%
%   �v���b�g���琳�m�Ȓl�Ɗϑ������m�F����ɂ́A�f�[�^�J�[�\�����g�p���Ă��������B
%
%   ANDREWSPLOT �́AX ���� NaN �������l�Ƃ��Ĉ����A�Ή�����s�𖳎����܂��B
%
%   ANDREWSPLOT(X, ..., 'Standardize','on') �́A�v���b�g���쐬����O�ɁA
%   ���� 0�A�W���΍� 1 �ɂȂ�悤�� X �̊e����X�P�[�����O���܂��B
%
%   ANDREWSPLOT(X, ..., 'Standardize','PCA') �́A�ŗL�l�����炷���߂ɁA
%   X �̎听���X�R�A���� Andrews �v���b�g���쐬���܂��B
%   ANDREWSPLOT(X, ..., 'Standardize','PCAStd') �́A�W�������ꂽ�听��
%   �X�R�A���g�p���܂��B
%
%   ANDREWSPLOT(X, ..., 'Quantile',ALPHA) �́At �̊e�l�ɂ��āAf(t) ��
%   �����l�� ALPHA�A����� (1-ALPHA) ���ʓ_�݂̂��v���b�g���܂��B
%
%   ANDREWSPLOT(X, ..., 'Group',GROUP) �́A�قȂ�F�ŁA�����̃O���[�v����
%   �f�[�^���v���b�g���܂��BGROUP �́A�J�e�S���ϐ��A���l�z��A�����s��A
%   �܂��́A������̃Z���z��Ƃ��Ē�`�����O���[�v�ϐ��ł��B
%
%   ANDREWSPLOT(X, ..., 'PropertyName',PropertyValue, ...) �́AANDREWSPLOT ��
%   �쐬����邷�ׂĂ� line �O���t�B�b�N�X�I�u�W�F�N�g�ɑ΂��āA�w�肵��
%   �v���p�e�B�l�Ƀv���p�e�B��ݒ肵�܂��B
%
%   H = ANDREWSPLOT(X, ...) �́AANDREWSPLOT �ō쐬����� line �I�u�W�F�N�g��
%   �n���h�� (X �̊e�s�ɂ��� 1 �̃n���h��) �̗�x�N�g����Ԃ��܂��B����
%   �p�����[�^ 'Quantile' ���g�p����ꍇ�AH �́A�쐬����� 3 �� line 
%   �I�u�W�F�N�g���ꂼ��ɑ΂��� 1 �̃n���h�����܂݂܂��B'Quantile' �� 
%   'Group' �̗�������̓p�����[�^�Ƃ���ꍇ�AH �͊e�O���[�v�ɑ΂��� 3 ��
%   �n���h�����܂݂܂��B
%
%   ��:
%
%      % ���f�[�^���O���[�v�����ăv���b�g���܂��B
%      load fisheriris
%      andrewsplot(meas, 'group',species);
%
%      % �e�O���[�v�̒����l�Ǝl���ʓ_�̂݃v���b�g���܂��B
%      andrewsplot(meas, 'group',species, 'quantile',.25);
%
%   �Q�l PARALLELCOORDS, GLYPHPLOT.


%   Copyright 1993-2009 The MathWorks, Inc. 
