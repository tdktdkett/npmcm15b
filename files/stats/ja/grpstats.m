%GRPSTATS  �O���[�v���̓��v��
%
%   GRPSTATS �́A�s��܂��̓f�[�^�Z�b�g�z����̃f�[�^�ɑ΂��āA�O���[�v���Ƃ�
%   �T�v�̓��v�ʂ��v�Z���܂��B
%
%   MEANS = GRPSTATS(X,GROUP) �́AX ���ϑ��s��̏ꍇ�AGROUP ���Ƃ� X �̊e���
%   ���ϒl MEANS ��Ԃ��܂��BGROUP �́A�J�e�S���ϐ��A�x�N�g���A�����z��A�܂���
%   ������̃Z���z��Ƃ��Ē�`�����O���[�v�ϐ��ł��BGROUP �́A�O���[�v�ϐ��̒l
%   �̂��ꂼ��̌ŗL�̌����ɂ���� X ���̒l�� ({G1 G2 G3} �̂悤��) �O���[�v��
%   ���邽�߂ɗl�X�ȃO���[�v�ϐ��̃Z���z��ɂ��邱�Ƃ��ł��܂��BGROUP �� [] ��
%   ���邩�A�ȗ����āA�O���[�v�������ɑS�̂̕W�{�̕��ς��v�Z���邱�Ƃ��ł��܂��B
%   �P��̃O���[�v�ϐ�������ꍇ�A�O���[�v�́A(GROUP �������̏ꍇ��) ����鏇�ɁA
%   (GROUP �����l�̏ꍇ��) ���l�̏��ɁA�܂��́A(GROUP ���J�e�S���̏ꍇ��) ���x��
%   �̃v���p�e�B�̏��ɕ��בւ����܂��B
%
%   GRPSTATS(X,GROUP,ALPHA) �́A�e���ςɊւ��� 100(1 - ALPHA)% �̐M����Ԃ�
%   ���C���f�b�N�X�ɑ΂��镽�ς̃v���b�g��\�����܂��B
%
%   DSSTATS = GRPSTATS(DS,GROUPVARS) �́ADS ���f�[�^�Z�b�g�z��̏ꍇ�ADS ����
%   �ϐ��ɑ΂��ăO���[�v���ƂɌv�Z���ꂽ ���ς��܂ރf�[�^�Z�b�g DSSTATS ��Ԃ�
%   �܂��BGROUPVARS �́A�O���[�v���`���A���̐����A���̐����̃x�N�g���A�f�[�^
%   �Z�b�g�̕ϐ����A�����̃f�[�^�Z�b�g�̕ϐ������܂ރZ���z��A�܂��́A�_��
%   �x�N�g���ł��� DS ���̃O���[�v�ϐ����w�肵�܂��B�O���[�v�ϐ��́A�J�e�S����
%   �x�N�g���Alogical�A���l�A������̕����z��A������̃Z���̃x�N�g���̂����ꂩ��
%   �Ȃ�܂��BDSSTATS �́ADS ���̎c��̃f�[�^�Z�b�g�ϐ��̂��ꂼ��ɑ΂��� 1 ��
%   �ϐ��Ɠ��l�ɁA�e�O���[�v�ɑ΂��� DS ���̊ϑ�����^���� 1 �̕ϐ����v���X����
%   �����̃O���[�v�ϐ����܂�ł��܂��B�����̕ϐ��́A���l���_���l�łȂ����
%   �Ȃ�܂���BDSSTATS �́ADS ���̊ϑ��̊e�O���[�v�ɑ΂��� 1 �̊ϑ��l���܂��
%   ���܂��BGROUPVARS �́A�O���[�v�������ɑS�̂̃f�[�^�Z�b�g�ƌ�������e�ϐ���
%   ���ς��v�Z���邽�߂ɁA[] �ɂ��邩�A�ȗ����邱�Ƃ��ł��܂��B
%
%   GRPSTATS �́A�����l�Ƃ��� NaN �������A�폜���܂��B
%
%   ���l�s�� X �̏ꍇ��[A,B,...] = GRPSTATS(X,GROUP,WHICHSTATS)�A�܂��́A
%   �f�[�^�Z�b�g�z�� DS �̏ꍇ�� DSSTATS = GRPSTATS(DS,GROUPVARS,WHICHSTATS) 
%   �́A�ʁX�̔z�� A, B, ..., �܂��́A�P��̃f�[�^�Z�b�g�z�� DSSTATS �̂����ꂩ
%   �Ƃ��āAWHICHSTATS �Ŏw�肳�ꂽ���v�ʂ�Ԃ��܂��BWHICHSTATS �́A�P��̊֐�
%   �n���h����֐����A�܂��́A�����̊֐��n���h����֐������܂ރZ���z��ɂȂ�܂��B
%   �o�� [A,B,...] �̐��́AWHICHSTATS ���̊֐��n���h���Ɗ֐����̐��ƈ�v����
%   ����΂Ȃ�܂���BWHICHSTATS �̖��O�͈ȉ��̒�����I�ׂ܂��B
%
%      'mean'     ����
%      'sem'      ���ς̕W���덷
%      'numel'    �J�E���g�A�܂��͗v�f��
%      'gname'    �O���[�v��
%      'std'      �W���΍�
%      'var'      ���U
%      'min'      �ŏ��l
%      'max'      �ő�l
%      'range'    �ő�l - �ŏ��l
%      'meanci'   ���ςɑ΂��� 95% �̐M�����
%      'predci'   �V�K�̊ϑ��ɑ΂��� 95% �̗\�����
%
%   WHICHSTATS ���Ɋ܂܂��e�֐��́AX �̗�A�܂��́ADS ���̕ϐ�����s��
%   �T�u�Z�b�g���󂯓���A������̋L�q�I���v�ʂ��v�Z���Ȃ���΂Ȃ�܂���B
%   ��ʓI�ɁA�֐��́A1 �̍s�����l��Ԃ��܂����A�����łȂ��ꍇ�́A����
%   ���̓f�[�^�Ɠ����T�C�Y�ɂȂ�܂��B���Ƃ��΁A @median �� @skewness �́A
%   ���l���͂ɑΉ����Ă���K�؂Ȋ֐��ł��B�������̃O���[�v�̓��͂����
%   �����Ă��A�֐��� GRPSTATS ���Ăяo�����тɓ����T�C�Y�̏o�͂�Ԃ��Ȃ����
%   �Ȃ�܂���B
%
%   �v�񓝌v�̊֐��́A�����̍s�����l���Ԃ��܂����A�L�q�I���v���X�J�� 
%   (���Ƃ��΁A�M�����) �łȂ��ꍇ�A�s�̊e���Ԃ� GRPSTATS �̓�����������
%   �߂�l�́A�f�[�^�̈قȂ�T�u�Z�b�g�Ɋ֐���K�p���܂��BNOBS x M x ... ��
%   ���͂ɑ΂��āA�v�񓝌v�̊֐��� NVALS x M x ... �̒l��Ԃ��ꍇ�A�Ή�����
%   �o�͔z��A�܂��́A�f�[�^�Z�b�g�̕ϐ��́ANGROUPS x M x ... x NVALS �ł��B
%   �����ŁANGROUPS �̓O���[�v�̐��ł��B
%
%   �f�[�^�����l�s�� X ���Ɋ܂܂��ꍇ�AWHICHSTATS �Ŏw�肳�ꂽ�֐��́A
%   �f�[�^�̍s����󂯓����悤�ɋL�q���A�e��ɑ΂���L�q�I���v�ʂ��v�Z����
%   ���Ƃ��\�ł��B�֐��́A�s�x�N�g���A�܂��́A�L�q�I���v���X�J���̏ꍇ�A
%   NVALS x NCOLS �̍s��̂����ꂩ��Ԃ��K�v������܂��B
%
%   [...] = GRPSTATS(...,WHICHSTATS,'Param1',VAL1,'Param2',VAL2,...) �́A
%   �ȉ�����ǉ��p�����[�^�̖��O/�l�̑g�̑I�����w�肵�܂��B
%
%      'Alpha'      'meanci' �� 'predci' �I�v�V�����ɑ΂��A100(1-ALPHA)% �Ƃ���
%                   �M���x���w�肷�� 0 �� 1 �̊Ԃ̒l�B�f�t�H���g�� 0.05 �ł��B
%      'DataVars'   WHICHSTATS �̊֐��ɓK�p����� DS ���̕ϐ����BDSSTATS �́A
%                   �����̃f�[�^�̂��ꂼ��̕ϐ��ɑ΂��� 1 �̗v�񓝌v��
%                   �ϐ����܂݂܂��BDATAVARS �́A���̐����A���̐����̃x�N�g���A
%                   �ϐ����A�����̕ϐ������܂ރZ���z��A�܂��́A�_���x�N�g����
%                   �����ꂩ�ł��B
%      'VarNames'   DSSTATS ���̕ϐ����B�f�t�H���g�ł́AGRPSTATS �́A�O���[�v
%                   �ϐ����ɑ΂��� DS ����̖��O���g�p���A�֐����� DS �����
%                   �f�[�^�̕ϐ����Ɋ�Â��v�񓝌v�̕ϐ��ɑ΂��閼�O���쐬���܂��B
%
%   DSSTATS �́ANGROUPVARS + 1 + NDATAVARS*NFUNS �̕ϐ����܂݂܂��B�����ŁA
%   NGROUPVARS �� GROUPVARS ���Ɏw�肳�ꂽ�ϐ����ł��BNDATAVARS �� DATAVARS ����
%   �w�肳�ꂽ�ϐ����ł��B�܂��ANFUNS �� WHICHSTATS ���Ɏw�肳�ꂽ�v�񓝌v�̐��ł��B
%
%   ��:
%      load carsmall
%      [m,p,g] = grpstats(Weight,Model_Year,{'mean','predci','gname'})
%      n = length(m)
%      errorbar((1:n)',m,p(:,2)-m)
%      set(gca,'xtick',1:n,'xticklabel',g)
%      title('95% prediction intervals for mean weight by year')
%
%      load hospital
%      meanWgts = grpstats(hospital,{'Sex' 'Smoker'},{'mean','sem'},'datavars','Weight')
%
%   �Q�l GSCATTER, GRP2IDX.


%   Copyright 1993-2009 The MathWorks, Inc. 
