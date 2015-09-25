% DCOVARY   �C�������U������ D-�œK�v��
%
%   [SETTINGS, X] = DCOVARY(NFACTORS,COVARIATES,MODEL) �́A���W����
%   �A���S���Y�����g���āA���͍s�� COVARIATES �ɐݒ肳��Ă���C�������U��
%   ����̂��ƂŁA�v�� NFACTORS �ɑ΂��� D-�œK�݌v���쐬���܂��B
%   �v��̒��ł̎��s�̉񐔂́A�s�� COVARIATES �̍s�̐��ƍl�����܂��B
%   �o�͍s�� SETTINGS �́A�C�������U���܂ތv��ɑ΂���v���ݒ�s��ł��B
%   X �́A���̒l�����s��ł� (�v��s��ƌĂ΂�܂�)�BMODEL �́A��A
%   ���f���̎����𐧌䂷��I�v�V���������ł��BMODEL �́A���̕������
%   �����ꂩ�ɂȂ�܂��B
%
%     'linear'        �萔�A���`�������� (�f�t�H���g)
%     'interaction'   �萔�A���`�A�N���X�ς̍�������
%     'quadratic'     ���ݍ��ɁA��捀��������
%     'purequadratic' �萔�A���`�A��捀������
%
%   �܂��AMODEL �́A�֐� X2FX �Ŏg�p�ł���v�f�\������Ȃ�s��̌^�ł�
%   �ݒ�ł��܂��B���f���́A���K�̗v���Ɠ��l�ɁA�C�������U�ɓK�p����܂��B
%   �C�������U����ʂɎ�舵�������ꍇ�A���Ƃ��΁A�C�������U�ɑ΂��āA
%   ���`�����܂݂܂����A���K�̗v���ɑ΂��� 2 ���̍����܂܂Ȃ����Ƃɂ��A
%   �K���ȍs�� MODEL �𐶐����āA��舵�����Ƃ��ł��܂��B
%   
%
%   [SETTINGS, X] = DCOVARY(...,'PARAM1',VALUE1,'PARAM2',VALUE2,...)
%   �́A�p�����[�^/�l�̑g���g���āA�v��쐬�𐧌䂵�܂��B�g�p�\��
%   �p�����[�^�́A���̂悤�ɂȂ�܂��B
%
%      �p�����[�^    �l
%      'display'     �J��Ԃ��̃J�E���^�̕\���𐧌䂷�邽�߂ɁA'on'�A
%                    ���邢�� 'off' �̂����ꂩ�ɂȂ�܂� (�f�t�H���g = 'on')�B
%      'init'        NRUNS�~NFACTORS �s��Ƃ��Ă̏����v��
%                    (�f�t�H���g�́A����ׂɑI�����ꂽ�_�̏W���ł�)�B
%      'maxiter'     �J��Ԃ��̍ő�̐� (�f�t�H���g = 10)�B
%      'tries'       �����炭�ŏ��������e���s�ɑ΂��ă����_���|�C���g���g�p���A
%                    �V�K�J�n�_����݌v�̐��������s����� (�f�t�H���g 1)
%      'bounds'      2�~NFACTORS �̍s��Ƃ��Ďw�肳���e�v���̉����Ə���B
%                    ���邢�́A���̒l�́A�e�v�f���Ή�����v���̎w��\�Ȓl��
%                    �x�N�g�����w�肷�� NFACTORS �v�f���܂ރZ���z��ɂȂ�܂��B
%      'levels'      �e�v���̃��x�����̃x�N�g��
%      'excludefun'  �]�܂����Ȃ����s�����O����֐�
%      'categorical' �J�e�S���\���q�̃C���f�b�N�X
%
%   �֐� DCOVARY �́A�C�������U�̒l���܂ޏo���_�̌v����쐬���܂��B���ɁA
%   ���̌v����g�p���Đ��肳���W���̕ϓ������炷���߂ɁA�e�v��_�̏C��
%   ���Ă��Ȃ����W���������邱�Ƃɂ��J��Ԃ��܂��B
%
%   ��:  4 �̎��s�� 2 �u���b�N�ɂ����� 3 �v���ɑ΂���݌v���쐬���܂��B
%      blk = [-1 -1 -1 -1  1 1 1 1]';
%      dsgn = dcovary(3,blk);
%
%   �Q�l CORDEXCH, DAUGMENT, ROWEXCH, X2FX.


%   Copyright 1993-2007 The MathWorks, Inc. 
