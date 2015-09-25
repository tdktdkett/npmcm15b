%MVNPDF  ���ϗʐ��K���z���x�֐� (pdf)
%
%   Y = MVNPDF(X) �́AX �̊e�s�ŕ]������� 0 �̕��ςƒP�ʋ����U�s�������
%   ���ϗʐ��K���z�̊m�����x��Ԃ��܂��BN �s D ��̍s�� X �̍s�͊ϑ��A�܂���
%   �_�ɑΉ����A��͕ϐ��A�܂��͍��W�ɑΉ����܂��BY �́AN �s 1 ��̃x�N�g���ł��B
%
%   Y = MVNPDF(X,MU) �́AX �̊e�s�ŕ]������镽�� MU �ƒP�ʋ����U�s�������
%   ���ϗʐ��K���z�̖��x��Ԃ��܂��BMU �� 1 �s D ��̃x�N�g���A�܂��͖��x�� 
%   MU �̑Ή�����s������ X �̍s���Ƃɕ]�������ꍇ�́AN �s D ��̍s��ł��B
%   MU �̓X�J���l���w�肷�邱�Ƃ��ł��܂��BMVNPDF �́AX �̃T�C�Y�ƈ�v����悤
%   �������܂��B
%
%   Y = MVNPDF(X,MU,SIGMA) �́AX �̊e�s�ŕ]������镽�� MU �Ƌ����U SIGMA ��
%   �����ϗʐ��K���z�̖��x��Ԃ��܂��BSIGMA �́AD �s D ��̍s��A�܂��́A
%   ���x�� SIGMA �̑Ή�����y�[�W������ X �̍s���Ƃɕ]�������ꍇ�A���Ȃ킿�A
%   MVNPDF �� X(I,:) �� SIGMA(:,:,I) ���g���� Y(I) ���v�Z����ꍇ�́AD x D x N 
%   �̔z��ł��B�����U�s�񂪑Ίp�s��ŁA�Ίp�ɉ��������U�ƑΊp�łȂ� 0 �̋����U
%   ���܂ޏꍇ�ASIGMA �́A���傤�ǑΊp�������܂܂��悤�� 1 �s D ��̍s��A
%   �܂��� 1 x D x N �̔z��Ŏw�肷�邱�Ƃ��ł��܂��BSIGMA �݂̂��w�肷��ꍇ�́A
%   �f�t�H���g�l���g�p���邽�߂ɁAMU �ɑ΂��ċ�s���n���Ă��������B
%
%   X �� 1 �s D ��̃x�N�g���̏ꍇ�AMVNPDF �́AMU �̍ŏ��̎����A�܂��� SIGMA 
%   �̍Ō�̎����Ɉ�v����悤�������܂��B
%
%   ��:
%
%      mu = [1 -1]; Sigma = [.9 .4; .4 .3];
%      [X1,X2] = meshgrid(linspace(-1,3,25)', linspace(-3,1,25)');
%      X = [X1(:) X2(:)];
%      p = mvnpdf(X, mu, Sigma);
%      surf(X1,X2,reshape(p,25,25));
%
%   �Q�l MVTPDF, MVNCDF, MVNRND, NORMPDF.


%   Copyright 1993-2009 The MathWorks, Inc.
