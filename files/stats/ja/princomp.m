%PRINCOMP  �听������
%
%   COEFF = PRINCOMP(X) �́AN�~P �̃f�[�^�s�� X �Ŏ听�����͂����s���A
%   ���חʂƂ��Ēm����听���W����Ԃ��܂��BX �̍s�͊ϑ��ɑΉ����A
%   ��͕ϐ��ł��BCOEFF �́A�e�� 1 �̎听���ɑ΂���W�����܂� P�~P ��
%   �s��ł��B��́A�����̕��U�̍~�ׂ��̏��ɂȂ�܂��B
%
%   PRINCOMP �́A��̕��ς��������Ƃɂ���� X �𒆐S�ɂ��܂����AX �̗��
%   �ăX�P�[���͍s���܂���B�W�����ϐ������A���Ȃ킿���ւɊ�Â� PCA ��
%   �s�Ȃ��ɂ́APRINCOMP(ZSCORE(X)) ���g�p���Ă��������B�����U�A�܂��́A
%   ���֍s��Œ��� PCA ���s�Ȃ��ɂ́APCACOV ���g�p���Ă��������B
%
%   [COEFF, SCORE] = PRINCOMP(X) �́A�听���̃X�R�A�A���Ȃ킿�A�听��
%   ��ԓ��ł� X �̕\����Ԃ��܂��BSCORE �̍s�͊ϑ��ɁA��͐����ɑΉ����܂��B
%
%   [COEFF, SCORE, LATENT] = PRINCOMP(X) �́A�听�����U�A���Ȃ킿�ALATENT �� 
%   X �̋����U�s��̌ŗL�l��Ԃ��܂��B
%
%   [COEFF, SCORE, LATENT, TSQUARED] = PRINCOMP(X) �́AX �̊e�ϑ��ɑ΂���
%   �z�e�����O�� T2 �擝�v�ʂ�Ԃ��܂��B
%
%   N <= P �̏ꍇ�ASCORE(:,N:P) �� LATENT(N:P) �́A0 �ł���K�v������A
%   COEFF(:,N:P) �̗�́AX �ƒ�����������ɒ�`����܂��B
%
%   [...] = PRINCOMP(X,'econ') �́A�K������ 0 �łȂ��A���Ȃ킿�AN <= P ��
%   �ꍇ�� 1 �Ԗڂ� N-1 �݂̂ŁA���� COEFF �� SCORE �̑Ή������ł��� 
%   LATENT �̗v�f�݂̂�Ԃ��܂��B����́AP >> N �̏ꍇ�ɂ���߂đ����Ȃ�܂��B
%
%   �Q�l BARTTEST, BIPLOT, CANONCORR, FACTORAN, PCACOV, PCARES, ROTATEFACTORS.


%   Copyright 1993-2008 The MathWorks, Inc.
