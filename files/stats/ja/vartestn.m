%VARTESTN  �����̃O���[�v�ɂ܂����铙���ȕ��U�̌���
%
%   VARTESTN(X) �́A�s�� X �̗�ɑ΂��ē����ȕ��U�̃o�[�g���b�g�̌����
%   �s�Ȃ��܂��B����́AX �̗񂪈قȂ镪�U�������K���z����Ȃ�Ƃ���
%   �Η������ɑ΂��āA�����͓������U�������K���z����Ȃ�Ƃ����A��������
%   ����ł��B���ʂ́A�O���[�v�̃{�b�N�X�v���b�g�Ɠ��v�ʂ̊T�v�\��\�����܂��B
%
%   VARTESTN(X,GROUP) �́A�x�N�g�� X �ƁAX �̗v�f���Ƃ� 1 �̍s������
%   �J�e�S���ϐ��A�x�N�g���A�����z��A�܂��́A������̃Z���z��ł��� 
%   GROUP �̈������K�v�ł��BX �̒l�́A�����O���[�v���Œu��������ꂽ 
%   GROUP �̓����l�ɑΉ����܂��B�֐��́A�O���[�v�ɂ܂����铙���ȕ��U��
%   �΂��Č�����s�Ȃ��܂��B
%
%   VARTESTN �́ANaN �������l�Ƃ��Ĉ����A�����𖳎����܂��B
%
%   P = VARTESTN(...) �́Ap-�l��Ԃ��܂��B���Ȃ킿�A�^����ꂽ���ʁA�܂��́A
%   ���R�ɋA�����肪�^�ɂȂ�ꍇ�̋ɒl���ϑ�����m���ł��BP �̏����Ȓl�́A
%   �A�������̑Ó������^���܂��B
%
%   [P,STATS] = VARTESTN(...) �́A�ȉ��̃t�B�[���h�����\���̂�Ԃ��܂��B
%      'chistat' -- ���蓝�v�ʂ̒l
%      'df'      -- ����̎��R�x
%
%   [...] = VARTESTN(X,GROUP,DISPLAYOPT) �́ADISPLAYOPT='on' (�f�t�H���g) ��
%   �ꍇ�A�{�b�N�X�v���b�g�ƕ\��\�����܂��BDISPLAYOPT='off' �́A������
%   �\�����ȗ����܂��B
%
%   [...] = VARTESTN(X,GROUP,DISPLAYOPT,TESTTYPE) �́ATESTTYPE='robust' ��
%   �ꍇ�A�o�[�g���b�g�̌���̑���� Levene �̌�����s�Ȃ��܂��B����́A
%   �W�{�̕��z�����K�łȂ��ꍇ�A�܂��A����炪�ُ�l�ƂȂ�X��������ꍇ�͓��ɁA
%   ���o�X�g�ȑI���ɖ𗧂��܂��B���̌���ɑ΂��āASTATS �o�͂̍\���̂́A
%   ���蓝�v�ʂ��܂� 'fstat'�A����ƕ��q�̎��R�x���܂� 'df1' �� 'df2' �Ƃ���
%   ���O�̃t�B�[���h�������܂��BTESTTYPE='classical' ��ݒ肷��ƁA�o�[�g���b�g
%   �̌�����s�Ȃ��܂��B
%
%   ��:�}�C�������̑���̕��U�́A�ʂ̃��f���N�̂��̂ƗL�Ӎ��͂���܂���?
%      load carsmall
%      vartestn(MPG,Model_Year)
%
%   �Q�l VARTEST, VARTEST2, ANOVA1.


%   Copyright 2005-2008 The MathWorks, Inc.
