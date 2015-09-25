% ROWEXCH ������ D-�œK�v�� (�s�����A���S���Y��)
%
%   [SETTINGS, X] = ROWEXCH(NFACTORS,NRUNS,MODEL) �́A�v�� NFACTORS ��
%   �΂��� NRUNS ���s������ D-�œK�v����쐬���܂��BSETTINGS �́A�v���
%   �΂���v���ݒ�̍s��ł���AX �́A���̒l�����s�� (�v��s��ƌĂ΂��
%   ���Ƃ�����) �ł��BMODEL �́A�I�v�V�����̈����ŁA��A���f���̎�����
%   ���䂵�܂��B�f�t�H���g�ł́AROWEXCH �́A�萔���������`���Z���f����
%   �΂���v��s����o�͂��܂��BMODEL�́A���̕�����̂����ꂩ�ɂȂ�܂��B
%
%     'linear'        �萔�A���`�����܂� (�f�t�H���g)
%     'interaction'   �萔�A���`�A�N���X�ς̍����܂�
%     'quadratic'     ���ݍ�p�ɓ�捀��ǉ�
%     'purequadratic' �萔�A���`�A��捀���܂�
%
%   ����ɁAMODEL �́A�֐� X2FX �Ŏg�p�ł���v�f�\������Ȃ�s��̌`��
%   �ɂ��Ȃ�܂��B
%
%   [SETTINGS, X] = ROWEXCH(...,'PARAM1',VALUE1,'PARAM2',VALUE2,...) �́A
%   �p�����[�^/�l�̑g�̐ݒ��ʂ��āA�v�搶���S�̂𐧌�ł��܂��B���p
%   �\�ȃp�����[�^�́A���̂Ƃ���ł��B
%
%      �p�����[�^   �l
%      'bounds'     2�~NFACTORS �s��Ƃ��Ďw�肳���e�v���ɑ΂��鉺����
%                   ����B����ɁA���̒l�́A�Ή�����v���ɑ΂���\��
%                   �l�̃x�N�g�����w�肷��e�v�f�ł��� NFACTORS �v�f��
%                   �܂ރZ���z��ɂ��Ȃ�܂��B
%      'categorical'     �J�e�S���\���q�̃C���f�b�N�X
%      'display'    �J��Ԃ��J�E���^�̕\�����R���g���[�����邽�߂ɁA
%                   'on'�A���邢�́A'off' �̂����ꂩ�ƂȂ�܂��B
%                   (�f�t�H���g = 'on').
%      'init'       NRUNS�~NFACTORS �s��Ƃ��Ă̏����v��
%                   (�f�t�H���g�́A����ׂɑI�����ꂽ�_�W���ł�)�B
%      'excludefun' �]�܂����Ȃ����s�����O����֐�
%      'levels'     �e�v���̃��x�����̃x�N�g��
%      'maxiter'    �J��Ԃ��̍ő�� (�f�t�H���g = 10).
%      'tries'      �����炭�ŏ��������e���s�ɑ΂��郉���_���|�C���g��
%                   �g�p���A�V�K�J�n�_����v��𐶐����悤�Ƃ����
%                   (�f�t�H���g 1)�B
%
%   �֐� ROWEXCH �́A�s�����A���S���Y�����g�p���āAD-�œK�v���T���܂��B
%   ����́A�v��Ɋ܂܂��K�i�ȓ_�̌��W�����ŏ��ɐ������A���ꂩ��
%   �J��Ԃ��A���̌v����g�p���Đ��肳���W���̕��U�����炷�悤�Ɏ��݂�
%   �ۂɁA���̓_�ɑ΂���v��_���������܂��B�f�t�H���g�̂��̂ƈقȂ�
%   ���W�����g�p����K�v������ꍇ�AROWEXCH �̑���� �֐� CANDGEN 
%   �� CANDEXCH ���Ăяo�����Ƃ��ł��܂��B
%
%   'excludefcn' �֐��� F �̏ꍇ�A�V���^�b�N�X B=F(S) ���T�|�[�g���Ȃ����
%   �Ȃ�܂���B�����ŁAS �́A�ݒ���܂� K�~NFACTORS �̍s��ŁAB �́A
%   K �̃u�[���l�̃x�N�g���ł��BB(j) �́AS �� j �Ԗڂ̍s�����O����K�v��
%   ����ꍇ�� true �ɂȂ�܂��B
%
%   ��:
%      % 2 �v���� 2 �����f���ɑ΂���v��
%      sortrows(rowexch(2,9,'q'))
%
%      % ���ꂼ�� 3 ���x�����Ƃ� 3 �̃J�e�S���v���ɑ΂���v�� -- 
%      % �����̎��s�́A�ŗǂ̌v��������邽�߂ɕK�v�ɂȂ�܂��B
%      sortrows(rowexch(3,9,'linear','cat',1:3,'levels',3,'tries',10))
%
%   �Q�l CORDEXCH, CANDGEN, CANDEXCH, X2FX.


%   Copyright 1993-2007 The MathWorks, Inc. 
