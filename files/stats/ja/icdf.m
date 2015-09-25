% ICDF �w�肵�����z�ɑ΂���t�ݐϕ��z�֐�
%
%   X = ICDF(NAME,P,A) �́AP �̊m���l�ŕ]�������A�p�����[�^�l A ������
%   NAME �Ŏw�肳�ꂽ 1 �̃p�����[�^�̊m�����z�ɑ΂���t�ݐϕ��z�֐���
%   �l�̔z���Ԃ��܂��B
% 
%   X = ICDF(NAME,P,A,B) �܂��� X = ICDF(NAME,P,A,B,C) �́A�p�����[�^�l
%   A, B (����� C) ������ 2 �A�܂��� 3 �̃p�����[�^�̊m�����z�ɑ΂���
%   �t�ݐϕ��z�֐��̒l��Ԃ��܂��B
%
%   X �̃T�C�Y�́A���͈����̋��ʂ̃T�C�Y�ł��B�X�J���̓��͂́A���̓��͂�
%   �����T�C�Y�̒萔�s��Ƃ��ċ@�\���܂��BX �̊e�v�f�́A���͂̑Ή�����
%   �v�f�ŕ]�������A�t�ݐϕ��z���܂݂܂��B
% 
%   �t cdf �̒l�́A���p���E�Ƃ��Ēm���Ă��܂��B
%
%   NAME �͂��̂Ƃ���ł��B
%
%      'beta'  �܂��� 'Beta',
%      'bino'  �܂��� 'Binomial',
%      'chi2'  �܂��� 'Chisquare',
%      'exp'   �܂��� 'Exponential',
%      'ev'    �܂��� 'Extreme Value',
%      'f'     �܂��� 'F',
%      'gam'   �܂��� 'Gamma',
%      'gev'   �܂��� 'Generalized Extreme Value',
%      'gp'    �܂��� 'Generalized Pareto',
%      'geo'   �܂��� 'Geometric',
%      'hyge'  �܂��� 'Hypergeometric',
%      'logn'  �܂��� 'Logn�܂���mal',
%      'nbin'  �܂��� 'Negative Binomial',
%      'ncf'   �܂��� 'Noncentral F',
%      'nct'   �܂��� 'Noncentral t',
%      'ncx2'  �܂��� 'Noncentral Chi-square',
%      'norm'  �܂��� 'Normal',
%      'poiss' �܂��� 'Poisson',
%      'rayl'  �܂��� 'Rayleigh',
%      't'     �܂��� 'T',
%      'unif'  �܂��� 'Uniform',
%      'unid'  �܂��� 'Discrete Uniform',
%      'wbl'   �܂��� 'Weibull'.
% 
%   ICDF �́A�v�Z���s���̂ɑ��̓��ʂȃ��[�`�����Ăяo���܂��B
%
%   ��:
%       z = icdf('normal',0.1:0.2:0.9,0,1) % �W�����K���z�̒l��Ԃ��܂��B
%       x = icdf('Poisson',0.1:0.2:0.9,1:5) % �z��̓���
%
%   �Q�l CDF, MLE, PDF, RANDOM.


%   Copyright 1993-2007 The MathWorks, Inc.
