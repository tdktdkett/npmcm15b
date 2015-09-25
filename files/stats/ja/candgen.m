% CANDGEN   D-�œK���v��̂��߂̌��W���̍쐬
%
%   XCAND = CANDGEN(NFACTORS,MODEL) �́A�v�� NFACTORS �� ���f�� MODEL ��
%   �p���āAD-�œK�v��ɓK�؂Ȍ��W���𐶐����܂��B�o�͍s�� XCAND �́A
%   �e�s�� N �̌��_�� 1 �̍��W��\���AN�~NFACTORS �̍s��ł��B
%   MODEL �́A���̕�����̂����ꂩ�ƂȂ�܂��B
%
%     'linear'          �萔�Ɛ��`�� (�f�t�H���g)
%     'interaction'     �萔�A���`�A�N���X�ς̍�
%     'quadratic'       ���ݍ�p���� 2 �捀�̘a
%     'purequadratic'   �萔�A���`�A����сA2 ��̍�
%
%   ���邢�́AMODEL �́A�֐� X2FX �Ŏg�p���邽�߂̍��̒�`�̍s��ɂȂ�܂��B
%
%   [XCAND,FXCAND] = CANDGEN(NFACTORS,MODEL) �́A�v���̒l XCAND �̍s���
%   ���̒l FXCAND �̍s��̗������o�͂��܂��B��҂́AD-�œK���v��𐶐�
%   ���邽�߂� CANDEXCH �ւ̓��͂ƂȂ邱�Ƃ��ł��܂��B
%
%   [...] = CANDGEN(NFACTORS,MODEL,'PARAM1',VALUE1,'PARAM2',VALUE2,...)
%   �́A�p�����[�^/�l�̑g�ݍ��킹�ݒ��ʂ��A���̐ݒ�̐����Ɋւ���
%   ����ɐ��䂷�邱�Ƃ��ł��܂��B�L���ȃp�����[�^�́A���̒ʂ�ł��B
%
%      �p�����[�^    �l
%      'bounds'      2�~NFACTORS �̍s��Ƃ��Ďw�肳���e�v���̉����Ə���B
%                    ���邢�́A���̒l�́A�Ή�����v���̎w��\�Ȓl��
%                    �x�N�g�����w�肷��e�v�f�ƂȂ� NFACTORS �v�f���܂�
%                    �Z���z��ɂȂ�܂��B
%      'levels'      �e�v���̃��x�����̃x�N�g��
%      'categorical' �J�e�S���\���q�̃C���f�b�N�X
%
%   ROWEXCH �́A�֐� CANDGEN ���g�p���āA���W���������I�ɐ������A�֐�
%   CANDEXCH ���g�p���āAD-�œK���v����쐬���܂��B�f�t�H���g�̌��W����
%   �C���������ꍇ�A�����̊֐���ʁX�ɌĂяo�����Ƃ��]�܂��ꍇ��
%   ����܂��B
%
%   �Q�l ROWEXCH, CANDEXCH, X2FX.


%   Copyright 1993-2007 The MathWorks, Inc. 
