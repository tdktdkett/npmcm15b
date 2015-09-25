% COPULASTAT �R�s�����̏��ʑ���
%
%   R = COPULASTAT('Gaussian',RHO) �́A���`���փp�����[�^ RHO ������
%   �K�E�X�E�R�s�����ɑΉ�����P���h�[���̏��ʑ��ւ�Ԃ��܂��BRHO ��
%   �X�J���̑��֌W���̏ꍇ�AR �� 2 �ϐ��̃R�s�����ɑΉ�����X�J���̑���
%   �p�����[�^�ɂȂ�܂��BRHO �� P�~P �̑��֍s��̏ꍇ�AR �� P�~P ��
%   ���֍s��ɂȂ�܂��B
%
%   R = COPULASTAT('t',RHO,NU) �́A���`���փp�����[�^ RHO �Ǝ��R�x NU ��
%   ���� t �R�s�����ɑΉ�����P���h�[���̏��ʑ��� R ��Ԃ��܂��BRHO ��
%   �X�J���̑��֌W���̏ꍇ�AR �� 2 �ϐ��̃R�s�����ɑΉ�����X�J���̑���
%   �p�����[�^�ɂȂ�܂��BRHO �� P�~P �̑��֍s��̏ꍇ�AR �� P�~P ��
%   ���֍s��ɂȂ�܂��B
%   
%   R = COPULASTAT(FAMILY,ALPHA) �́A�X�J���p�����[�^ ALPHA ������ 2 �ϐ�
%   �̃A���L���f�X�^�R�s�����ɑΉ�����P���h�[���̏��ʑ��� R ��Ԃ��܂��B
%   FAMILY �́A'Clayton', 'Frank', 'Gumbel' �̂����ꂩ�ɂȂ�܂��B
%
%   R = COPULASTAT(...,'type',TYPE) �́A�w�肳�ꂽ�^�C�v�̏��ʑ��ւ�Ԃ��܂��B
%   TYPE �́A�P���h�[���� tau ���v�Z����ꍇ�� 'Kendall'�A�܂��́A�X�s�A�}����
%   rho ���v�Z����ꍇ�� 'Spearman' ��Ԃ��܂��B
%
%   COPULASTAT �́A��͎������݂��Ȃ��ꍇ�͂������̃R�s�������ɑ΂���
%   �X�s�A�}���̏��ʑ��ւ̋ߎ����g�p���܂��B�ߎ��́A�����e�J�����E�V�~�����[�V����
%   ���g�p���Čv�Z���ꂽ�l�ւ̕������̃t�B�b�g�Ɋ�Â��܂��B
%
%   ��:
%      % ���`���փp�����[�^ -0.7071 ������ 2 �ϐ��̃K�E�X�E�R�s������
%      % �΂���_���I�ȏ��ʑ��֌W�����擾���܂��B
%      rho = -.7071
%      tau = copulastat('gaussian',rho)
%
%      % �R�s�������g�p���ď]���̃x�[�^���z���闐���𔭐����܂��B
%      u = copularnd('gaussian',rho,100);
%      b = betainv(u,2,2);
%
%      % �W�{�� tau �Ƌߎ��I�ɓ����ȏ��ʑ��ւ������Ƃ��m�F���܂��B
%      tau_sample = corr(b,'type','k')
%
%   �Q�l COPULACDF, COPULAPDF, COPULARND, COPULAPARAM.


%   Copyright 2005-2007 The MathWorks, Inc. 
