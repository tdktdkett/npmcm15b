% COPULAPDF �R�s�����̊m�����x�֐�
%
%   Y = COPULAPDF('Gaussian',U,RHO) �́AU �̓_�ŕ]�����ꂽ�A���`����
%   �p�����[�^ RHO �����K�E�X�E�R�s�����̊m�����x��Ԃ��܂��BU �́A
%   P �����̒P�ʒ������̓��� N �_��\�� [0,1] �ɂ���l�� N�~P �s��ł��B
%   RHO �� P�~P �s��ł��BU �� N�~2 �s��̏ꍇ�ARHO �̓X�J���̑��֌W��
%   �ɂ��Ȃ�܂��B
%
%   Y = COPULAPDF('t',U,RHO,NU) �́AU �̓_�ŕ]�����ꂽ�A���`���փp�����[�^ 
%   RHO �Ǝ��R�x�p�����[�^ NU ������ t �R�s�����̊m�����x��Ԃ��܂��B
%   U �� [0,1] �ɂ���l�� N�~P �̍s��ł��BRHO �� P�~P �̑��֍s��ł��B
%   U �� N�~2 �s��̏ꍇ�ARHO �̓X�J���̑��֌W���ɂ��Ȃ�܂��B
%   
%   Y = COPULAPDF(FAMILY,U,ALPHA) �́A�X�J���̃p�����[�^ ALPHA ������
%   FAMILY �Ō��܂� 2 �ϐ��̃A���L���f�X�^�R�s�����̊m�����x��Ԃ��܂��B
%   FAMILY �� 'Clayton', 'Frank', 'Gumbel' �̂����ꂩ�ł��BU �� [0,1] ��
%   ����l�� N�~2 �̍s��ł��B
%
%   ��:
%      u = linspace(0,1,10);
%      [U1,U2] = meshgrid(u,u);
%      F = copulapdf('Clayton',[U1(:) U2(:)],1);
%      surf(U1,U2,reshape(F,10,10));
%      xlabel('u1'); ylabel('u2');
%
%   �Q�l COPULACDF, COPULARND, COPULASTAT, COPULAPARAM.


%   Copyright 2005-2007 The MathWorks, Inc. 
