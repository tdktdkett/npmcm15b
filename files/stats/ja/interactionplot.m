%INTERACTIONPLOT  �O���[�v�����ꂽ�f�[�^�̑��ݍ�p�v���b�g
%
%   INTERACTIONPLOT(Y,GROUP) �́A�Z���z�� GROUP �̓��͂Œ�`���ꂽ�O���[�v��
%   ���s�� Y �̃O���[�v���ςɑ΂��� 2 �v�����ݍ�p�v���b�g��\�����܂��B
%   Y �͐��l�s��A�܂��̓x�N�g���ł��BY ���s��̏ꍇ�A�s�͈قȂ�ϑ���\���A
%   ��͊e�ϑ��̔�����\���܂��BY ���x�N�g���̏ꍇ�A�s�́A�Z���z�� GROUP ����
%   �e���͂̕��ς�^���܂��BGROUP �̊e�Z���́A�J�e�S���ϐ��A���l�x�N�g���A
%   �����s��A�܂��́A�P��̗�̕�����̃Z���z��̃O���[�v���ϐ����܂܂Ȃ����
%   �Ȃ�܂���BGROUP �́A�قȂ�O���[�v���ϐ���\���s��̗�ɂ��Ȃ�܂��B
%   ���ꂼ��̃O���[�v���ϐ��́AY �Ɠ����s���łȂ���΂Ȃ�܂���B
%   �O���[�v���ϐ��̐��́A1 ���傫���Ȃ���΂Ȃ�܂���B
%
%   ���ݍ�p�v���b�g�́A�����Ƃ��O���[�v���ϐ��̐��Ɠ������s���Ɨ񐔂�����
%   �s��v���b�g�ł��B�O���[�v���ϐ����́A�v���b�g�s��̑Ίp��ɕ\������܂��B
%   �Ίp�ł͂Ȃ��ʒu (i,j) �ɂ�����v���b�g�́A���ꂼ��s�̑Ίp (i,i) �Ɨ��
%   �Ίp (j,j) �ŗ^������ 2 �̕ϐ����̑��ݍ�p�ł��B
%
%   INTERACTIONPLOT (...,'PARAM1',val1,'PARAM2',val2,...) �́A�ȉ���
%   �p�����[�^�̖��O/�l�̑g�ݍ��킹�̂��������w�肵�܂��B
%
%       �p�����[�^   �l
%       'varnames'   1 �̃O���[�v���ϐ��ɑ΂��� 1 �ł��镶����̍s��A
%                    �܂��͕�����̃Z���z����̃O���[�v���ϐ��̖��O 
%                    (�f�t�H���g���� 'X1', X2', ... �ł�)
%       'full'       �_���l true (�f�t�H���g) �܂��� false�Bfull �� true ��
%                    �ꍇ�A�s��v���b�g�� AB �� BA �ɑ΂��鑊�ݍ�p�v���b�g��
%                    �܂݂܂��B�����ŁAA �� B �� GROUP ���̔C�ӂ� 2 �v���ł��B
%                    full �� false �̏ꍇ�AAB �ɑ΂��鑊�ݍ�p�v���b�g�̂�
%                    �v���b�g����܂��B
%
%   [H,AX,BIGAX] = INTERACTIONPLOT(...) �́AFigure �E�B���h�E�̃n���h�� H�A
%   �T�u�v���b�g�� Axes �̃n���h���̍s�� AX�A�T�u�v���b�g���͂ޑ傫�� 
%   (�����) Axes �̃n���h�� BIGAX ��Ԃ��܂��B
%
%   ��:
%     'A', 'B','C', 'D' �Ɩ��O�̕t����ꂽ 4 �� 3-���x���v�������f�[�^��
%     �΂��鑊�ݍ�p�v���b�g��\�����܂��B
%        y = randn(1000,1); % ����
%        group = ceil(3*rand(1000,4)); % 4 �� 3-���x���v��
%        interactionplot(y,group,'varnames',{'A','B','C','D'})
%
%   �Q�l MAINEFFECTSPLOT, MULTIVARICHART


% Copyright 2006-2008 The MathWorks, Inc.
