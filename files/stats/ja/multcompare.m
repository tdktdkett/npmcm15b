%MULTCOMPARE  ���ϒl���邢�͑��̐���ʂɊւ��鑽�d��r����̎��s
%
%   MULTCOMPARE�́A(�X���A�ؕЁA���ς̂悤��) ���肪�L�Ӎ������悤��`
%   ���ꂽ 1 �v�����U���� (ANOVA) �܂��� ANOCOVA �̌��ʂ�p�������d��r
%   ������s���܂��B
%
%   COMPARISON = MULTCOMPARE(STATS) �́Aanova1, anova2, anovan, aoctool, 
%   kruskalwallis, friedman �̂����ꂩ�̊֐�����o�͂Ƃ��ē�����\���� 
%   STATS �̏����g�p���đ��d��r��������s���܂��B�߂�l COMPARISON �́A
%   ��r�ɑ΂��� 1 �s�� 5 ������s��ł��B1-2 ��ڂ́A��r���� 2 ��
%   �W�{�̃C���f�b�N�X�ł��B3-5 ��ڂ́A�����̍��ɑ΂��鉺���Ɛ����
%   ����ł��B
%
%   COMPARISON = MULTCOMPARE(STATS, 'PARAM1',val1, 'PARAM2',val2,...) �́A
%   �ȉ��̂������̖��O�ƒl�̑g�ݍ��킹���w�肵�܂��B
%
%     'alpha'       100*(1-ALPHA)% �̋�Ԃ̐M���x���w�肵�܂��B
%                   (�f�t�H���g 0.05)
%     'display'     �O��̋�Ԃ��r���鐄��̃O���t��\������ɂ� 'on' 
%                   (�f�t�H���g) �ŁA�O���t���ȗ�����ɂ� 'off' �̂����ꂩ��
%                   �w�肵�܂��B
%     'ctype'       ���E�l���g�p���邽�߂̃^�C�v�B�I�����́A'tukey-kramer' 
%                   (�f�t�H���g)�A'dunn-sidak'�A'bonferroni'�A'scheffe' �ł��B
%                   �����̌��E�l�̍ŏ����g�p���邽�߂ɁA�����̑I�������� 
%                   2 �ȏ���󔒂ŋ�؂��ē��͂��Ă��������B
%     'dimension'   �����A�܂��͕�W�c���ӕ��ς��v�Z�����S�̂̎������w��
%                   ����x�N�g���ł��BSTATS �� anovan ���琶�������Ƃ��̂�
%                   �g�p����܂��B
%                   �f�t�H���g�́A�J�e�S���� (�A���ł͂Ȃ�) �v���Ɋւ��� 
%                   1 �Ԗڂ̎����S�̂��v�Z���܂��B
%                   ���Ƃ��� [1 3] �̏ꍇ�A�ŏ��� 3 �Ԗڂ̗\���q�̊e������
%                   �΂����W�c���ӕ��ς��v�Z���܂��B
%     'estimate'    ��r�̂��߂̐���ł��B�I���\�Ȓl�́A���v�ʂ̍\���̂�
%                   �\�[�X�Ɉˑ����܂��B
%         anova1:  ��������܂��B�O���[�v���ς��r���܂��B
%         anova2:  'column' (�f�t�H���g) �܂��� 'row' ����
%         anovan:  ��������܂��B��W�c���ӕ��ς��r���܂��B
%         aoctool: 'slope'�A'intercept'�A'pmm' (separate-slopes ���f����
%                  �΂��ăf�t�H���g�� 'slope'�A����ȊO�� 'intercept' �ł�)
%         kruskalwallis:  ��������܂��B��̏��ʂ̕��ς��r���܂��B
%         friedman:  ��������܂��B��̏��ʂ̕��ς��r���܂��B
%
%   [COMPARISON,MEANS,H,GNAMES] = MULTCOMPARE(...) �́A����ɏo�͂�Ԃ��܂��B
%   MEANS �́A����Ƃ����̕W���덷�Ɠ����ȗ�����s��ł��BH �́A�O���t��
%   �܂� Figure �̃n���h���ł��BGNAMES �́A�O���[�v�����܂ފe�O���[�v�ɑ΂��� 
%   1 �̍s�����Z���z��ł��B
%
%   �O���t���Ɏ�����锽���́A���������̔������d�Ȃ�ꍇ�A�L�Ӎ��ł͂Ȃ��A
%   �����̔����������Ȃ��ꍇ�A�v�Z���ꂽ 2 �̐���l�́A�L�Ӎ��̂������
%   �߂��ߎ��Ƃ��Čv�Z����܂� (����́A���ׂĂ̕��ς������W�{�T�C�Y�Ɋ�Â�
%   �ꍇ�Aanova1 ����̕��ς̑��d��r����ɑ΂��Đ��m�ł�)�B�ǂ̕��ς��L�Ӎ���
%   ���邩���݂邽�߂ɁA�C�ӂ̐���l���N���b�N���邱�Ƃ��ł��܂��B
%
%   2 �̒ǉ��� CTYPE �̑I�����\�ł��B'hsd' �I�v�V�����́A
%   "honestly significant differences" ��\���A'tukey-kramer' �I�v�V�����Ɠ����ł��B
%   'lsd' �I�v�V�����́A"�ŏ��L�Ӎ� (least significant difference)" ��\���A
%   t-����Ŏg�p���܂��B����́AF ����̂悤�ɁA���O�ɑS�̓I�Ȍ��肪����Ă��Ȃ�����A
%   ���d��r���ɑ΂��ĕی삳��܂���B
%
%   MULTCOMPARE �́A�����A�܂��͓���q���ʂ��܂ރ��f���ɑ΂��� anovan �̏o�͂�
%   �g�������d��r���T�|�[�g���܂���B�����_�����ʃ��f���̌v�Z�́A���ׂĂ̌��ʂ�
%   �C������悤�Ɉ�����Ƃ����x�����o�͂��܂��B����q�`���̃��f���͎󂯓���܂���B
%
%   ��: 1 �v�� anova �����s���A�O���[�v���ς������̖��O�Ƌ��ɕ\�����܂��B
%
%      load carsmall
%      [p,t,st] = anova1(MPG,Origin,'off');
%      [c,m,h,nms] = multcompare(st,'display','off');
%      [nms num2cell(m)]
%
%   �Q�l ANOVA1, ANOVA2, ANOVAN, AOCTOOL, FRIEDMAN, KRUSKALWALLIS.


%   Copyright 1993-2009 The MathWorks, Inc. 
