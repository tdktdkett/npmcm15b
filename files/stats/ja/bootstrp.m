% BOOTSTRP   �u�[�g�X�g���b�v���v��
%
%   BOOTSTAT = BOOTSTRP(NBOOT,BOOTFUN,D1,...) �́ANBOOT ��̃u�[�g�X�g���b�v
%   �f�[�^�W�{��`�悵�A�֐� BOOTFUN ���g���Ċe�W�{�̓��v�ʂ��v�Z���A�s��
%   BOOTSTATS �Ɍ��ʂ�Ԃ��܂��BNBOOT �́A���̐����łȂ���΂Ȃ�܂���B
%   BOOTFUN �́A@ �Ŏw�肳���֐��n���h���ł��BBOOTSTAT �̊e�s�́A1 ��
%   �u�[�g�X�g���b�v�̕W�{�� BOOTFUN ��K�p�������ʂ��܂݂܂��BBOOTFUN ��
%   �s��A�܂��͔z���Ԃ��ꍇ�A���̏o�͂́ABOOTSTAT �֊i�[���邽�߂�
%   �s�x�N�g���ɕϊ�����܂��B
%
%   3 �ԖڂƂ���ȍ~�̓��͈��� (D1,...) �́ABOOTFUN �ւ̓��͂��쐬����
%   ���߂Ɏg����f�[�^ (�X�J���A��x�N�g���A�܂��͍s��) �ł��BBOOTSTRP �́A
%   ��X�J���̃f�[�^�̈��� (�����͓����s���łȂ���΂Ȃ�܂���) �̍s����
%   �Ĕz�u���ăT���v�����O���邱�ƂŃu�[�g�X�g���b�v�̊e�W�{���쐬���܂��B
%   BOOTFUN �ɓn�����X�J���f�[�^�͕ύX����܂���B
% 
%   [BOOTSTAT,BOOTSAM] = BOOTSTRP(...) �́A���̈����̍s�ւ̃C���f�b�N�X��
%   �s�� BOOTSAM ��Ԃ��܂��B�֐��ɓK�p����Ȃ��o�͕W�{ BOOTSAM ���擾
%   ����ɂ́ABOOTFUN ���� ([]) �ɐݒ肵�Ă��������B
% 
%   ��F
%
%   �x�N�g�� Y ���瓾���閳��וW�{�� 100 ��̃u�[�X�g���b�v�̕��ς�
%   �W�{���v�Z���A�����̃u�[�g�X�g���b�v�̕��ς̖��x�̐�����v���b�g
%   ���܂��B
%      y = exprnd(5,100,1);
%      m = bootstrp(100, @mean, y);
%      [fi,xi] = ksdensity(m);
%      plot(xi,fi);
% 
%   �x�N�g�� Y ���瓾���閳��וW�{�� 100 ��̃u�[�X�g���b�v�̕��ς�
%   �W���΍����v�Z���A�u�[�g�X�g���b�v�̐���̑g�ݍ��킹���v���b�g���܂��B
%      y = exprnd(5,100,1);
%      stats = bootstrp(100, @(x) [mean(x) std(x)], y);
%      plot(stats(:,1),stats(:,2),'o')
%
%   �c�����u�[�g�X�g���b�v���邱�ƂŐ��`��A�̌W���x�N�g���ɑ΂���W��
%   �덷�𐄒肵�܂��B
%      load hald ingredients heat
%      x = [ones(size(heat)), ingredients];
%      y = heat;
%      b = regress(y,x);
%      yfit = x*b;
%      resid = y - yfit;
%      se = std(bootstrp(1000, @(bootr) regress(yfit+bootr,x), resid));
%
%   ���֌W���̕W���덷���u�[�g�X�g���b�v���܂��B
%      load lawdata gpa lsat
%      se = std(bootstrp(1000,@corr,gpa,lsat));
%
%   �Q�l RANDOM, RANDSAMPLE, HIST, KSDENSITY.


%   Copyright 1993-2007 The MathWorks, Inc. 
