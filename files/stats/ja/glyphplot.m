%GLYPHPLOT  ���ϗʃf�[�^�ɑ΂���X�^�[�v���b�g�܂��� Chernoff faces �̃v���b�g
%
%   GLYPHPLOT(X)�́AN �s P ��̍s�� X �̑��ϗʃf�[�^����X�^�[�v���b�g���쐬
%   ���܂��BX �̍s�͊ϑ��ɑΉ����A��͕ϐ��ł��B�X�^�[�v���b�g�́A�e�ϑ��l�� 
%   "star" �Ƃ��ĕ\�킵�A���� i �Ԗڂ� spoke �́A�ϑ��l�� i �Ԗڂ̍��W�܂ł�
%   �����ɔ�Ⴕ�܂��BGLYPHPLOT �́A�v���b�g���s���O�ɁA��� [.1,1] �Ŋe���
%   �ʁX�ɃV�t�g����уX�P�[�����O���邱�Ƃɂ��AX ��W�������A�\�Ȍ���
%   �����`�ɋ߂���`�O���b�h�̒��S�� glyphs ��u���܂��BGLYPHPLOT �́AX ���� 
%   NaN �������l�Ƃ��Ĉ����AX �̑Ή�����s���v���b�g���܂���B
%   GLYPHPLOT(X, 'Glyph','star') �́AGLYPHPLOT(X) �Ɠ����ł��B
%
%   GLYPHPLOT(X, 'Glyph','face') �́AX �̃t�F�[�X�v���b�g���쐬���܂��B
%   �t�F�[�X�v���b�g�́A�e�ϑ��l�� "face" �Ƃ��ĕ\�킵�A�����ŁAi �Ԗڂ� 
%   facial feature �́A���̊ϑ��l�� i �Ԗڂ̍��W�ɓ�������Ⴗ��悤��
%   �`�悳��܂��B���L�̂悤�ɁA17 �܂ł� features �����p�\�ł��B
%
%   GLYPHPLOT(X, 'Glyph','face', 'Features',F) �́A�t�F�[�X�v���b�g���쐬���܂��B
%   �����ŁA�C���f�b�N�X�x�N�g�� F �� i �Ԗڂ̗v�f���A�ǂ� facial fature �� 
%   X �� i �Ԗڂ̗��\�킷�����`���܂��BF �́A0 ���� 17 �܂ł̐������܂܂�
%   ����΂Ȃ�܂���B�����ŁA0 �́AX �̑Ή�����񂪃v���b�g����Ȃ����Ƃ�
%   �����܂��B
%
%   GLYPHPLOT(X, ..., 'Grid',[ROWS,COLS]) �́AROWS �s COLS ��̃O���b�h�� 
%   glyph ���܂Ƃ߂܂��B
%
%   GLYPHPLOT(X, ..., 'Grid',[ROWS,COLS], 'Page',PAGE) �́AROWS �s COLS ��
%   �O���b�h�� 1 �y�[�W���邢�͕����y�[�W�� glyph ��g�D�����APAGE �Ԗڂ�
%   �y�[�W��\�����܂��BPAGE ���x�N�g���̏ꍇ�AGLYPHPLOT �͘A�����镡���y�[�W
%   ��\�����܂��BPAGE �� 'all' �̏ꍇ�AGLYPHPLOT �͂��ׂẴy�[�W��\�����܂��B
%   PAGE �� 'scroll' �̏ꍇ�AGLYPHPLOT �̓X�N���[���o�[���g���ĒP��v���b�g��
%   �\�����܂��B
%
%   GLYPHPLOT(X, ..., 'Centers',C)�́AN �s 2 ��̍s�� C �̒��S�Ɋe�O���t��
%   �u�����v���b�g���쐬���܂��B
%
%   GLYPHPLOT(X, ..., 'Centers',C,'Radius',R) �́AC ��p���� glyph �̈ʒu��
%   ���肵���v���b�g���쐬���A�ő�� glyphs �����a R �ɂȂ�悤�ɃX�P�[�����O
%   ���܂��B
%
%   GLYPHPLOT(X, ..., 'ObsLabels',OBSLABS) �́A������ OBSLABS �̕����z��
%   �܂��̓Z���z����̃e�L�X�g�Ŋe glyph �Ƀ��x����t���܂��B�f�t�H���g�ł́A
%   glyphs �� 1:N �Ń��x����t���܂��B���x�����Ȃ��ꍇ�� '' ��n���܂��B
%   ���x���́A'Centers' �p�����[�^���^����ꂽ�Ƃ��Ƀv���b�g����܂����A
%   �f�[�^�J�[�\�����ɂ̂݌���܂��B
%
%   GLYPHPLOT(X, ..., 'VarLabels',VARLABS) �́A�f�[�^�J�[�\���̕\���̍ۂɁA
%   ������ VARLABS �̕����z��܂��̓Z���z��̃e�L�X�g��ϐ����Ƃ��Ďg���܂��B
%
%   GLYPHPLOT(X, ..., 'Standardize',METHOD) �́A�v���b�g���쐬����O�� X ��
%   �W�������܂��BMETHOD �̑I�����́A�ȉ��̂Ƃ���ł��B
%      'column'  X �̊e������ [.1,1] �ɕʁX�Ƀ}�b�s���O���܂��B
%                ����̓f�t�H���g�ł��B
%      'matrix'  �s�� X �S�̂���� [.1,1] �Ƀ}�b�s���O���܂��B
%      'PCA'     X ����������ŗL�l�̏��ɁA�听���X�R�A�ɕϊ����e�X����� 
%                [.1,1] �Ƀ}�b�s���O���܂��B
%      'off'     �W�������s���܂���B�X�^�[�ɑ΂���f�[�^�́A[0,1] �ŁA
%                �t�F�[�X�ɑ΂���f�[�^�� [.05,.95] �łȂ���΂Ȃ�܂���B
%
%   �v���b�g����I���W�i���̒l���m�F����ɂ́A�f�[�^�J�[�\�����g�p���Ă��������B
%
%   GLYPHPLOT(X, ..., 'PropertyName',PropertyValue, ...) �́AGLYPHPLOT ��
%   �쐬����邷�ׂĂ� line �O���t�B�b�N�X�I�u�W�F�N�g�ɑ΂��Ďw�肳�ꂽ
%   �v���p�e�B�l���v���p�e�B�ɐݒ肵�܂��B
%
%   H = GLYPHPLOT(X, ...) �́AGLYPHPLOT �ō쐬�����O���t�B�b�N�X�I�u�W�F�N�g
%   �̃n���h���̍s���Ԃ��܂��B�X�^�[�v���b�g�ɑ΂��āAH(:,1) �� H(:,2) �́A
%   ���ꂼ��e�X�^�[�� perimeter �� spokes �ɑ΂��� line �I�u�W�F�N�g�̃n���h��
%   ���܂݂܂��Bface�v���b�g�ɑ΂��āAH(:,1) �� H(:,2) �́A���ꂼ��A�e�t�F�[�X
%   ���\�����郉�C���� pupil �̃n���h�����܂݂܂��BH(:,3) �́A���݂���ꍇ�A
%   ���x���ɑ΂��� text �I�u�W�F�N�g�̃n���h�����܂݂܂��B
%
%   face �v���b�g�ł́AX �̗�́A�f�t�H���g�ł����� facial feature �ɑΉ�
%   ���܂��BX �� 17 ��菭�Ȃ�����܂ޏꍇ�A���g�p�� features �́A������
%   �f�t�H���g�l�ŕ\������܂��B�f�t�H���g�̑Ή���ύX����ɂ́A'Features' 
%   ���̓p�����[�^���g�p���Ă��������B
%
%     ��      ��̓���
%   -------------------------------------
%      1      ��̃T�C�Y
%      2      �z/�{�̌ʂ̒���
%      3      �z�̌`
%      4      �{�̌`
%      5      �ڂ̊Ԃ̕�
%      6      �ڂ̏c�����̈ʒu
%      7      �ڂ̍���
%      8      �ڂ̕� (���̕��ɉe����^���܂�)
%      9      �ڂ̊p�x (���̊p�x�ɉe����^���܂�)
%     10      ���̏c�����̈ʒu
%     11      ���̕� (�ڂɔ��)
%     12      ���̊p�x (�ڂɔ��)
%     13      ���̕���
%     14      �@�̒���
%     15      ���̏c�����̈ʒu
%     16      ���̌`
%     17      ���̌ʂ̒���
%
%   ��:
%
%      load carsmall
%      X = [Acceleration Displacement Horsepower MPG Weight];
%      glyphplot(X, 'Standardize','column', 'ObsLabels',Model, ...
%                'grid',[2 2], 'page','scroll');
%      glyphplot(X, 'Glyph','face', 'ObsLabels',Model, 'grid',[2 3], 'page',9);
%
%   �Q�l ANDREWSPLOT, PARALLELCOORDS.


%   Copyright 1993-2009 The MathWorks, Inc.
