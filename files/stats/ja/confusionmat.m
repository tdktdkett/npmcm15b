% CONFUSIONMAT  ���ރA���S���Y���ɑ΂��鍬���s��
%
%    CM = CONFUSIONMAT(G,GHAT) �́A���m�̃O���[�v���x�� G �Ɨ\�������O���[�v
%    ���x�� GHAT �Œ�`����鍬���s�� CM ��Ԃ��܂��BG �� GHAT �́A�����ϑ�����
%    ���O���[�v�ł��BG �� GHAT �́A�J�e�S���A���l�A�_���x�N�g�� (������� 
%    1 ��̃Z���z��)�A�܂��͕����s�� (�e�s���O���[�v���x����\��) �ɂ��邱�Ƃ�
%    �ł��܂��BG �� GHAT �́A�����^�C�v�łȂ���΂Ȃ�܂���BCM �́AG �� GHAT ����
%    �قȂ�v�f�̑����Ɠ������T�C�Y�̐����s��ɂȂ�܂��BCM(I,J) �́A���m��
%    �O���[�v���x�����O���[�v I �ŁA�\�������O���[�v���x�����O���[�v J �ƂȂ�
%    �C���X�^���X�̑�����\���܂��BCONFUSIONMAT �́ANaN ����s��A���邢�́A
%    G �܂��� GHAT ���� 'undefined' �l�������l�Ƃ��Ĉ������߁A�Ή�����ϑ��l��
%    �J�E���g����܂���B
%
%    �O���[�v�̏W���� CM ���̍s�Ɨ�̃O���[�v���x���̏��͓����ł��BGN �� 
%    grp2idx([G;GHAT]) �� 2 �Ԗڂ̏o�͂Ƃ���ƁAGN ���ɂ��邷�ׂẴO���[�v��
%    �܂܂�AGN �Ɠ����O���[�v���x���̏��ɂȂ�܂��B
%
%    CM = CONFUSIONMAT(G,GHAT,'ORDER',ORDER) �́AORDER �Ŏw�肳���s (�Ɨ�) 
%    �̏��ɍ����s���Ԃ��܂��BORDER �́A�������g���� G �܂��� GHAT ���̒l��
%    ��r�\�ȃO���[�v���x���Ƃ��̒l���܂ރx�N�g���ł��BORDER �́AG �܂��� 
%    GHAT �ɂ��郉�x���̂��ׂĂ��܂�ł��Ȃ���΂Ȃ�܂���BORDER �́AG �� 
%    GHAT �ɂȂ����x�����܂ނ��Ƃ��ł��邽�߁ACM �̑Ή�����s�Ɨ�ɂ� 0 ��
%    �܂܂�܂��B
%
%    [CM, GORDER] = CONFUSIONMAT(G, GHAT) �́ACM �̍s�Ɨ�ɑ΂���O���[�v
%    ���x���̏��Ԃ�Ԃ��܂��BGORDER �́AG �� GHAT �Ɠ����^�C�v�ɂȂ�܂��B
%
%   ��:
%      % �t�B�b�V���[�̃A�C���X�f�[�^�� CLASSIFY ��K�p���邽�߂ɁA�Ēu����
%      % �����s����v�Z���܂��B
%      load fisheriris
%      x = meas;
%      y = species;
%      yhat = classify(x,x,y);
%      [cm,order] = confusionmat(y,yhat);
%
%   �Q�l CROSSTAB, GRP2IDX.


%   Copyright 2008-2009 The MathWorks, Inc.
