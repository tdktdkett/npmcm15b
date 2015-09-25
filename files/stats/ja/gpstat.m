% GPSTAT ��ʉ��p���[�g���z�̕��ϒl�ƕ��U
%
%   [M,V] = GPSTAT(K,SIGMA,THETA) �́A�����̎w�� (�`��) �p�����[�^ K�A�X�P�[��
%   �p�����[�^ SIGMA�A臒l (�ʒu) �p�����[�^ THETA ������ʉ��p���[�g (GP)
%   ���z�̕��ςƕ��U��Ԃ��܂��B
%
%   THETA �̃f�t�H���g�l�� 0 �ł��B
%
%   K = 0 �� THETA = 0 �̏ꍇ�AGP �͎w�����z�Ɠ����ɂȂ�܂��BK > 0 �� 
%   THETA = SIGMA �̏ꍇ�AGP �̓p���[�g���z�Ɠ����ɂȂ�܂��BK >= 1 ��
%   �ꍇ�AGP �̕��ς͗L���ł͂Ȃ��AK >= 1/2 �̏ꍇ�A���U�͗L���ł͂Ȃ�
%   �Ȃ�܂��BK >= 0 �̏ꍇ�AGP �� X>THETA �ɑ΂��Đ��̖��x�������A
%   K < 0 �̏ꍇ�A0 <= (X-THETA)/SIGMA <= -1/K �ɑ΂��Đ��̖��x�������܂��B
%
%   �Q�l GPCDF, GPFIT, GPINV, GPLIKE, GPPDF, GPRND.


%   Copyright 1993-2007 The MathWorks, Inc. 
