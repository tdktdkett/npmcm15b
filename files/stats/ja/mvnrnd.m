%MVNRND  ���ϗʐ��K���z����̗����x�N�g��
%
%   R = MVNRND(MU,SIGMA) �́A���σx�N�g�� MU �Ƌ����U�s�� SIGMA ���g����
%   ���ϗʐ��K���z���璊�o���ꂽ�����x�N�g���� N �s D ��̍s�� R ��Ԃ��܂��B
%   MU �́AN �s D ��̍s��ŁAMVNRND �́AMU �̑Ή�����s���g���� R �̊e�s��
%   �������܂��BSIGMA �́AD �s D ��̑Ώ̔�����s�񂩁AD x D x N �̔z��ł��B
%   SIGMA ���z��̏ꍇ�AMVNRND �́ASIGMA �̑Ή�����y�[�W���g���āA���Ƃ��� 
%   MVNRND �� MU(I,:) �� SIGMA(:,:,I) ���g���� R(I,:) ���v�Z����悤�ɁA
%   R �̊e�s�𐶐����܂��B�����U�s�񂪑Ίp�s��ŁA�Ίp�ɉ��������U�ƑΊp�łȂ� 
%   0 �̋����U���܂ޏꍇ�ASIGMA �́A���傤�ǑΊp�������܂܂��悤�� 
%   1 �s D ��̍s��A�܂��� 1 x D x N �̔z��Ŏw�肷�邱�Ƃ��ł��܂��B
%   MU �� 1 �s D ��̃x�N�g���̏ꍇ�AMVNRND �́ASIGMA �̍Ō�̎�����
%   ��v����悤�ɕ������܂��B
%
%   R = MVNRND(MU,SIGMA,N) �́A���ʂ� 1 �s D ��̕��σx�N�g���ƁA���ʂ� 
%   D �s D ��̋����U�s�� SIGMA �������ϗʐ��K���z����I�����ꂽ�����x�N�g���� 
%   N �s D ��̍s�� R ��Ԃ��܂��B
%
%   ��:
%
%      mu = [1 -1]; Sigma = [.9 .4; .4 .3];
%      r = mvnrnd(mu, Sigma, 500);
%      plot(r(:,1),r(:,2),'.');
%
%   �Q�l MVTRND, MVNPDF, MVNCDF, NORMRND.


%   Copyright 1993-2009 The MathWorks, Inc.
