%RIDGE  ���b�W��A
%
%   B1 = RIDGE(Y,X,K) �́A���b�W�p�����[�^ K ���g���āA�\���q X ��̉���
%   �x�N�g�� Y �̃��b�W��A�����s���邱�Ƃœ������A�W���̃x�N�g�� B1 ��
%   �Ԃ��܂��B�s�� X �ɂ́A1 �̗���܂�ł͂����܂���B���ʂ́A���� 0 ��
%   �W���΍� 1 �����悤�� X �̗�̒��S���ƃX�P�[�����O���s������Ɍv�Z����܂��B
%   Y �� n �̊ϑ�������AX �� n �s p ��̍s��ŁAK ���X�J���̏ꍇ�A���ʂ� 
%   B1 �� p �̗v�f������x�N�g���ɂȂ�܂��BK �� m �̗v�f������ꍇ�A
%   B1 �� p �s m ��ɂȂ�܂��B
%
%   B0 = RIDGE(Y,X,K,0) �́A���S���ƃX�P�[�����O���s�킸�ɉ�A�����s���܂��B
%   ���ʂ� B0 �ɂ́A1 �Ԗڂ��萔���ƂȂ� p+1 �̌W�����܂܂�܂��B
%   RIDGE(Y,X,K,1) �́ARIDGE(Y,X,K) �Ɠ����ł��B
%
%   B1 �� B0 �Ԃ̊֌W�́A�ȉ��̂Ƃ���ł��B
%
%      m = mean(X);
%      s = std(X,0,1)';
%      temp = B1./s;
%      B0 = [mean(Y)-m*temp; temp]
%
%   ��ʓI�ɁAB1 �͓����X�P�[���ŕ\�������W���ƂȂ郊�b�W�g���[�X 
%   (�ȉ��̗���Q��) �̐����ɖ𗧂��܂��BB0 �́A�\�����s���̂ɖ𗧂��܂��B
%
%   ��:  Hald �f�[�^�ɑ΂��郊�b�W�g���[�X (�W�������b�W�p�����[�^�̊֐���
%        ���ăv���b�g) ���쐬���܂��B
%      load hald
%      k = 0:.01:1;
%      b = ridge(heat, ingredients, k);
%      plot(k, b');
%      xlabel('Ridge parameter'); ylabel('Standardized coef.');
%      title('Ridge Trace for Hald Data')
%      legend('x1','x2','x3','x4');
%
%   �Q�l REGRESS, STEPWISE.


%   Copyright 1993-2009 The MathWorks, Inc.
