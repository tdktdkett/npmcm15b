%GSCATTER  �O���[�v�����ꂽ�ϐ������U�z�}
%
%   GSCATTER(X,Y,G) �́AG �ŃO���[�v�����ꂽ�x�N�g�� X �� Y �̎U�z�}���쐬
%   ���܂��BG �̒��̓����l�����_�Q�́A�����F�A�}�[�J�ŕ\�킳��܂��B
%   G �́A�J�e�S���ϐ��A�x�N�g���A������̃Z���z��A�܂��́A�����s��Ƃ���
%   ��`���ꂽ�O���[�v�ϐ��ł��B�����āAX �� Y �̍s���́A�������Ȃ���΂Ȃ�܂���B
%   �܂��AG �́A�O���[�v�ϐ��̒l�̂��ꂼ��ŗL�̌����ɂ���� X ���̒l�� 
%   ({G1 G2 G3} �̂悤��) �O���[�v�����邽�߂ɃO���[�v�ϐ��̃Z���z��Ƃ��Ă�
%   �\���܂���B�v���b�g���琳�m�Ȓl�Ɗϑ������m�F����ɂ́A�f�[�^�J�[�\����
%   �g�p���Ă��������B
%
%   GSCATTER(X,Y,G,CLR,SYM,SIZ) �́A�g�p����F�A�}�[�J�A�T�C�Y���w�肵�܂��B
%   CLR �́A�F�̎d�l��ݒ肷�镶����A�܂��́A�F�̎d�l�� 3 ��̍s��̂����ꂩ�ł��B
%   SYM �́A�}�[�J�̎d�l��ݒ肷�镶����ł��B�ڍׂ́A'help plot' ���Q�Ƃ���
%   ���������B���Ƃ��΁ASYM = 'o+x' �̏ꍇ�A�ŏ��̃O���[�v�͉~ (o) �}�[�N�A
%   2 �Ԗڂ̃O���[�v�̓v���X (+) �}�[�N�A3 �Ԗڂ̃O���[�v�̓o�c (x) �}�[�N��
%   �\������܂��B�f�t�H���g�ł́A�}�[�J�� '.' �ł��B
%
%   GSCATTER(X,Y,G,CLR,SYM,SIZ,DOLEG) �́A�}����쐬���邩�ۂ��𐧌䂵�܂��B
%   DOLEG �ɂ́A'on' (�f�t�H���g)�A�܂��́A'off' ���g�p���邱�Ƃ��ł��܂��B
%
%   GSCATTER(X,Y,G,CLR,SYM,SIZ,DOLEG,XNAM,YNAM) �́AX �� Y �ϐ��̖��O�� 
%   XNAM �� YNAM �Őݒ肵�܂��B�e�X�́A������ł��BXNAM �� YNAM ���ȗ�����ƁA
%   GSCATTER �́A�n�����ϐ������ŏ��� 2 �Ԗڂ̈����Ƃ��Č��肵�悤�Ƃ��܂��B
%
%   H = GSCATTER(...) �́A�쐬���ꂽ�I�u�W�F�N�g�̃n���h���ԍ�����\�������
%   �z���Ԃ��܂��B
%
%   ��: �����ƂɃR�[�h�����ꂽ�Ԃ̃f�[�^�̎U�z�}��\�����܂��B
%      load carsmall
%      gscatter(Weight, MPG, Origin)
%
%   �Q�l GRPSTATS, GRP2IDX.


%   Copyright 1993-2009 The MathWorks, Inc. 
