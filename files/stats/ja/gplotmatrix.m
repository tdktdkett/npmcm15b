%GPLOTMATRIX  ���ʕϐ��ŃO���[�v�����ꂽ�U�z�}�v���b�g�s��
%
%   GPLOTMATRIX(X,Y,G) �́AG �ŃO���[�v�����ꂽY �̗�ɑ΂��� X �̗�̎U�z�}
%   �v���b�g�s����쐬���܂��BX �� P x M �ŁAY �� P x N �̏ꍇ�AGPLOTMATRIX �́A
%   ���� N x M �̍s����쐬���܂��BY ���ȗ����邩�A[] �Őݒ肷��ꍇ�A�֐��́A
%   X �� X �Ƃ̊֌W���O���t�����܂��BG �́A�e�s����̊e�_�Ɋ��蓖�Ă�ꂽ�}�[�J��
%   �J���[�Œ�`�����O���[�v�ϐ��ŁA�J�e�S���ϐ��A�x�N�g���A�����s��A�܂��́A
%   ������̃Z���z��ł��B�܂��AG �́A�O���[�v�ϐ��̒l�̂��ꂼ��ŗL�̌�����
%   ����� X ���̒l�� ({G1 G2 G3} �̂悤��) �O���[�v�����邽�߂ɃO���[�v�ϐ���
%   �Z���z��Ƃ��Ă��\���܂���B
%
%   �ϑ����Ɗ֘A����ϐ��̒l�Ɠ��l�ɁA�v���b�g���琳�m�Ȓl���m�F����ɂ́A
%   �f�[�^�J�[�\�����g�p���Ă��������B
%
%   GPLOTMATRIX(X,Y,G,CLR,SYM,SIZ) �́A�g�p����F�A�}�[�J�A�T�C�Y���w�肵�܂��B
%   CLR �́A�J���[�̎d�l��ݒ肷�镶����ASYM �́A�}�[�J�̎d�l��ݒ肷��
%   ������ł��B�ڍׂ́A'help plot' ���Q�Ƃ��Ă��������B���Ƃ��΁ASYM = 'o+x' ��
%   �ꍇ�A�ŏ��̃O���[�v�͉~ (o) �}�[�N�A2 �Ԗڂ̃O���[�v�̓v���X (+) �}�[�N�A
%   3 �Ԗڂ̃O���[�v�̓o�c (x) �}�[�N�ŕ\������܂��B�f�t�H���g�ł́A�F�� 
%   'bgrcmyk'�A�}�[�J�� '.'�A�}�[�J�̃T�C�Y�� Figure �E�B���h�E�̃T�C�Y��
%   �v���b�g���Ɉˑ����܂��B
%
%   GPLOTMATRIX(X,Y,G,CLR,SYM,SIZ,DOLEG) �́A�}����쐬���邩�ۂ��𐧌䂵�܂��B
%   DOLEG �ɂ́A'on' (�f�t�H���g)�A�܂��́A'off' ���g�p���邱�Ƃ��ł��܂��B
%
%   GPLOTMATRIX(X,Y,G,CLR,SYM,SIZ,DOLEG,DISPOPT) �́AX �� Y �̊֌W�̃v���b�g
%   �}�̒��ŁA�Ίp���̓h��Ԃ��@�𐧌䂵�܂��BDISPOPT �� 'none' �Ƃ����
%   �󔒂̂܂܂ɂȂ�A'hist' (�f�t�H���g) �Ƃ���ƃq�X�g�O�������v���b�g���A
%   'variable' �̏ꍇ�͕ϐ������L�q���܂��B
%
%   GPLOTMATRIX(X,Y,G,CLR,SYM,SIZ,DOLEG,DISPOPT,XNAM,YNAM) �́AX �� Y �̕ϐ���
%   �� XNAM �� YNAM ���g���Đݒ肵�܂��B���ꂼ��A�K�؂Ȏ����̕����z��A�܂��́A
%   ������̃Z���z��łȂ���΂Ȃ�܂���B
%
%   [H,AX,BigAx] = GPLOTMATRIX(...) �́A�v���b�g�����_�ւ̃n���h�� H�A�X��
%   �T�u���ւ̃n���h���̍s�� AX�A�T�u�����͂ޑ傫�� (�����) ���W���ւ̃n���h�� 
%   BIGAX �̔z���Ԃ��܂��BH �� 3 �Ԗڂ̎����́AG �̃O���[�v�ɑΉ����܂��B
%   DISPOPT �� 'hist' �̏ꍇ�AAX �̓q�X�g�O�������v���b�g���ꂽ����̍��W��
%   �ւ̃n���h���� 1 �̒ǉ��s���܂݂܂��BBigAx �́A��ɑ��� TITLE, XLABEL, 
%   YLABEL �̂����ꂩ���A���W���̍s��ɑ΂��Ē��S�ɂȂ�悤�� CurrentAxes ��
%   �܂܂ł��B
%
%   ��:
%      load carsmall;
%      X = [MPG,Acceleration,Displacement,Weight,Horsepower];
%      varNames = {'MPG' 'Acceleration' 'Displacement' 'Weight' 'Horsepower'};
%      gplotmatrix(X,[],Cylinders,'bgrcm',[],[],'on','hist',varNames);
%
%   �Q�l GRPSTATS, GSCATTER, PLOTMATRIX.


%   Copyright 1993-2009 The MathWorks, Inc. 
