% COPULACDF �R�s�����̗ݐϊm���֐�
%
%   Y = COPULACDF('Gaussian',U,RHO) �́AU �̓_�ŕ]�����ꂽ���`���փp�����[�^ 
%   RHO �����K�E�X�E�R�s�����̗ݐϊm����Ԃ��܂��BU �́AP �����̒P��
%   �������̂� N �_��\�� [0,1] �̒l�� N�~P �s��ł��BRHO �́AP�~P ��
%   ���֍s��ł��BU �� N�~2 �̍s��̏ꍇ�ARHO �̓X�J���̑��֌W���ɂ��ł��܂��B
%
%   Y = COPULACDF('t',U,RHO,NU) �́AU �ɂ���_�ŕ]�����ꂽ���`���փp�����[�^
%   RHO �Ǝ��R�x�p�����[�^ NU ������ t �R�s�����̗ݐϊm����Ԃ��܂��B
%   U �́A[0,1] ���̒l�� N�~P �s��ł��BRHO �� P�~P �s��ł��BU �� N�~2 
%   �s��̏ꍇ�ARHO �̓X�J���̑��֌W���ɂ��ł��܂��B
%   
%   Y = COPULACDF(FAMILY,U,ALPHA) �́AU �ɂ���_�ŕ]�����ꂽ�X�J���̃p�����[�^
%   ALPHA ������ FAMILY �Œ�`���ꂽ 2 �ϐ��̃A���L���f�X�^�R�s�����̗ݐ�
%   �m����Ԃ��܂��BFAMILY �́A'Clayton', 'Frank', 'Gumbel' �̂����ꂩ�ł��B
%   U �� [0,1] ���̒l�� N�~2 �s��ł��B
%
%   ��:
%      u = linspace(0,1,10);
%      [U1,U2] = meshgrid(u,u);
%      F = copulacdf('Clayton',[U1(:) U2(:)],1);
%      surf(U1,U2,reshape(F,10,10));
%      xlabel('u1'); ylabel('u2');
%
%   �Q�l COPULAPDF, COPULARND, COPULASTAT, COPULAPARAM.


%   Copyright 2005-2007 The MathWorks, Inc.
