% JACKKNIFE �W���b�N�i�C�t���v��
%
%   JACKSTAT = JACKKNIFE(JACKFUN,...) �́A�W���b�N�i�C�t�̃f�[�^�W�{��
%   �`�悵�A�֐� JACKFUN ���g�p���Ċe�W�{�œ��v�ʂ��v�Z���A�s�� JACKSTAT
%   �Ɍ��ʂ�Ԃ��܂��BJACKFUN �� @ �Ŏw�肳���֐��n���h���ł��B
%   JACKSTAT �̊e�s�́A1 �̃W���b�N�i�C�t�̕W�{��K�p���� JACKFUN 
%   ���ʂ��܂݂܂��BJACKFUN ���s��A�܂��͔z���Ԃ��ꍇ�A���̏o�͂�
%   JACKSTAT �֊i�[���邽�߂ɍs�x�N�g���ɕϊ�����܂��B
%
%   JACKKNIFE �ւ� 3 �ԖڂƂ���ȍ~�̓��͈��� �́AJACKFUN �ւ̓��͂��쐬
%   ���邽�߂Ɏg����f�[�^ (�X�J���A��x�N�g���A�s��̂����ꂩ) �ł��B
%   JACKKNIFE �́A��X�J���̃f�[�^�̈��� (�����͓����s���łȂ����
%   �Ȃ�܂���) �̍s����Ĕz�u���ăT���v�����O���邱�ƂŊe�W���b�N�i�C�t
%   �̕W�{���쐬���܂��BJACKFUN �ɓn�����X�J���f�[�^�͕ύX����܂���B
%
%   ��:
%
%   �W���b�N�i�C�t���g���ăx�N�g�� Y ���瓾���閳��וW�{�� MLE ���U
%   ����ʂ̃o�C�A�X�𐄒肵�܂��B�o�C�A�X�́A���̖��Ŋ��m�̎������邽�߁A
%   �W���b�N�i�C�t�l�Ƃ��̌������ׂ邱�Ƃ��ł��܂��B
%
%      y = exprnd(5,100,1);
%      m = jackknife(@var, y, 1);
%      n = length(y);
%      bias = var(y,1) - var(y,0)         % ���m�̃o�C�A�X�̌���
%      jbias = (n - 1)*(mean(m)-var(y,1)) % �o�C�A�X�̃W���b�N�i�C�t�̐���
%
%   �Q�l BOOTSTRP, RANDOM, RANDSAMPLE, HIST, KSDENSITY.


%   Copyright 1993-2007 The MathWorks, Inc. 
