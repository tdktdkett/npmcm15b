%COPULAFIT  �p�����g���b�N�ȃR�s�������f�[�^�ɋߎ�
%
%   RHOHAT = COPULAFIT('Gaussian', U) �́AU �ɗ^����ꂽ�f�[�^�����ɁA
%   �K�E�X�E�R�s�����ɑ΂�����`���փp�����[�^�̐���s�� RHOHAT ��Ԃ��܂��B
%   U �́AP �����̒P�ʒ������̓��� N �_��\�� (0,1) ���ɂ���l�� N�~P �s��ł��B
%
%   [RHOHAT, NUHAT] = COPULAFIT('t', U) �́AU �ɗ^����ꂽ�f�[�^�����ɁA
%   t �R�s�����ɑ΂�����`���փp�����[�^�̐���s�� RHOHAT �Ǝ��R�x�̐���l 
%   NUHAT ��Ԃ��܂��BU �́AP �����̒P�ʒ������̓��� N �_��\�� (0,1) ����
%   ����l�� N�~P �s��ł��B
%
%   [RHOHAT, NUHAT, NUCI] = COPULAFIT('t', U) �́AU �ɗ^����ꂽ�f�[�^�����ɁA
%   t �R�s�����ɑ΂��鎩�R�x�̐���l�ɑ΂��� 95% �̐M����Ԃ�Ԃ��܂��B
%
%   PARAMHAT = COPULAFIT(FAMILY, U) �́AU �ɗ^����ꂽ�f�[�^�����ɁAFAMILY ��
%   �w�肵���A���L���f�X�^�R�s�����ɑ΂���R�s�����p�����[�^�̐���l PARAMHAT 
%   ��Ԃ��܂��BU �́A�P�ʐ����`���� N �_��\�� (0,1) ���ɂ���l�� N�~P �s��ł��B
%   FAMILY �� 'Clayton', 'Frank', 'Gumbel' �̂����ꂩ�ł��B
%
%   [PARAMHAT, PARAMCI] = COPULAFIT(FAMILY, U) �́AU �ɗ^����ꂽ�f�[�^�����ɁA
%   FAMILY �Ŏw�肵���A���L���f�X�^�R�s��������R�s�����p�����[�^�ɑ΂��� 95% ��
%   �M����Ԃ�Ԃ��܂��B
%
%   [...] = COPULAFIT(..., 'Alpha', ALPHA) �́A�p�����[�^����ɑ΂��� 
%   100(1-ALPHA)% �̐M����Ԃ̋ߎ���Ԃ��܂��B
%
%   COPULAFIT �́A�R�s������ U �ɋߎ����邽�߂ɍŖސ�����g�p���܂��BU ��
%   �����̎��ӂ̗ݐϕ��z�֐��̃p�����g���b�N�Ȑ���ŒP�ʒ������̂ɕϊ����ꂽ
%   �f�[�^���܂ޏꍇ�A����́AInference Functions for Margins (IFM) ���\�b�h��
%   �Ă΂�Ă��܂��BU ���o���ݐϕ��z�֐��ŕϊ����ꂽ�f�[�^���܂ޏꍇ�A
%   ����́ACanonical Maximum Likelihood (CML) �ƌĂ΂�Ă��܂��B
%
%   [...] = COPULAFIT('t', U, ..., 'Method', 'ApproximateML') �́ABouye 
%   ����т��̑��ɂ���Ď�����Ă���悤�ɁA�傫���W�{�T�C�Y�ɑ΂��Ď��R�x 
%   nu �̑��ʂƂȂ铝�v�f�[�^�̑ΐ��ޓx���ߎ�����ړI�֐��̍ő剻�ɂ�� 
%   t �R�s�������ߎ����܂��B���̃��\�b�h�́A�Ŗސ�����g�p�����肫��߂�
%   �����ɂȂ�܂����A����ƐM�����E�����K�́A�܂��́A���K�͂̕W�{�T�C�Y��
%   �΂��Đ��m�ł͂Ȃ��\�������邽�߁A���Ӑ[���g�p����K�v������܂��B
%   COPULAFIT('t', U, ..., 'Method', 'ML') �́A�f�t�H���g�̍Ŗސ���ߎ��Ɠ����ł��B
%
%   [...] = COPULAFIT(..., 'Options', OPTIONS) �́A������v�Z���邽�߂�
%   �g���锽���A���S���Y���ɑ΂��鐧��p�����[�^���w�肵�܂��B���̈����́A
%   STATSET �̌Ăяo���ō쐬����܂��B�p�����[�^���ƃf�t�H���g�l�ɂ��ẮA
%   STATSET('copulafit') ���Q�Ƃ��Ă��������B
%   ���̈����́A'Gaussian' �t�@�~���ɂ͓K�p����܂���B
%
%   �Q�l ECDF, COPULACDF, COPULAPDF, COPULARND.


%   Copyright 2007-2008 The MathWorks, Inc. 
