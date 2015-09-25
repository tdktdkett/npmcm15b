%KSDENSITY  �J�[�l�����x�܂��͖��x����̌v�Z
%
%   [F,XI]=KSDENSITY(X) �́A�x�N�g�� X �̕W�{�̊m�����x������v�Z���܂��B
%   KSDENSITY �́A�f�[�^�͈̔͂��J�o�[���铙�Ԋu�� 100 �_�Ŗ��x�����]�����܂��B
%   F �͖��x�l�̃x�N�g���ŁAXI �� 100 �_�̏W���ł��B����́AX ���̓_�̐���
%   �֐��Ƃ���E�B���h�E�p�����[�^ (�ш敝) ���g�p���āA�W���̃J�[�l���֐���
%   ��Â��čs���܂��B
%
%   F=KSDENSITY(X,XI) �́A���x������s���_���x�N�g�� XI �Ŏw�肵�܂��B
%
%   [F,XI,U]=KSDENSITY(...) �́A�J�[�l���������E�B���h�E�̑ш敝���Ԃ��܂��B
%
%   �o�͈����Ȃ��� KSDENSITY(...) �́A���ʂ̃v���b�g�𐶐����܂��B
%
%   KSDENSITY(AX,...) �́AGCA �̑���ɍ��W�� AX �Ƀv���b�g���܂��B
%
%   [...]=KSDENSITY(...,'PARAM1',val1,'PARAM2',val2,...) �́A���x�����
%   ���䂷�邽�߂̃p�����[�^���ƒl�̑g�ݍ��킹���w�肵�܂��B
%   ���p�\�ȃp�����[�^�́A�ȉ��̂Ƃ���ł��B
%
%      �p�����[�^  �l
%      'censoring'  ���͂��ł��؂�񐔂ł��邱�Ƃ����� X �Ɠ���������
%                   �_���l�x�N�g�� (�f�t�H���g�͑ł��؂�܂���)�B
%      'kernel'     'normal' (�f�t�H���g), 'box', 'triangle', 
%                   'epanechinikov' �̒�����I�������g�p�̂��߂�
%                   �J�[�l���������̃^�C�v
%      'npoints'    XI �̓��Ԋu�̓_��
%      'support'    ���x���S�̂̎������z����ꍇ 'unbounded' (�f�t�H���g)�A
%                   ���̒l�ɐ�������ꍇ�� 'positive'�A�܂��͖��x�̃T�|�[�g��
%                   �΂��ď���l�Ɖ����l�̗L����^���� 2 �v�f�̃x�N�g����
%                   �����ꂩ�ł��B
%      'weights'    �e X �̒l�Ɋ��蓖�Ă�d�݂�^���� X �Ɠ��������̃x�N�g�� 
%                   (�f�t�H���g�́A�ϓ��̏d�݂ł�)�B
%      'width'      �J�[�l���������E�B���h�E�̑ш敝�B�f�t�H���g�́A���K���z
%                   �̖��x�𐄒肷�邱�ƂɍœK�ł����A�����̃��[�h�̂悤��
%                   �������������̂ɂ́A��菬�����l��I�����Ă����܂��܂���B
%      'function'   ���x�A�ݐϕ��z�A�t�ݐϕ��z�A�c���A�܂��͗ݐσn�U�[�h�֐�
%                   �ɑ΂��āA���ꂼ�� 'pdf', 'cdf', 'icdf', 'survivor', 
%                   'cumhazard' ����I������鐄��̂��߂̊֐��^�C�v�B
%
%   ��L�Ƀ��X�g�����J�[�l���֐��̑���ɁA(@normpdf �̂悤��) @�A�܂��́A
%   ('normpdf' �̂悤��) ���p�����g�p���ĕʂ̃J�[�l���֐����w��ł��܂��B
%   KSDENSITY �́A���x��]������ X �̃f�[�^�l�Ԃ̋����� XI ���̈ʒu���܂ޔz���
%   �P��̈������g���Ċ֐����Ăяo���܂��B�֐��́A�J�[�l���֐��̑Ή�����l���܂�
%   �����T�C�Y�̔z���Ԃ��Ȃ���΂Ȃ�܂���B'function' �p�����[�^�l�� 'pdf' ��
%   �ꍇ�́A���̃J�[�l���֐��͖��x�l��Ԃ��A����ȊO�̏ꍇ�́A�ݐϕ��z�l��Ԃ�
%   �K�v������܂��B'function' �p�����[�^�l�� 'icdf' �̏ꍇ�ɃJ�X�^���̃J�[�l����
%   �w�肷��ƃG���[�ɂȂ�܂��B
%
%   'support' �p�����[�^�� 'positive' �̏ꍇ�AKSDENSITY �́A�ΐ��֐���p���� 
%   X ��ϊ����A�ϊ����ꂽ�l�̖��x�𐄒肵�ăI���W�i���̃X�P�[���ɕϊ����܂��B
%   'support' ���x�N�g�� [L U] �̏ꍇ�AKSDENSITY �́Alog((X-L)/(U-X)) �̕ϊ��@
%   ���g�p���܂��B'width' �p�����[�^�Əo�� U �́A�ϊ����ꂽ�l�̃X�P�[���ł��B
%
%   ��:
%      x = [randn(30,1); 5+randn(30,1)];
%      [f,xi] = ksdensity(x);
%      plot(xi,f);
%   ���̗�́A2 �̐��K���z�������ăf�[�^���쐬���A���̃f�[�^�ɑ΂��閧�x��
%   ���肵�Č��ʂ��v���b�g���܂��B
%
%   �Q�l HIST, @.


%   Copyright 1993-2009 The MathWorks, Inc.