%ProbDistUnivParam  1 �ϗʃp�����g���b�N�m�����z
%
%   ProbDistUnivParam �I�u�W�F�N�g�́A1 �ϗʂ̃p�����g���b�N�m�����z��\���܂��B
%   �R���X�g���N�^���g���ăp�����[�^�l��^���邱�ƂŁA�܂��́A���z���f�[�^��
%   �ߎ����邽�߂� FITDIST �֐����g�����Ƃɂ���āA���̃I�u�W�F�N�g���쐬����
%   ���Ƃ��ł��܂��B
%
%   PD = ProbDistUnivParam(DISTNAME,PARAMS) �́A�p�����[�^ PARAMS �� 
%   DISTNAME �Ƃ������O�̊m�����z���`����I�u�W�F�N�g PD ���쐬���܂��B
%
%   PD = FITDIST(X,DISTNAME) �́A�x�N�g�� X ���̃f�[�^���琄�肳���p�����[�^�ŁA
%   DISTNAME �Ƃ������O�̊m�����z���`����I�u�W�F�N�g PD ���쐬���܂��B
%
%   ProbDistUnivParam �v���p�e�B:
%       DistName      - ���z��
%       InputData     - ���z���ߎ����邽�߂Ɏg�p����f�[�^���܂ލ\����
%       NLogL         - �ߎ������f�[�^�ɑ΂��镉�̑ΐ��ޓx
%       NumParams     - �p�����[�^�̌�
%       ParamNames    - NumParams �p�����[�^���̃Z���z��
%       Params        - NumParams �p�����[�^�l�̔z��
%       ParamIsFixed  - ����ł͂Ȃ��A�ǂ̃p�����[�^���C�����邩������
%                       �_���x�N�g��
%       ParamDescription - �p�����[�^���L�q���� NumParams ������̃Z���z��
%       ParamCov      - �p�����[�^�l�̋����U�s��
%       Support       - ���z�̃T�|�[�g���L�q����\����
%
%       �p�����[�^�l�́A�v���p�e�B�Ƃ��Ă��^�����܂��B���Ƃ��΁APD ��
%       ���K���z��\���ꍇ�APD.mu �� PD.sigma �́Amu �� sigma �p�����[�^��
%       �l��^����v���p�e�B�ɂȂ�܂��B
%
%   ProbDistUnivParam ���\�b�h:
%      ProbDistUnivParam/ProbDistUnivParam - �R���X�g���N�^
%      cdf            - �ݐϕ��z�֐�
%      icdf           - �t�ݐϕ��z�֐�
%      iqr            - �l���ʔ͈�
%      mean           - ����
%      median         - �����l
%      paramci        - �p�����[�^�ɑ΂���M�����
%      pdf            - �m�����x�֐�
%      random         - ��������
%      std            - �W���΍�
%      var            - ���U
%
%   �Q�l PROBDIST, PROBDISTPARAMETRIC, FITDIST.


%   Copyright 2008-2009 The MathWorks, Inc.
