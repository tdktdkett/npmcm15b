%DAUGMENT  D-�œK�v��̊g��
%
%   [SETTINGS, X] = DAUGMENT(STARTDES,NRUNS,MODEL) �́A���W���� D-�œK�v��
%   �A���S���Y�����g�p���āA�����v��Ɏ��s NRUNS ��ǉ����܂��BSTARTDES �́A
%   �I���W�i���̌v��̗v���ݒ�̍s��ł��B�o�͂́A�v���ݒ�s�� SETTINGS ��
%   ���f�����̊֘A����s�� X (�݌v�s��ƌĂ΂��) �ł��BMODEL �́A��A���f����
%   �����𐧌䂷��I�v�V���������ł��B�f�t�H���g�ł́ADAUGMENT �́A�萔����
%   �����`���@���f���ɑ΂���v��s���Ԃ��܂��BMODEL �́A�ȉ��̕������
%   �����ꂩ�ɂȂ�܂��B
%
%     'linear'        �萔�Ɛ��`�� (�f�t�H���g)
%     'purequadratic' �萔�A���`�A��捀������
%     'quadratic'     ���ݍ��{��捀
%     'purequadratic' �萔�A���`�A��捀������
%
%   �܂��AMODEL �́AX2FX �֐��Ŏg�p�ł��鍀�̒�`�̍s��ɂ��邱�Ƃ��ł��܂��B
%
%   DAUGMENT �֐��́A���W�����A���S���Y�����g�p���Ċ����̌v����g�債�܂��B
%   CANDEXCH �֐��� 'start' �I�v�V�����́A�s�����A���S���Y�����g�p���ē���
%   �@�\��^���܂��B
%
%   [SETTINGS, X] = DAUGMENT(...,'PARAM1',VALUE1,'PARAM2',VALUE2,...) �́A
%   �p�����[�^/�l�̑g���g���āA�v��쐬�𐧌䂵�܂��B���p�\�ȃp�����[�^�́A
%   �ȉ��̂Ƃ���ł��B
%
%      �p�����[�^    �l
%      'display'     �J��Ԃ��̃J�E���^�̕\���𐧌䂷�邽�߂ɁA'on' �܂��� 
%                    'off' �̂����ꂩ�ɂȂ�܂� (�f�t�H���g = 'on')�B
%      'init'        NRUNS �s�����s��Ƃ��Ă̏����̌v�� (�f�t�H���g�́A
%                    ����ׂɑI�����ꂽ�_�̏W���ł�)�B
%      'maxiter'     �ő�J��Ԃ��� (�f�t�H���g = 10)�B
%      'tries'       �����炭�ŏ��������e���s�ɑ΂��ă����_���|�C���g��
%                    �g�p���A�V�K�J�n�_����݌v�̐��������s����� (�f�t�H���g 1)�B
%      'bounds'      2�~NFACTORS �̍s��Ƃ��Ďw�肳���e�v���̉����Ə���B
%                    ������ NFACTORS �͗v�����ł��B���邢�́A���̒l�́A
%                    �e�v�f���Ή�����v���̎w��\�Ȓl�̃x�N�g�����w�肷�� 
%                    NFACTORS �v�f���܂ރZ���z��ɂȂ�܂��B
%      'levels'      �e�v���̃��x�����̃x�N�g���B
%      'excludefun'  �]�܂����Ȃ����s�����O����֐��B
%      'categorical' �J�e�S���\���q�̃C���f�b�N�X�B
%
%   �Q�l CORDEXCH, X2FX, CANDEXCH.


%   Copyright 1993-2008 The MathWorks, Inc. 
