%CANDEXCH  �s�������g�p�������W������� D-�œK���v��
%
%   RLIST = CANDEXCH(C,NROWS) �́A�s�����A���S���Y�����g�p���āA���W�� 
%   C ���� D-�œK���v���݌v���܂��BC �́A�eN �_�ŁAP ���f�����ڂ̒l��
%   �܂� N�~P �s��ł��BNROWS �́A�v��ŕK�v�ȍs���ł��BRLIST �́A�I���s��
%   �\�����钷�� NROWS �̃x�N�g���ł��B
%
%   �֐� CANDEXCH �́A�o���_�ƂȂ�v�� X �������_���ɑI�����A�s�����A���S���Y��
%   ���g�p���āAX �̍s�� C �̍s�ƌJ��Ԃ��u�������āAX'* X �̍s�񎮂����ǂ��܂��B
%
%   RLIST = CANDEXCH(C,NROWS,'PARAM1',VALUE1,'PARAM2',VALUE2,...) �́A
%   �p�����[�^/�l�̑g��ݒ肵�āA�v��̍쐬���X�ɐ��䂵�܂��B���p�\��
%   �p�����[�^�́A�ȉ��̂Ƃ���ł��B
%
%      �p�����[�^  �l
%      'display'    �J��Ԃ��� (�f�t�H���g = 'on') �̕\���𐧌䂷�邽��
%                   �ɁA'on' ���邢�� 'off' �̂����ꂩ�ƂȂ�܂��B
%      'init'       NROWS�~P �s��Ƃ��Ă̏����݌v (�f�t�H���g�́AC �̍s��
%                   �����_���ȃf�[�^�ł�)�B
%      'maxiter'    �ő�J��Ԃ��� (�f�t�H���g = 10)�B
%      'start'      �v��Ɋ܂߂邽�߂ɏC�������v��|�C���g NOBS �̏W����
%                   �w�肷�� NOBS�~P �s�� (�f�t�H���g�͋�) �̈��q�̐ݒ�s��B
%                   CANDEXCH �֐��́A'start' �̐݌v�ɒǉ����� NROWS-NOBS ��
%                   �s�����o���܂��B
%      'tries'      �����炭�ŏ��������e���s�ɑ΂��ă����_���|�C���g��
%                   �g�p���A�V�K�J�n�_����݌v�̐��������s����� (�f�t�H���g 1)�B
%
%   �֐� ROWEXCH �́A�܂��A�s�����A���S���Y�����g�p���� D-�œK�v��𐶐����܂����A
%   �w�肵�����f���ɓK�؂Ȍ��W�����������܂��BDAUGMENT �֐��́A���W����
%   �A���S���Y�����g�p���āA�C�������v��|�C���g�̏W�����g�債�܂��B����A
%   'start' �p�����[�^�́A�s�����A���S���Y�����g�p���āA�����@�\��񋟂��܂��B
%
%   ��: ���W���ɐ���������ꍇ�AD-�œK�v����쐬���܂��B
%       ���̂��߁A�֐� ROWEXCH �͓K�؂ł͂���܂���B
%      F = (fullfact([5 5 5])-1)/4;   % �P�ʗ����̂ł̗v���̐ݒ�
%      T = sum(F,2)<=1.51;            % �����ɓK������s�̌��o
%      F = F(T,:);                    % �����̍s�̂ݏ���
%      C = [ones(size(F,1),1) F F.^2];% �萔�Ƃ��ׂĂ� 2 ��̍����܂�
%                                     % ���f�����̌v�Z
%      R = candexch(C,12);            % D-�œK 12 �_�f�[�^�̌��o
%      X = F(R,:);                    % �v���̐ݒ�̎擾
%
%   �Q�l CANDGEN, ROWEXCH, CORDEXCH, DAUGMENT, X2FX.


%   Copyright 1993-2008 The MathWorks, Inc. 
