%AOCTOOL  ����q�����U���̓��f���ߎ��ƑΘb�`���̃O���t�̕\��
%
%   AOCTOOL(X,Y,G,ALPHA) �́A�\���q X�A���� Y�A�����ăO���[�v���ϐ� G ��
%   �p���Ĉ���q�����U���� (anocova) ���s���܂��BX �� Y �̓x�N�g���łȂ����
%   �Ȃ�܂���BG �̓J�e�S���ϐ��A�x�N�g���A�����z��A�܂��́A�������
%   �Z���z��ł��BAOCTOOL �� 3 ��ނ� Figure ��\�����܂��B1 �ڂ̓f�[�^��
%   �\���Ȑ��̑Θb�`���̃O���t�A���ɂ� ANOVA �\�A������ 3 �ڂɂ́A
%   �p�����[�^����l�̕\���܂܂�܂��B�O���t�́A���ׂẴO���[�v�̗\���A
%   �܂��͂ЂƂ̃O���[�v�̗\���ƐM����Ԃ�\�����邱�Ƃ��ł��܂��B
%   �M���x�́A100(1-ALPHA)% �ł��B�f�t�H���g�́AALPHA=0.05 �ł��B
%
%   AOCTOOL(X,Y,G,ALPHA,XNAME,YNAME,GNAME) �́AX �� Y �� G �ϐ��̖��O��
%   �w�肷�邱�Ƃ��ł��܂��B
%
%   AOCTOOL(X,Y,G,ALPHA,XNAME,YNAME,GNAME,DISPLAYOPT,MODEL) �́A2 ��
%   �ǉ��̈������܂܂�܂��BDISPLAYOPT �́A�O���t��\������ ('on' �f�t�H���g) 
%   ���\�����Ȃ� ('off') ���𐧌䂵�܂��BMODEL �́A�ߎ����鏉�����f����
%   ���䂵�A�ȉ��̐��l�������̂ǂꂩ 1 ���w�肷�邱�Ƃ��ł��܂��B
%       1    'same mean'
%       2    'separate means'
%       3    'same line'
%       4    'parallel lines'
%       5    'separate lines'
%
%   [H,ATAB,CTAB,STATS] = AOCTOOL(...) �́A�l�X�ȍ��ڂ�Ԃ��܂��BH �́A
%   �v���b�g�� line �I�u�W�F�N�g�ɑ΂���n���h���̃x�N�g����Ԃ��܂��B
%   ATAB �� CTAB �́AANOVA �\�ƌW������l�\�ł��BSTATS �́AMULTCOMPARE 
%   �֐��ŕ��ϒl�̑��d��r��������s����ۂɎg�p���邱�Ƃ��ł��铝�v�ʂ�
%   �܂ލ\���̂ł��B
%
%   �O���t���̎Q�ƃ��C���ł���_�����h���b�O����ƁA�\�����ꂽ�l�����݂� 
%   X �l�Ƃ��čX�V�����̂����邱�Ƃ��ł��܂��B�w�肵���ϐ����x�[�X
%   ���[�N�X�y�[�X�ɓ]������ɂ́AExport �Ƃ������x���̕t�����v�b�V��
%   �{�^�����g�p���Ă��������B�o�͂��ꂽ�W���́AX2FX �֐��Œ�`���ꂽ����
%   ����܂��B�|�b�v�A�b�v���j���[�́A�O���[�v���ϐ��̌��݂̒l��ύX������A
%   ���f����ύX���܂��B�v�b�V���{�^���́A�x�[�X���[�N�X�y�[�X���ɕϐ���
%   �G�N�X�|�[�g���邱�Ƃ��ł��܂��B���j���[�͐M����Ԃ𐧌䂵�܂��B


%   Copyright 1993-2008 The MathWorks, Inc. 
