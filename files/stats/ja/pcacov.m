% PCACOV  �����U�s����g�����听������
%
%   COEFF = PCACOV(V) �́AP x P �̋����U�s�� V �Ŏ听�����͂����s���A
%   �ʖ����חʂƂ��Ă΂��听���W����Ԃ��܂��BCOEFF �́A�e��� 1 ��
%   �听���ɑ΂���W�����܂� P x P �̍s��ł��B��́A�����̕��U�̍~�ׂ���
%   ���ɂȂ�܂��B
%
%   PCACOV �́A1 �̕��U�������߂� V ��W�������܂���B�W�������ꂽ�ϐ��� 
%   PCA �����s����ɂ́AV �̑���ɑ��֍s�� R = V./(SD*SD') ���g�p���Ă��������B
%   �����ŁASD = sqrt(diag(V)) �ł��B
%
%   [COEFF, LATENT] = PCACOV(V) �́A�听���̕��U�A���Ȃ킿 V �̌ŗL�l��Ԃ��܂��B
%
%   [COEFF, LATENT, EXPLAINED] = PCACOV(V) �́A�e�听���Ő��������S���U��
%   �p�[�Z���e�[�W��Ԃ��܂��B
%
%   �Q�l BARTTEST, BIPLOT, FACTORAN, PCARES, PRINCOMP, ROTATEFACTORS.


%   Copyright 1993-2009 The MathWorks, Inc.
