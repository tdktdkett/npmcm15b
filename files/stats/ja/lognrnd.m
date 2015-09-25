%LOGNRND  �ΐ����K���z����̗����̔z��
%
%   R = LOGNRND(MU,SIGMA) �́A���z�p�����[�^ MU �� SIGMA �����ΐ����K���z����
%   �������ꂽ�����̔z���Ԃ��܂��BMU �� SIGMA�́A���ꂼ��֘A���鐳�K���z��
%   ���ςƕW���΍��ł��BR �̃T�C�Y�́AMU �� SIGMA �����ɔz��̏ꍇ�A������
%   ���ʂ���T�C�Y�ɂȂ�܂��B�ǂ��炩�̃p�����[�^���X�J���̏ꍇ�AR �̃T�C�Y�́A
%   ��������̃p�����[�^�Ɠ����T�C�Y�ɂȂ�܂��B
%
%   R = LOGNRND(MU,SIGMA,M,N,...) �܂��� R = LOGNRND(MU,SIGMA,[M,N,...]) �́A
%   M�~N�~... �̔z���Ԃ��܂��B
%
%   �p�����[�^ MU �� SIGMA �����ΐ����K�̃����_���ȕϐ��̕��ςƕ��U�́A
%   �ȉ��̂Ƃ���ł��B
%
%      M = exp(MU + SIGMA^2/2)
%      V = exp(2*MU + SIGMA^2) * (exp(SIGMA^2) - 1)
%
%   ���������āA���� M �ƕ��U V �����ΐ����K���z����̃f�[�^�𐶐�����ɂ́A
%   �ȉ����g�p���܂��B
%
%      MU = log(M^2 / sqrt(V+M^2))
%      SIGMA = sqrt(log(V/M^2 + 1))
%
%   �Q�l LOGNCDF, LOGNFIT, LOGNINV, LOGNLIKE, LOGNPDF, LOGNSTAT, 
%        RANDOM, RANDN.


%   Copyright 1993-2008 The MathWorks, Inc.
