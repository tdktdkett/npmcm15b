%BIPLOT  �ϐ�/���q�̌W���ƃX�R�A�̃o�C�v���b�g
%
%   BIPLOT(COEFS) �́A�s�� COEFS ���̌W���̃o�C�v���b�g���쐬���܂��B
%   �o�C�v���b�g�́ACOEFS �� 2 ��̏ꍇ�� 2D�A3 ��̏ꍇ�� 3D �ɂȂ�܂��B
%   COEFS �́A�ʏ�APRINCOMP �܂��� PCACOV �ō쐬�����听���v�f�W���A
%   �܂��́AFACTORAN �܂��� NNMF �Ő��肳���׏d���q���܂݂܂��B
%   �o�C�v���b�g���̎��́A�x�N�g���Ƃ��ĕ\�����听���܂��͐��݈��q 
%   (COEFS �̗�) �Ɗϑ��ϐ� (COEFS �̍s) ��\���܂��B
%
%   BIPLOT(COEFS, ..., 'Scores', SCORES) �́ACOEFS �ƃo�C�v���b�g���̍s�� 
%   SCORES �̃X�R�A�̗������v���b�g���܂��BSCORES �́A�ʏ�APRINCOMP ��
%   �쐬���ꂽ�听���X�R�A�A�܂��́AFACTORAN �Ő��肳�ꂽ���q�X�R�A���܂݂܂��B
%   �e�ϑ� (SCORES �̍s) �́A�o�C�v���b�g�̓_�Ƃ��ĕ\����܂��B
%
%   �o�C�v���b�g�́A�ŏ��� 2 �܂��� 3 �̎听���ɉe������e�ϐ��̒l��
%   �傫���ƕ����ƁA�e�ϑ��������̐����̍��ڂ��ǂ̂悤�ɕ\���Ă��邩��
%   �������邱�Ƃ��ł��܂��B�v���b�g���琳�m�Ȓl���m�F����ɂ́A�f�[�^
%   �J�[�\�����g�p���Ă��������B
%
%   BIPLOT �́A���� COEFS �̍ł��傫�Ȓl�����v�f�ɒ��ڂ��A�����K����
%   �ۂ��܂��B
%
%   BIPLOT(COEFS, ..., 'VarLabels',VARLABS) �́A�����z��܂��̓Z���z�� 
%   VARLABS �̃e�L�X�g�Ŋe�x�N�g�� (�ϐ�) �Ƀ��x����t���܂��B
%
%   BIPLOT(COEFS, ..., 'Scores', SCORES, 'ObsLabels', OBSLABS) �́A�f�[�^
%   �J�[�\����\������Ƃ��̊ϑ����Ƃ��āA�����z��܂��̓Z���z�� OBSLABS ����
%   �e�L�X�g���g�p���܂��B
%
%   BIPLOT(COEFS, ..., 'Positive', true) �́A�o�C�v���b�g�𐳂̎l���~ (2D) 
%   �܂��͔����~ (3D) �ɐ������܂��BBIPLOT(COEFS, ..., 'Positive', false) �́A
%   �f�t�H���g�ŁA���ׂĂ̍��W�ɑ΂��Ĕ͈� +/- MAX(COEFS(:)) ��Ƀo�C�v���b�g��
%   �쐬���܂��B
%
%   BIPLOT(COEFFS, ..., 'PropertyName',PropertyValue, ...) �́ABIPLOT ��
%   �쐬����邷�ׂĂ� line �O���t�B�b�N�X�I�u�W�F�N�g�ɑ΂��āA�w�肵��
%   �v���p�e�B�l�Ƀv���p�e�B��ݒ肵�܂��B
%
%   H = BIPLOT(COEFS, ...) �́ABIPLOT �ō쐬�����O���t�B�b�N�X�I�u�W�F�N�g
%   �̃n���h���̗�x�N�g����Ԃ��܂��BH �ɂ́A�ϐ� (line �n���h���A�}�[�J��
%   �n���h���A�e�L�X�g�̃n���h��)�A�ϑ��l (���݂���ꍇ�̓}�[�J�̃n���h��)�A
%   ���� line �ɂ��ꂼ��Ή�����n���h�������̏��ԂŊ܂܂�܂��B
%
%   ��:
%
%      load carsmall
%      X = [Acceleration Displacement Horsepower MPG Weight];
%      X = X(all(~isnan(X),2),:);
%      [coefs,score] = princomp(zscore(X));
%      vlabs = {'Accel','Disp','HP','MPG','Wgt'};
%      biplot(coefs(:,1:3), 'scores',score(:,1:3), 'varlabels',vlabs);
%
%   �Q�l FACTORAN, NNMF, PRINCOMP, PCACOV, ROTATEFACTORS.


%   Copyright 1993-2009 The MathWorks, Inc. 
