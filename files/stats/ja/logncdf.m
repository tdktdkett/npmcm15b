% LOGNCDF   �ΐ����K�ݐϕ��z�֐�
%
%   P = LOGNCDF(X,MU,SIGMA) �́A���z�p�����[�^ MU �� SIGMA �����ΐ�
%   cdf �� X �ɂ�����l��Ԃ��܂��BMU �� SIGMA �́A���ꂼ��A�֘A���K
%   ���z�̕��ςƕW���΍��ł��BP �̃T�C�Y�́A���͈����Ɠ����T�C�Y�ł��B
%   �X�J�����͂́A���̓��͂Ɠ����T�C�Y�̒萔�s��Ƃ��ċ@�\���܂��B
% 
%   MU �� SIGMA �̃f�t�H���g�l�́A���ꂼ�� 0 �� 1 �ł��B
%
%   [P,PLO,PUP] = LOGNCDF(X,MU,SIGMA,PCOV,ALPHA) �́A���̓p�����[�^ MU 
%   �� SIGMA �����肳���Ƃ��AP �ɑ΂���M����Ԃ�Ԃ��܂��BPCOV �́A
%   ���肳�ꂽ�p�����[�^�̋����U�s����܂� 2�~2 �̍s��ł��BALPHA �́A
%   0.05 �̃f�t�H���g�l�ŁA100*(1-ALPHA)% �̐M����Ԃ��w�肵�܂��BPLO �� 
%   PUP �́A�M����Ԃ̉����Ə�����܂� P �Ɠ����T�C�Y�̔z��ł��B
%
%   �Q�l ERF, ERFC, LOGNFIT, LOGNINV, LOGNLIKE, LOGNPDF, LOGNRND, LOGNSTAT.


%   Copyright 1993-2007 The MathWorks, Inc.
