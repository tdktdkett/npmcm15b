% COPULAPARAM ���ʑ��ւ̊֐��Ƃ��ẴR�s�����̃p�����[�^
%
%   RHO = COPULAPARAM('Gaussian',R) �́A�P���h�[���̏��ʑ��� R ������
%   �K�E�X�E�R�s�����ɑΉ�������`���փp�����[�^ RHO ��Ԃ��܂��BR ��
%   �X�J���̑��֌W���̏ꍇ�ARHO �� 2 �ϐ��R�s�����ɑΉ�����X�J���̑���
%   �W���ɂȂ�܂��BR �� P�~P �̑��֍s��̏ꍇ�ARHO �� P�~P �̑��֍s���
%   �Ȃ�܂��B
%
%   RHO = COPULAPARAM('t',R,NU) �́A�P���h�[���̏��ʑ��� R �Ǝ��R�x NU
%   ������ t �R�s�����ɑΉ�������`���փp�����[�^ RHO ��Ԃ��܂��BR ��
%   �X�J���̑��֌W���̏ꍇ�ARHO �� 2 �ϐ��R�s�����ɑΉ�����X�J���̑���
%   �W���ɂȂ�܂��BR �� P�~P �̑��֍s��̏ꍇ�ARHO �� P�~P �̑��֍s���
%   �Ȃ�܂��B
%   
%   ALPHA = COPULAPARAM(FAMILY,R) �́A�P���h�[���̏��ʑ��� R ������ 
%   2 �ϐ��̃A���L���f�X�^�R�s�����ɑΉ�����R�s�����p�����[�^ ALPHA ��
%   �Ԃ��܂��BR �̓X�J���ł��BFAMILY �́A'Clayton', 'Frank', 'Gumbel' ��
%   �����ꂩ�ł��B
%
%   [...] = COPULAPARAM(...,'type',TYPE) �́AR �����ʑ��ւ̎w��^�C�v��
%   ������̂Ɖ��肵�܂��BTYPE �̓P���h�[���� tau �ɑ΂��� 'Kendall'�A
%   ���邢�́A�X�s�A�}���� rho �ɑ΂��� 'Spearman' �ł��B
%
%   COPULAPARAM �́A��͎������݂��Ȃ��ꍇ�A�������̃R�s�������ɑ΂���
%   �X�s�A�}���̏��ʑ��ւɋߎ����g�p���܂��B�ߎ��́A�����e�J�����E�V�~�����[�V����
%   ���g�p���Čv�Z���ꂽ�l�ւ̕������̃t�B�b�g�Ɋ�Â��܂��B
%
%   ��:
%      % -0.5 �̏��ʑ��ւ����� 2 �ϐ��K�E�X�E�R�s�����ɑΉ�������`����
%      % �W�����擾���܂��B
%      tau = -0.5
%      rho = copulaparam('gaussian',tau)
%
%      % �R�s�������g���ď]���̃x�[�^���z���闐���l�𐶐����܂��B
%      u = copularnd('gaussian',rho,100);
%      b = betainv(u,2,2);
%
%      % �W�{�� tau �Ƌߎ��I�ɓ����ȏ��ʑ��ւ������Ƃ��m�F���܂��B
%      tau_sample = corr(b,'type','k')
%
%   �Q�l COPULACDF, COPULAPDF, COPULARND, COPULASTAT.


%   Copyright 2005-2007 The MathWorks, Inc. 
