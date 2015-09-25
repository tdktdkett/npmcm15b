% RUNSTEST  ����א��̌�������s
%
%   H = RUNSTEST(X) �́A�x�N�g�� X �̊ϑ��̗�Ŏ��s������s�Ȃ��܂��B
%   ����́A����������ׂł͂Ȃ��Ƃ����Η������ɑ΂��āAX �̒l������׏���
%   �Ȃ�Ƃ������������肵�܂��B����́AX �̕��ψȏ�A�܂��͈ȉ��̘A������
%   �l�̎��s�񐔂Ɋ�Â��܂��B���܂�Ɏ��s�����Ȃ��ꍇ�A�����l�ł܂Ƃ܂�����A
%   �Ⴂ�l�ł܂Ƃ܂����肷��X��������܂��B���܂�Ɏ��s�������ꍇ�A����
%   �l�ƒႢ�l�����݂Ɍ����X��������܂��B���ʂ́A�A������ ("��͖����
%   �ł���") �� 5% �̗L�Ӑ����Ŋ��p�ł��Ȃ��ꍇ H=0�A���邢�́A�A�������� 
%   5% �̐����Ŋ��p�ł���ꍇ�� H=1 �ł��B
% 
%   H = RUNSTEST(X,V) �́A�l V �ȏ�A�܂��͈ȉ��ł̎��s���g���Č����
%   �s�Ȃ��܂��B
%
%   H = RUNSTEST(X,'UD') �́A���s�̏㏸�A�܂��͉��~�̐��ɑ΂��錟���
%   �s���܂��B����́AX �̒l������׏��ɂȂ鉼���̌�����s�Ȃ��܂��B���܂��
%   ���s�����Ȃ��ꍇ�A������\���܂��B���܂�Ɏ��s�������ꍇ�A�U������
%   �X���������܂��B
%
%   RUNSTEST �́ANaN �������l�Ƃ��Ĉ����A�����𖳎����܂��BV �ȏ�A
%   �܂��͈ȉ��̎��s�̌���ɑ΂��āAV �ƌ����ɓ������l�͔j������܂��B
%   ���s�񐔂𑝂₵���茸�炵���肷�錟��ɑ΂��āA�擪�̒l�ƌ�����
%   �������l�͔j������܂��B
%
%   H = RUNSTEST(...,'PARAM1',VAL1,'PARAM2',VAL2,...) �́A�ǉ��p�����[�^��
%   �����̒l���w�肵�܂��B�L���ȃp�����[�^�́A���̂Ƃ���ł��B
%      'alpha'    �L�Ӑ��� ALPHA �Ō�����s�Ȃ��܂��BALPHA �̓X�J����
%                 �Ȃ���΂Ȃ�܂���B
%      'method'   ���m�ȃA���S���Y�����g�p���� p-�l���v�Z����ɂ� 'exact'�A
%                 ���K�ߎ����g�p����ɂ� 'approximate' �̂����ꂩ�ł��B
%                 �f�t�H���g�́A�ȏ�/�ȉ��̎��s�ƁA�܂��AX �̒����� 50 
%                 �ȉ��̏ꍇ�̎��s�̏㏸/���~�ɑ΂��� 'exact' �ł��B
%                 'exact' �̎�@�́AX �̒����� 51 �ȏ�̏ꍇ�̎��s��
%                 �㏸/���~�ɂ͗��p�ł��܂���B
%      'tail'     TAIL �Ŏw�肳���Η������ɑ΂��錟����s�Ȃ��܂��B
%       'both'      ��������:  "��͖���ׂł͂Ȃ�"
%       'right'     �E������:
%                      "���ނ̒l�͕�������X��������" (���s�̈ȏ�/�ȉ�)
%                      "�����͌��݂ɂȂ�X��������" (���s�̏㏸/���~)
%       'left'      ��������:
%                      "���ނ̒l�͏W�܂�X��������"  (���s�̈ȏ�/�ȉ�)
%                      "�l�͓��������X��������"  (���s�̏㏸/���~)
%
%   [H,P] = RUNSTEST(...) �́Ap-�l��Ԃ��܂��B���Ȃ킿�A�^����ꂽ���ʁA
%   �܂��́A���R�ɋA�����肪�^�ɂȂ�ꍇ�̋ɒl���ϑ�����m���ł��B
%   ������ P �̒l�́A�A������̑Ó������^�킵���Ƃ���܂��B
%
%   [H,P,STATS] = RUNSTEST(...) �́A���̃t�B�[���h�����\���̂�Ԃ��܂��B
%      'nruns' -- ���s��
%      'n1'    -- V �ȏ�̒l�̐� (�܂��͏㏸)
%      'n0'    -- V �ȉ��̒l�̐� (�܂��͉��~)
%      'z'     -- ���K���z�̌��蓝�v��
%   ���蓝�v�� Z �́A�A�������� true �̏ꍇ�A�ߎ��I�ɐ��K�̕��z�ɂȂ�܂��B
%   ���s�񐔂ƕW���΍��Ŋ���ꂽ���̕��ϊԂňقȂ�܂��B�o�� P �̒l�́A
%   Z ����A�܂��� 'method' �p�����[�^�Ɉˑ����� NRUNS �̌����ȕ��z�����
%   �����ꂩ�Ōv�Z����܂��B
% 
%   ��:
%      x = randn(40,1);
%      [h,p] = runstest(x,median(x))
% 
%   �Q�l SIGNRANK, SIGNTEST.


%   Copyright 2005-2007 The MathWorks, Inc.