% BETAFIT   �x�[�^���z���Ă���f�[�^�ɑ΂���p�����[�^����ƐM����Ԃ��Z�o
%
%   BETAFIT(X) �́A�x�N�g�� X �Őݒ肳�ꂽ�f�[�^��^���A�x�[�^���z�̃p�����[�^
%   �̍Ŗސ�����o�͂��܂��B
% 
%   [PHAT, PCI] = BETAFIT(X,ALPHA) �́A�f�[�^��^���āAMLE �� 100(1-ALPHA)%
%   �̐M����Ԃ��o�͂��܂��B�f�t�H���g�ł́A�I�v�V�����̃p�����[�^ 
%   ALPHA = 0.05 �ŁA95% �̐M����ԂɑΉ����܂��B
% 
%   ���̊֐��́A���ׂĂ� X �� 0 ���傫���A1 ��菬�����K�v������܂��B
%   ���̂悤�Ȑ����𖞂����f�[�^�ł̋ߎ��́A���̃X�e�[�g�����g�ŁA
%   ���s�ł��܂��B
% 
%         BETAFIT(X(X>0 & X<1))
% 
%   �f�[�^�l���A���x 1e-6 �͈̔͂ŁA0 �܂��� 1 �ɓ������ꍇ�A����
%   �X�e�[�g�����g�ŁA�ۂ߂�K�p�����f�[�^�ŋߎ����܂��B
% 
% �@      BETAFIT(MAX(1e-6, MIN(1-1e-6,X)))
% 
%   �Q�l BETACDF, BETAINV, BETALIKE, BETAPDF, BETARND, BETASTAT, MLE. 


%   Copyright 1993-2007 The MathWorks, Inc. 
