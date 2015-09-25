% GEVFIT ��ʉ��ɒl�f�[�^�̃p�����[�^����ƐM�����
%
%   PARMHAT = GEVFIT(X) �́AX �̗^����ꂽ�f�[�^�̈�ʉ��ɒl (GEV) ���z
%   �̃p�����[�^�̍Ŗސ����Ԃ��܂��BPARMHAT(1) �͌`��p�����[�^�ŁA
%   K, PARMHAT(2) �̓X�P�[���p�����[�^�ŁASIGMA �� PARMHAT(3) �͈ʒu�p�����[�^
%   MU �ł��B
%
%   [PARMHAT,PARMCI] = GEVFIT(X) �́A�p�����[�^����ɑ΂��� 95% �̐M��
%   ��Ԃ�Ԃ��܂��B
%
%   [PARMHAT,PARMCI] = GEVFIT(X,ALPHA) �́A�p�����[�^����ɑ΂���M��
%   ��� 100(1-ALPHA)% ��Ԃ��܂��B
%
%   [...] = GEVFIT(X,ALPHA,OPTIONS) �́AML ������v�Z���邽�߂Ɏg����
%   �����A���S���Y���ɑ΂��鐧��p�����[�^���w�肵�܂��B���̈����́A
%   STATSET �ւ̌Ăяo���ō쐬���邱�Ƃ��\�ł��B�p�����[�^���ƃf�t�H���g�l
%   �ɂ��ẮASTATSET('gevfit') ���Q�Ƃ��Ă��������B
%
%   �f�t�H���g�l���g�p����ɂ́AALPHA �� [] ��n���Ă��������B
%
%   K < 0 �̏ꍇ�AGEV �� 3 ��̋ɒl�̕��z�ł��BK > 0 �̏ꍇ�AGEV �̕��z��
%   2 ��A�܂��� Frechet �̋ɒl�̕��z�ł��BW �� WBLCDF �֐��Ōv�Z�����
%   �悤�ȃ��C�u�����z�̏ꍇ�A-W �� 3 ��̋ɒl�̕��z�ŁA1/W �� 2 ���
%   �ɒl�̕��z�ł��BK �� 0 �ɋ߂Â��悤�Ȍ��E�ł́AGEV �� EVFIT �֐�
%   �Ōv�Z���ꂽ 1 ��̋ɒl�̕��z�̋����ł��B
%
%   K >= 1 �̏ꍇ�AGEV �̕��z�̕��ς͗L���ł͂Ȃ��AK >= 1/2 �̏ꍇ�A
%   ���U�͗L���ł͂���܂���BGEV �̕��z�́AK*(X-MU)/SIGMA > -1 �ƂȂ�
%   �悤�� X �̒l�ɑ΂��Ă̂ݐ��̖��x�������܂��B
%
%   �Q�l EVFIT, GEVCDF, GEVINV, GEVLIKE, GEVPDF, GEVRND, GEVSTAT, MLE,
%        STATSET.


%   Copyright 1993-2007 The MathWorks, Inc.
