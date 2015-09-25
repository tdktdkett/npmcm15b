%KRUSKALWALLIS  �m���p�����g���b�N����q���U��� (ANOVA)
%
%   P = KRUSKALWALLIS(X,GROUP,DISPLAYOPT) �́A2 �܂��͂���ȏ�̃O���[�v��
%   ��̓Ɨ��ȕW�{�́A�����l�̓��������z�ł���Ƃ����A�����������肷�邽�߂�
%   �m���p�����g���b�N����q���U�����s���A����ɑ΂��� p-�l��Ԃ��܂��B
%   �f�[�^�́A�O���[�v�̉e���ɂ��ʒu�ړ��̉\���������āA���ꂩ�A
%   �����łȂ���Ζ���ׂł���A�����z����̓Ɨ��ȕW�{�ł���Ɖ��肳��܂��B
%
%   X ���s��̏ꍇ�AKRUSKALWALLIS �́A�ʂ̃O���[�v�Ƃ��Ċe��������A���
%   ��W�c�̒����l�����������ǂ��������߂܂��B���͂̂��̌`���́A�e�O���[�v��
%   ������ (���t����) �v�f�����Ƃ��ɓK�؂ł��BGROUP�́AX �̗񂠂���� 
%   1 �̍s�Ƃ��āA������������̃Z���z��ł���O���[�v�����܂݂܂��B
%   �O���[�v�����w�肵�Ȃ��ꍇ�́A��s�� ([]) ����͂��邩�A���̈������ȗ����܂��B
%   X ���x�N�g���̏ꍇ�AGROUP �́AX �̊e�v�f�ɑ΂��� 1 �̍s�����J�e�S��
%   �ϐ��A�x�N�g���A�����z��A�܂��́A������̃Z���z��łȂ���΂Ȃ�܂���B
%   X �̒l�́A�����O���[�v���Œu��������ꂽ GROUP �̓����l�ɑΉ����܂��B
%
%   DISPLAYOPT �́A�{�b�N�X�v���b�g�� Kruskal-Wallis �̈���q���U�\���܂܂��
%   �}��\�킷�ɂ́A'on' (�f�t�H���g) �Ƃ��A�����̕\�����ȗ�����ɂ� 'off' 
%   �ɂ��܂��B
%
%   [P,ANOVATAB] = KRUSKALWALLIS(...) �́A�Z���z�� ANOVATAB �Ƃ��� ANOVA �\
%   �̒l��Ԃ��܂��B
%
%   [P,ANOVATAB,STATS] = KRUSKALWALLIS(...) �́AMULTCOMPRE �֐��ŕ��ς�
%   ���d��r��������s����ۂɎg�p���邱�Ƃ��ł��铝�v�ʂ̒ǉ��̍\���̂�
%   �Ԃ��܂��B
%
%   �Q�l ANOVA1, BOXPLOT, FRIEDMAN, MULTCOMPARE, RANKSUM.


%   Copyright 1993-2008 The MathWorks, Inc. 
