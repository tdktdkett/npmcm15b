% GEVLIKE ��ʉ��ɒl�̕��z�ɑ΂��镉�̑ΐ��ޓx
%
%   NLOGL = GEVLIKE(PARAMS,DATA) �́A�^����ꂽ DATA �ɂ����ăp�����[�^ 
%   PARAMS(1) = K, PARAMS(2) = SIGMA, PARAMS(3) = MU �ŕ]�������A��ʉ�
%   �ɒl (GEV) �̕��z�ɑ΂���ΐ��ޓx�̕��̒l��Ԃ��܂��BNLOGL �̓X�J��
%   �ł��B
%
%   [NLOGL, ACOV] = GEVLIKE(PARAMS,DATA) �́A�t�B�b�V���[���s�� ACOV ��
%   �t�s���Ԃ��܂��BPARAMS �̓��̓p�����[�^�l���Ŗސ���̏ꍇ�AACOV ��
%   �Ίp�v�f�́A�����̑Q�ߕ��U�ɂȂ�܂��BACOV �́A�\�z���ꂽ���ł͂Ȃ��A
%   �ϑ����ꂽ�t�B�b�V���[���ʂɊ�Â��܂��B
%
%   K < 0 �̏ꍇ�AGEV �� 3 ��̋ɒl�̕��z�ł��BK > 0 �̏ꍇ�AGEV �̕��z��
%   2 ��A�܂��� Frechet �̋ɒl�̕��z�ł��BW �� WBLCDF �֐��Ōv�Z�����
%   �悤�ȃ��C�u�����z�̏ꍇ�A-W �� 3 ��̋ɒl�̕��z�ŁA1/W �� 2 ���
%   �ɒl�̕��z�ł��BK �� 0 �ɋ߂Â��悤�Ȍ��E�ł́AGEV �� EVLIKE �֐�
%   �Ōv�Z���ꂽ 1 ��̋ɒl�̕��z�̋����ł��B
%
%   K >= 1 �̏ꍇ�AGEV �̕��z�̕��ς͗L���ł͂Ȃ��AK >= 1/2 �̏ꍇ�A
%   ���U�͗L���ł͂���܂���BGEV �̕��z�́AK*(X-MU)/SIGMA > -1 �ƂȂ�
%   �悤�� X �̒l�ɑ΂��Ă̂ݐ��̖��x�������܂��B
%
%   �Q�l EVLIKE, GEVCDF, GEVFIT, GEVINV, GEVPDF, GEVRND, GEVSTAT.


%   Copyright 1993-2007 The MathWorks, Inc.
