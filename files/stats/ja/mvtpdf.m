% MVTPDF ���ϗ� t �m�����x�֐� (pdf)
%
%   Y = MVTPDF(X,C,DF) �́AX �̊e�s�ŕ]�������A���փp�����[�^ C �Ǝ��R�x
%   DF �������ϗ� t ���z�̊m�����x��Ԃ��܂��BN�~D �̍s�� X �̍s�́A
%   �ϑ��A�܂��͓_�ɑΉ����A��́A�ϐ��A�܂��͍��W�ɑΉ����܂��BY �́A
%   N�~1 �̃x�N�g���ł��B
%
%   C �́A�Ώ̂ŁA����� D�~D �s��ŁA�T�^�I�ȑ��֍s��ł��B���̑Ίp�v�f��
%   1 �łȂ��ꍇ�AMVTPDF �́AC �𑊊ւ̌`���ɃX�P�[�����O���܂��BDF �́A
%   �X�J���A�܂��� N �v�f�̃x�N�g���ł��B
% 
%   ��:
%
%      C = [1 .4; .4 1]; df = 2;
%      [X1,X2] = meshgrid(linspace(-2,2,25)', linspace(-2,2,25)');
%      X = [X1(:) X2(:)];
%      p = mvtpdf(X, C, df);
%      surf(X1,X2,reshape(p,25,25));
%
%   �Q�l MVNPDF, MVTCDF, MVTRND, TPDF.


%   Copyright 2005-2007 The MathWorks, Inc.
