% NBINFIT ���̓񍀕��z�f�[�^�̃p�����[�^����
%
%   NBINFIT(X) �́A�x�N�g�� X �ŗ^����ꂽ�f�[�^�̕��̓񍀕��z�̃p�����[�^
%   �̍Ŗސ���l���o�͂��܂��B
%
%   [PARMHAT, PARMCI] = NBINFIT(X,ALPHA) �́A�^����ꂽ�f�[�^�̍Ŗސ���l��
%   100(1-ALPHA)% �̐M����Ԃ��o�͂��܂��B�f�t�H���g�ł́AALPHA = 0.05 �ŁA
%   95% �̐M����ԂɑΉ����܂��B
%
%   [ ... ] = NBINFIT( ..., OPTIONS) �́A�Ŗސ�����v�Z���邽�߂Ɏg�p�����
%   ���l�I�ȍœK���ɑ΂��鐧��p�����[�^���w�肵�܂��B ���̈��� �́ASTATSET 
%   �̌Ăяo���ɂ��쐬����܂��B�p�����[�^���ƃf�t�H���g�l�ɂ��ẮA
%   STATSET('nbinfit') ���Q�Ƃ��Ă��������B
%
%   �Q�l NBINCDF, NBININV, NBINLIKE, NBINPDF, NBINRND, NBINSTAT, MLE,
%        STATSET.


%   Copyright 1993-2007 The MathWorks, Inc.
