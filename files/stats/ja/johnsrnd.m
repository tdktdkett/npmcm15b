% JOHNSRND ���z�W�����\���V�X�e������̃����_���z��
%
%   R = JOHNSRND(QUANTILES,M,N) �́AQUANTILES �ŗ^�����镪�ʐ��̎d�l��
%   �������W�����\���V�X�e���̕��z����`����闐���� M�~N �s���Ԃ��܂��B
%   QUANTILES �́A�W�����K���z�̕��ʐ� [-1.5 -0.5 0.5 1.5] �ɑΉ�����
%   �ړI�̕��z�ɑ΂��镪�ʐ��� 4 �v�f�̃x�N�g���ł��B����������΁A�ݐ�
%   �m�� [0.067 0.309 0.691 0.933] �ɑΉ����镪�ʐ����������ƂŁA�����l��
%   �`�����߂̕��z���w�肵�܂��BQUANTILES �́A1 �Ԗڂ̍s�� 4 �̕W�����K
%   ���z�̕��ʐ����܂݁A2 �Ԗڂ̍s���ړI�̕��z�̑Ή����镪�ʐ����܂� 2�~4 
%   �̍s��ɂ��Ȃ�܂��B�W�����K���z�̕��ʐ��́A���Ԋu�łȂ���΂Ȃ�܂���B
%
%   ����: R �͖���וW�{�̂��߁A��ʓI�ɁA���̕W�{�̕��ʐ��́A�w�肵��
%         ���z�̕��ʐ��Ƒ����قȂ�܂��B
%
%   R = JOHNSRND(QUANTILES) �́A�X�J���l��Ԃ��܂��B
%   R = JOHNSRND(QUANTILES,M,N,...) �܂��� R = JOHNSRND(QUANTILES,[M,N,...])
%   �́AM�~N�~... �z���Ԃ��܂��B
%
%   [R,TYPE] = JOHNSRND(...) �́A�W�����\���V�X�e�����Ŏw�肵�����z��
%   �^�C�v��Ԃ��܂��BTYPE �� 'SN', 'SL', 'SB', 'SU' �̂����ꂩ�ł��B
%   �C�ӂ̗����l�𐶐����Ȃ����z�̃^�C�v�����ʂ���ɂ́AM �� N �� 0 ��
%   �ݒ肵�܂��B
%
%   �W�����\���V�X�e���� 4 �̕��z�^�C�v�́A���̐��K�����̕ϗʂ̕ϊ���
%   �Ή����܂��B
%
%      �^�C�v SN: �ϊ������� (���K���z)
%      �^�C�v SL: �w���ϊ� (�ΐ����K���z)
%      �^�C�v SB: ���W�X�e�B�b�N�ϊ� (��������)
%      �^�C�v SU: �o�Ȑ����ϊ� (�����Ȃ�)
%
%   [R,TYPE,COEFS] = JOHNSRND(...) �́A���z���`����ϊ��̌W����Ԃ��܂��B
%   COEFS �� [GAMMA, ETA, EPSILON, LAMBDA] �ł��BZ ���W�����K�����̕ϐ��ŁA
%   H ����L�Œ�`�����ϊ��̂����ꂩ�ł���ꍇ�A
%   R = LAMBDA * H((Z - GAMMA) / ETA) + EPSILON �́AH �ɑΉ����镪�z�^�C�v
%   ����̗����̕ϗʂɂȂ�܂��B
%
%   ��
%      % �W�����K���z���������������������l�𐶐����܂��B
%      r = johnsrnd([-1.7 -.5 .5 1.7],1000,1);
%      qqplot(r);
%
%      % �E�ɘc�񂾗����l�𐶐����܂��B
%      r = johnsrnd([-1.3 -.5 .5 1.7],1000,1);
%      qqplot(r)
%
%      % �E�������̂������̕W�{�f�[�^�ɂ悭��v���闐���l�𐶐����܂��B
%      load carbig;
%      qnorm = [.5 1 1.5 2];
%      q = quantile(Acceleration, normcdf(qnorm));
%      r = johnsrnd([qnorm; q],1000,1);
%      [q; quantile(r, normcdf(qnorm))]
%
%      % ���z�̃^�C�v�ƌW�����`���܂��B
%      [r,type,coefs] = johnsrnd([qnorm; q],0);  % r �� [] ��Ԃ��܂�
%
%   �Q�l RANDOM, PEARSRND.


%   Copyright 2005-2007 The MathWorks, Inc. 
