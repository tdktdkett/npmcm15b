% COPULARND  �R�s�����̗����x�N�g��
%
%   U = COPULARND('Gaussian',RHO,N) �́A���`���փp�����[�^ RHO ������
%   �K�E�X�E�R�s�������琶�����ꂽ N �̗����x�N�g����Ԃ��܂��BRHO ��
%   P�~P �̑��֍s��̏ꍇ�AU �� N�~P �̍s��ɂȂ�܂��BRHO ���X�J����
%   ���֌W���̏ꍇ�ACOPULARND �́A2 �ϐ��̃K�E�X�E�R�s�������� U �𐶐�
%   ���܂��BU �̊e��� (0,1) �ň�l�ȁA���ӕ��z����̕W�{�ł��B
%
%   U = COPULARND('t',RHO,NU,N) �́A���`���փp�����[�^ RHO �Ǝ��R�x NU 
%   ������ t �R�s�������琶�����ꂽ N �̗����x�N�g����Ԃ��܂��BRHO ��
%   P�~P �̑��֍s��̏ꍇ�AU �� N�~P �s��ɂȂ�܂��BRHO ���X�J���̑���
%   �W���̏ꍇ�ACOPULARND �� 2 �ϐ��� t �R�s�������� U �𐶐����܂��B
%   U �̊e��́A(0,1) �ň�l�Ȏ��ӕ��z����̕W�{�ł��B
%
%   U = COPULARND(FAMILY,ALPHA,N) �́A�X�J���p�����[�^ ALPHA ������ 
%   FAMILY �Ō��܂� 2 �ϐ��̃A���L���f�X�^�R�s�������琶�����ꂽ
%   N �̗����x�N�g����Ԃ��܂��BFAMILY �� 'Clayton', 'Frank', 'Gumbel' 
%   �̂����ꂩ�ł��BU �� N�~2 �̍s��ł��BU �̊e��́A(0,1) �ň�l��
%   ���ӕ��z����̕W�{�ł��B
%
%   ��:
%      % -0.5 �̏��ʑ��ւ����� 2 �ϐ��̃K�E�X�E�R�s�����ɑΉ�������`
%      % ���փp�����[�^�𓱂��o���܂��B
%      tau = -0.5
%      rho = copulaparam('gaussian',tau)
%
%      % �R�s�������g���ď]���̃x�[�^���z���闐���l�𐶐����܂��B
%      u = copularnd('gaussian',rho,100)
%      b = betainv(u,2,2)
%
%      % �W�{�� tau �Ƌߎ��I�ɓ����ȏ��ʑ��ւ������Ƃ��m�F���܂��B
%      tau_sample = corr(b,'type','kendall')
%
%   �Q�l COPULACDF, COPULAPDF, COPULASTAT, COPULAPARAM.


%   Copyright 2005-2007 The MathWorks, Inc. 
