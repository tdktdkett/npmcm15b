% GAGERR  �Q�[�W�̔������ƍČ��� (R&R) ����
%
%     GAGERR(Y,{PART,OPERATOR}) �́APART ��� OPERATOR �Ŏ��W���ꂽ Y ��
%     ����l�ŃQ�[�W�� R&R ���͂��s�Ȃ��܂��BY �͈قȂ镔���̑���l���܂�
%     ��x�N�g���ł��BPART �� OPERATOR �̓J�e�S���ϐ��A���l�x�N�g���A�����s��A
%     �܂��́A������̃Z���z��ł��BPART �� OPERATOR �̗v�f���́AY �Ɠ�����
%     ����K�v������܂��B
%
%     �R�}���h�E�B���h�E�ɕ\���\������A���̒��ɁA���U�̕����A�W���΍��A
%     ���͂̕��U (5.15*�W���΍�) �̕������قȂ�\�[�X�ɑ΂���p�[�Z���g��
%     ���ɕ\������܂��B
%     �T�v�̓��v�ʂ́A�\�̉��ɈقȂ�J�e�S���� (NDC) �ƑS�ϓ��̃Q�[�W 
%     R&R �̃p�[�Z���e�[�W (PRR) ���\������܂��B
%
%     �ϓ��̈قȂ鐬���̃p�[�Z���e�[�W�������_�O���t���v���b�g����܂��B
%     �Q�[�W R&R �̔������A�Č����Ɗe�����̕ϓ��́A4 �̐����o�[�Ƃ���
%     �v���b�g����܂��B
%     ���U�ƕ��͕��U�́A2 �̃O���[�v�Ƃ��ăv���b�g����܂��B
%
%     NDC ���g��������V�X�e���̐��\�𑪂邽�߂̃K�C�h���C���́A�ȉ���
%     �悤�ɂȂ�܂��B
%           (1) NDC > 5 �̏ꍇ�A����V�X�e���͋@�\���܂��B
%           (2) NDC < 2 �̏ꍇ�A����V�X�e���͋@�\���܂���B
%           (3) ����ȊO�̏ꍇ�A����V�X�e���͎󂯓���\�ł��B
%
%     PRR ���g��������V�X�e���̐��\�𑪂邽�߂̃K�C�h���C���́A�ȉ���
%     �Ƃ���ł��B
%           (1) PRR < 10% �̏ꍇ�A����V�X�e���͋@�\���܂��B
%           (2) PRR > 30% �̏ꍇ�A����V�X�e���͋@�\���܂���B
%           (3) ����ȊO�̏ꍇ�A����V�X�e���͎󂯓���\�ł��B
%
%     GAGERR(Y,GROUP) �́AGROUP ���ŕ\����� PART �� OPERATOR �� Y �̑���l��
%     �Q�[�W R&R ���͂��s�Ȃ��܂��BGROUP �́A1 �Ԗڂ� 2 �Ԗڂ̗񂪂��ꂼ��
%     �قȂ镔�i�Ƒ�����w�肷�鐔�l�s��ł��BGROUP �̍s���́AY �̗v�f����
%     �����ł���K�v������܂��B
%
%     GAGERR(Y,PART) �́A������Ȃ��� Y �̑���l�ŃQ�[�W R&R ���͂�
%     �s�Ȃ��܂��B���ׂĂ̕ϓ��� PART �ɂ����̂Ɖ��肵�܂��B
%
%     GAGERR(...,'PARAM1',val1,'PARAM2',val2,...) �́A�ȉ��̃p�����[�^��
%     �������̖��O/�l�̑g�ݍ��킹���g���āA�Q�[�W R&R ���͂��s�Ȃ��܂��B
%
%       �p�����[�^      �l
%
%       'spec'          �H���̏���Ɖ��������ꂼ���`���� 2 �v�f�x�N�g���B
%                       ���̏ꍇ�A�R�}���h�E�B���h�E�ɕ\�������T�v�̓��v�ʂ́A
%                       ���x-���e�덷�̔� (PTR) ���܂݂܂��B
%                       ����ɁA�_�O���t�́A���e�덷�̃p�[�Z���e�[�W��
%                       �O���[�v���ǉ�����܂��B
%
%                       PTR ���g��������V�X�e���̐��\�𑪂�K�C�h���C���́A
%                       �ȉ��̂Ƃ���ł��B
%                         (1) PTR < 0.1 �̏ꍇ�A����V�X�e���͋@�\���܂��B
%                         (2) PTR > 0.3 �̏ꍇ�A����V�X�e���͋@�\���܂���B
%                         (3) ����ȊO�̏ꍇ�A����V�X�e���͎󂯓���\�ł��B
%
%      'printtable'     �\�o�͂��R�}���h�E�B���h�E�ɕ\�����邩�ǂ�����
%                       �w������l 'on' �܂��� 'off' ����������B
%                       �f�t�H���g�l�� 'on' �ł��B
%
%      'printgraph'     �_�O���t���v���b�g���邩�ǂ������w������l 'on' 
%                       �܂��� 'off' ����������B�f�t�H���g�l�� 'on' �ł��B
%
%      'randomoperator' OPERATOR �̌��ʂ�����ׂ��ǂ������w������_���l 
%                       true �܂��� false�B
%
%      'model'          �ȉ��̂����ꂩ�Ŏw�肳���g�p���f��:
%                         'linear' -- ����ʂ̂� (�f�t�H���g)
%                         'interaction' -- ����� + 2 �v�����ݍ�p 
%                         'nested' -- PART ���̓���q�`���� OPERATOR
%
%    [TABLE, STATS] = GAGERR(...) �́A6�~5 �̍s�� TABLE �ƍ\���� STATS ��
%    �Ԃ��܂��BTABLE �̍�����E�̗�́A���U�A���U�̃p�[�Z���e�[�W�A�W���΍��A
%    ���͕��U�A���͕��U�̃p�[�Z���e�[�W��\���܂��BTABLE �̏ォ�牺�̍s�́A
%    �ϓ��̈قȂ�\�[�X��\���܂�: �Q�[�W R&R�A�������A�Č����A����A�����
%    ���i�̑��ݍ�p�A���i�B
%    STATS �́A����V�X�e���̐��\�ɑ΂���T�v�̓��v�ʂ��܂ލ\���̂ł��B
%    STATS �̃t�B�[���h�͈ȉ��̂Ƃ���ł��B
%          ndc -- �قȂ�J�e�S����
%          prr -- �S�ϓ��̃Q�[�W R&R �̃p�[�Z���e�[�W
%          ptr -- ���x-���e�덷�̔�B�p�����[�^ 'spec' ���^�����Ȃ��ꍇ�A
%                 �l�� NaN �ł��B
%
%  ��
%    ���ݍ�p�̂Ȃ����� ANOVA ���f�����g���ăV�~�����[�V������������V�X�e��
%    �ɑ΂���Q�[�W R&R ���͂��s�Ȃ��܂��B
%       y = randn(100,1);                                % ����
%       part = ceil(3*rand(100,1));                      % ���i
%       operator = ceil(4*rand(100,1));                  % ����
%       gagerr(y,{part, operator},'randomoperator',true) % ���


% Copyright 2006-2008 The MathWorks, Inc.