% GPLIKE ��ʉ��p���[�g���z�ɑ΂��镉�̑ΐ��ޓx
%
%   NLOGL = GPLIKE(PARAMS,DATA) �́A�^����ꂽ DATA �ɑ΂��āA�p�����[�^ 
%   PARAMS(1) = K �� PARAMS(2) = SIGMA �ŕ]�������A2 �̃p�����[�^��
%   ��ʉ��p���[�g (GP) ���z�ɑ΂���ΐ��ޓx�̕��̒l��Ԃ��܂��BGPLIKE �́A
%   臒l (�ʒu) �p�����[�^���󂯓���܂���BNLOGL �̓X�J���ł��B
%
%   [NLOGL, ACOV] = GPLIKE(PARAMS,DATA) �́A�t�B�b�V���[���s�� ACOV ��
%   �t�s���Ԃ��܂��BPARAMS �̓��̓p�����[�^�l���Ŗސ���̏ꍇ�AACOV ��
%   �Ίp�v�f�́A�����̑Q�ߕ��U�ɂȂ�܂��BACOV �́AACOV �́A�\�z���ꂽ
%   ���ł͂Ȃ��A�ϑ����ꂽ�t�B�b�V���[���ʂɊ�Â��܂��B
%
%   K = 0 �� THETA = 0 �̏ꍇ�AGP �͎w�����z�Ɠ����ɂȂ�܂��BK > 0 �� 
%   THETA = SIGMA �̏ꍇ�AGP �̓p���[�g���z�Ɠ����ɂȂ�܂��BK >= 1 ��
%   �ꍇ�AGP �̕��ς͗L���ł͂Ȃ��AK >= 1/2 �̏ꍇ�A���U�͗L���ł͂Ȃ�
%   �Ȃ�܂��BK >= 0 �̏ꍇ�AGP �� X>THETA �ɑ΂��Đ��̖��x�������A
%   K < 0 �̏ꍇ�A0 <= (X-THETA)/SIGMA <= -1/K �ɑ΂��Đ��̖��x�������܂��B
%
%   �Q�l GPCDF, GPFIT, GPINV, GPPDF, GPRND, GPSTAT.


%   Copyright 1993-2007 The MathWorks, Inc.
