% ADDEDVARPLOT   �X�e�b�v���C�Y��A�̂��߂̒ǉ����ꂽ�ϐ��̃v���b�g���쐬
%
%   ADDEDVARPLOT(X,Y,VNUM,INMODEL) �́AX �̗� VNUM ���̗\���q�Ɖ��� Y ��
%   �΂��Ēǉ����ꂽ�ϐ��v���b�g���쐬���܂��B���̃v���b�g�́AINMODEL ��
%   ���X�g�����񂪗\���q�Ƃ��Ďg�p������A���f�����̗\���q�̒ǉ������
%   �e���������܂��BX �́A�\���q�̒l�ƂȂ� N �s P ��̍s��ł��BY �́A
%   �����̒l�ƂȂ� N �̃x�N�g���ł��BVNUM �́A�v���b�g�Ŏg�p���邽�߂� 
%   X �̗���w�肷��X�J���̃C���f�b�N�X�ł��BINMODEL �́A��ԍ��̃x�N�g���A
%   �܂��̓x�[�X���f���Ŏg�p���邽�߂� X �̗���w�肷�� P �̗v�f�̘_���l
%   �x�N�g���ł��B�f�t�H���g�ł́AINMODEL �̑S�Ă̗v�f�͋U�ł� (���f����
%   �\���q�������Ă��܂���)�BADDEDVARPLOT �́A���f�����̒萔���������I��
%   �܂݂܂��B
%
%   ADDEDVARPLOT(X,Y,VNUM,INMODEL,STATS) �́ASTEPWISEFIT �֐��ɂ����
%   �쐬���ꂽ�ߎ��������f���̌��ʂ��܂ލ\���� STATS ���g�p���܂��B
%   STATS ���ȗ����ꂽ�ꍇ�A���̊֐��́A������v�Z���܂��B
%
%   �ǉ����ꂽ�ϐ��v���b�g�́A�f�[�^�Ƌߎ����ꂽ���C�����܂݂܂��BX1 �́A
%   X �� VNUM ��ł���Ɖ��肵�܂��B�f�[�^�̋Ȑ��́AININMODEL �Ŏw�肳�ꂽ
%   ���̗\���q�̌��ʂ��폜������ɁAY �� X1 ���v���b�g���܂��B�����́A
%   �f�[�^�̋Ȑ��̍ŏ����ߎ��ŁA���̌��z�́A���f���Ɋ܂܂�Ă���ꍇ�A
%   X1 �����W���ł��B�_���́A�ߎ����ꂽ���C���ɑ΂��� 95% �̐M����ԂŁA
%   X1 �̗L�Ӑ������؂��邽�߂Ɏg�p����܂��B
%
%   VNUM �� INMODEL ���ɂ�����ꍇ�AADDEDVARPLOT ����������v���b�g�́A
%   ������A leverage �v���b�g�Ƃ��Ēm���Ă��܂��B
%
%   ��:  Hald �f�[�^�̃X�e�b�v���C�Y��A�����s���A2�Ԗڂ̗�̗\���q��
%        �΂��Ēǉ����ꂽ�ϐ��̃v���b�g���쐬���܂��B
%      load hald
%      [b,se,p,in,stats] = stepwisefit(ingredients,heat);
%      addedvarplot(ingredients,heat,2,in,stats)


%   Copyright 1993-2007 The MathWorks, Inc.
