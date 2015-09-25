% CORDEXCH   D-�œK�v�� (���W�����A���S���Y��)
%
%   [SETTINGS, X] = CORDEXCH(NFACTORS,NRUNS,MODEL) �́A�v�� NFACTORS ��
%   �΂��āANRUNS ������ D-�œK�v����쐬���܂��BSETTINGS �́A�v��̂��߂�
%   �v���ݒ�s��ł���AX �́A(�v��s��ƌĂ΂��) ���̒l�̍s��ł��B
%   MODEL �́A��A���f���̎����𐧌䂷��I�v�V�����̈����ł��B
%   MODEL �́A���̕�����̂����ꂩ�ɂȂ�܂��B:
%
%     'linear'        �萔�A���`�������� (�f�t�H���g)
%     'interaction'   �萔�A���`�A�N���X�ς̍�������
%     'quadratic'     ���ݍ��ɁA��捀��������
%     'purequadratic' �萔�A���`�A��捀������
%
%   �܂��AMODEL �́A�֐� X2FX �Ŏg�p�ł���v�f�\������Ȃ�s��̌^�ł�
%   �ݒ�ł��܂��B
%
%   [SETTINGS, X] = CORDEXCH(...,'PARAM1',VALUE1,'PARAM2',VALUE2,...) �́A
%   �p�����[�^/�l�̑g���g���āA�v��쐬�𐧌䂵�܂��B�g�p�\�ȃp�����[�^�́A
%   ���̂Ƃ���ł��B
%
%      �p�����[�^    �l
%      'bounds'      2�~NFACTORS �Ƃ��Ďw�肳���e�v���ɑ΂��鉺����
%                    ����B���邢�́A���̒l�́A�Ή�����v���ɑ΂��鋖�e�l
%                    �̃x�N�g�����w�肷��e�v�f�ł��� NFACTORS �̗v�f��
%                    �܂ރZ���z��ɂȂ�܂��B
%      'categorical' �J�e�S���\���q�̃C���f�b�N�X
%      'display'     �J��Ԃ��J�E���^(�f�t�H���g = 'on') �̕\���𐧌䂷��
%                    ���߂ɁA'on' ���邢�� 'off' �̂����ꂩ�ɂȂ�܂��B
%      'excludefun'  �]�܂����Ȃ����s�����O����֐�
%      'init'        NRUNS�~NFACTORS �s��Ƃ��Ă̏����v��
%                    (�f�t�H���g�́A����ׂɑI�����ꂽ�_�W���ł�)�B
%      'levels'      �e�v���̃��x�����̃x�N�g��
%      'maxiter'     �J��Ԃ��̍ő�� (�f�t�H���g = 10)�B
%      'tries'       �����炭�ŏ��������e���s�ɑ΂��郉���_���|�C���g��
%                    �g�p���A�V�K�J�n�_����v��𐶐����悤�Ƃ����
%                    (�f�t�H���g 1)�B
%
%   �֐� CORDEXCH �́A���W�����A���S���Y�����g�p���āAD-�œK�v����s���܂��B
%   ����́A�o���_�̌v����쐬���A���ꂩ��A���̌v����g�p���Đ��肳���
%   �W���̕ϓ������炷���߂ɁA�e�v��_�̊e���W���������邱�Ƃɂ��A
%   �J��Ԃ��܂��B
%
%   'excludefcn' �֐��� F �̏ꍇ�A�V���^�b�N�X B=F(S)  ���T�|�[�g���Ȃ����
%   �Ȃ�܂���B�����ŁAS �͐ݒ���܂� K�~NFACTORS ��̍s��ŁAB �� K ��
%   boolean �l�ł��BB(j) �́AS �� j �Ԗڂ̍s�������K�v������ꍇ�ɐ^��
%   �Ȃ�܂��B
%
%   ��:
%      % 2 �v���� 2 �����f���ɑ΂���v��
%      sortrows(cordexch(2,9,'q'))
%
%      % �������s�Ȃ� 3^2 ��̗v�����v�悵�܂��B�����ŗv���̒l�� 50% 
%      % �������A2 �̗v���́A�S�̂̍������ 15% ��菬�������A�܂���
%      % 85% ���傫���Ȃ�܂��B
%      f = @(x) sum(x,2)>85 | sum(x,2)<15;
%      bnds = [0 0;50 50];
%      x=sortrows(cordexch(2,9,'q','bounds',bnds,'levels',101,'excl',f))
%      plot(x(:,1),x(:,2),'bo')
%
%   �Q�l ROWEXCH, DAUGMENT, DCOVARY, X2FX.


%   Copyright 1993-2007 The MathWorks, Inc. 
