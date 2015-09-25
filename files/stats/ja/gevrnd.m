% GEVRND ��ʉ��ɒl����̃����_���z��
%
%   R = GEVRND(K,SIGMA,MU) �́A�`��p�����[�^ K�A�X�P�[���p�����[�^ SIGMA�A
%   �ʒu�p�����[�^ MU ������ʉ��ɒl (GEV) �̕��z����I�����ꂽ������
%   �z���Ԃ��܂��B���ׂĔz��̏ꍇ�AR �̃T�C�Y�́AK, SIGMA, MU �Ƌ��ʂ�
%   �T�C�Y�ɂȂ�܂��B�C�ӂ̃p�����[�^���X�J���̏ꍇ�AR �̃T�C�Y�͑���
%   �p�����[�^�̃T�C�Y�ɂȂ�܂��B
%
%   R = GEVRND(K,SIGMA,MU,M,N,...) �܂��� R = GEVRND(K,SIGMA,MU,[M,N,...]) �́A
%   M�~N�~ ... �z���Ԃ��܂��B
%
%   K < 0 �̏ꍇ�AGEV �� 3 ��̋ɒl�̕��z�ł��BK > 0 �̏ꍇ�AGEV �̕��z��
%   2 ��A�܂��� Frechet �̋ɒl�̕��z�ł��BW �� WBLCDF �֐��Ōv�Z�����
%   �悤�ȃ��C�u�����z�̏ꍇ�A-W �� 3 ��̋ɒl�̕��z�ŁA1/W �� 2 ���
%   �ɒl�̕��z�ł��BK �� 0 �ɋ߂Â��悤�Ȍ��E�ł́AGEV �� EVRND �֐�
%   �Ōv�Z���ꂽ 1 ��̋ɒl�̕��z�̋����ł��B
%
%   K >= 1 �̏ꍇ�AGEV �̕��z�̕��ς͗L���ł͂Ȃ��AK >= 1/2 �̏ꍇ�A
%   ���U�͗L���ł͂���܂���BGEV �̕��z�́AK*(X-MU)/SIGMA > -1 �ƂȂ�
%   �悤�� X �̒l�ɑ΂��Ă̂ݐ��̖��x�������܂��B
%
%   �Q�l EVRND, GEVCDF, GEVFIT, GEVINV, GEVLIKE, GEVPDF, GEVSTAT, RANDOM.


%   Copyright 1993-2007 The MathWorks, Inc. 
