% STEPWISEFIT �X�e�b�v���C�Y��A��p������A���f���ւ̋ߎ�
%
%   B=STEPWISEFIT(X,Y) �́A�s�� X �̗�ɂ���Ď����ꂽ�\���ϐ��̊֐��Ƃ���
%   �����ϐ� Y �����f�������邽�߂ɁA�X�e�b�v���C�Y��A���g���܂��B���� 
%   B �́AX �̂��ׂĂ̗�ɑ΂��Đ��肳�ꂽ�W���l�̃x�N�g���ł��B�ŏI�I��
%   ���f���Ɋ܂܂�Ȃ���ɑ΂��� B �̒l�́A���f���ɗ��t�����邱�Ƃ�
%   ������W���ł��BSTEPWISEFIT �́A���ׂẴ��f�����̒萔���������I��
%   �܂݂܂��B
%
%   [B,SE,PVAL,INMODEL,STATS,NEXTSTEP,HISTORY]=STEPWISEFIT(...) �́A
%   �ǉ��̌��ʂ��o�͂��܂��BSE �́AB �ɑ΂���W���덷�̃x�N�g���ł��B
%   PVAL �́AB �� 0 �̏ꍇ�̌���ɑ΂��� p-�l�̃x�N�g���ł��BINMODEL �́A
%   �ǂ̗\���q���ŏI�I�ȃ��f���ɂ���̂��������_���l�x�N�g���ł��BSTATS �́A
%   �ǉ��̓��v�ʂ��܂ލ\���̂ł��BNEXTSTEP �́A�����������̃X�e�b�v
%   �ł� -- ���̗\���q�������O�Ɉړ����邽�߂̃C���f�b�N�X�A�܂��́A
%   ����ȏ�X�e�b�v����������Ȃ��ꍇ�� 0 �̂����ꂩ�ł��BHISTORY �́A
%   �^�����X�e�b�v�̗����ɂ��Ă̏����܂ލ\���̂ł��B
%
%   [...]=STEPWISEFIT(X,Y,'PARAM1',val1,'PARAM2',val2,...) �́A�ȉ���
%   ���O/�g�̑g�ݍ��킹�̂��������w�肵�܂��B:
%
%     'inmodel'  �����̋ߎ��Ɋ܂܂��\���q (�f�t�H���g�� none �ł�)
%     'penter'   �ǉ����ꂽ�\���q�ɑ΂���ő� p-�l (�f�t�H���g�� 0.05 �ł�)
%     'premove'  �폜���ꂽ�\���q�ɑ΂���ŏ� p-�l (�f�t�H���g�� 0.10 �ł�)
%     'display'  �e�X�e�b�v�ɂ��Ă̏���\������ɂ� 'on' (�f�t�H���g)�A
%                �\�����ȗ�����ɂ� 'off' �̂����ꂩ�ł��B
%     'maxiter'  �^������X�e�b�v�̍ő�� (�f�t�H���g�͍ő�l�Ȃ��ł�)
%     'keep'     ������Ԃ�ێ����邽�߂̗\���q (�f�t�H���g�� none �ł�)
%     'scale'    �t�B�b�e�B���O�O�ɕW���΍��ɂ���� X �̊e����X�P�[�����O
%                ����ɂ� 'on'�A�X�P�[�����O���ȗ�����ɂ� 'off' (�f�t�H���g)
%                �̂����ꂩ�ł��B
%
%   ��:
%      load hald 
%      stepwisefit(ingredients,heat,'penter',.08)


%   Copyright 1993-2007 The MathWorks, Inc.
