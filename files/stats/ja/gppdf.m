% GPPDF ��ʉ��p���[�g�m�����x�֐� (pdf)
%
%   Y = GPPDF(X,K,SIGMA,THETA) �́AX �̒l�ŕ]�������A�����̎w�� (�`��) 
%   �p�����[�^ K�A�X�P�[���p�����[�^ SIGMA�A臒l (�ʒu) �p�����[�^ THETA 
%   ������ʉ��p���[�g (GP) ���z�� pdf ��Ԃ��܂��BY �̃T�C�Y�́A����
%   �����̋��ʂ̃T�C�Y�ł��B�X�J���̓��͂́A���̓��͂Ɠ����T�C�Y�̒萔
%   �s��Ƃ��ċ@�\���܂��B
%
%   K, SIGMA, THETA �ɑ΂���f�t�H���g�l�́A���ꂼ�� 0, 1, 0 �ł��B
%
%   K = 0 �� THETA = 0 �̏ꍇ�AGP �͎w�����z�Ɠ����ɂȂ�܂��BK > 0 �� 
%   THETA = SIGMA �̏ꍇ�AGP �̓p���[�g���z�Ɠ����ɂȂ�܂��BK >= 1 ��
%   �ꍇ�AGP �̕��ς͗L���ł͂Ȃ��AK >= 1/2 �̏ꍇ�A���U�͗L���ł͂Ȃ�
%   �Ȃ�܂��BK >= 0 �̏ꍇ�AGP �� X>THETA �ɑ΂��Đ��̖��x�������A
%   K < 0 �̏ꍇ�A0 <= (X-THETA)/SIGMA <= -1/K �ɑ΂��Đ��̖��x�������܂��B
%
%   �Q�l GPCDF, GPFIT, GPINV, GPLIKE, GPRND, GPSTAT, PDF.


%   Copyright 1993-2007 The MathWorks, Inc. 
