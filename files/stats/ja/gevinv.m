% GEVINV ��ʉ��ɒl�̋t�ݐϕ��z�֐� (cdf)
%
%   X = GEVINV(P,K,SIGMA,MU) �́AP �̒l�ŕ]�������A�`��p�����[�^ K�A
%   �X�P�[���p�����[�^ SIGMA�A�ʒu�p�����[�^ MU ������ʉ��ɒl 
%   (GEV) ���z�ɑ΂���t cdf ��Ԃ��܂��BX �̃T�C�Y�́A���͈����̋��ʂ�
%   �T�C�Y�ł��B�X�J���̓��͂́A���̓��͂Ɠ����T�C�Y�̒萔�s��Ƃ��ċ@�\
%   ���܂��B
%   
%   K, SIGMA, MU �ɑ΂���f�t�H���g�l�́A���ꂼ�� 0, 1, 0 �ł��B
%
%   K < 0 �̏ꍇ�AGEV �� 3 ��̋ɒl�̕��z�ł��BK > 0 �̏ꍇ�AGEV �̕��z��
%   2 ��A�܂��� Frechet �̋ɒl�̕��z�ł��BW �� WBLCDF �֐��Ōv�Z�����
%   �悤�ȃ��C�u�����z�̏ꍇ�A-W �� 3 ��̋ɒl�̕��z�ŁA1/W �� 2 ���
%   �ɒl�̕��z�ł��BK �� 0 �ɋ߂Â��悤�Ȍ��E�ł́AGEV �� EVINV �֐�
%   �Ōv�Z���ꂽ 1 ��̋ɒl�̕��z�̋����ł��B
%
%   K >= 1 �̏ꍇ�AGEV �̕��z�̕��ς͗L���ł͂Ȃ��AK >= 1/2 �̏ꍇ�A
%   ���U�͗L���ł͂���܂���BGEV �̕��z�́AK*(X-MU)/SIGMA > -1 �ƂȂ�
%   �悤�� X �̒l�ɑ΂��Ă̂ݐ��̖��x�������܂��B
%
%   �Q�l EVINV, GEVCDF, GEVFIT, GEVLIKE, GEVPDF, GEVRND, GEVSTAT, ICDF.


%   Copyright 1993-2007 The MathWorks, Inc. 
