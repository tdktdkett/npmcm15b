% GPRND ��ʉ��p���[�g���z����̃����_���z��
%
%   R = GPRND(K,SIGMA,THETA) �́A�����̎w�� (�`��) �p�����[�^ K�A�X�P�[��
%   �p�����[�^ SIGMA�A臒l (�ʒu) �p�����[�^ THETA ������ʉ��p���[�g
%   (GP) ���z����I�����ꂽ�����̔z���Ԃ��܂��B���ׂĔz��̏ꍇ�AR ��
%   �T�C�Y�́AK, SIGMA, THETA �̋��ʂ̃T�C�Y�ł��B�C�ӂ̃p�����[�^���X�J��
%   �̏ꍇ�AR �̃T�C�Y�́A���̃p�����[�^�̃T�C�Y�ɂȂ�܂��B
%
%   R = GPRND(K,SIGMA,THETA,M,N,...) �܂��� R = GPRND(K,SIGMA,[M,N,...]) �́A
%   M�~N�~... �z���Ԃ��܂��B
%
%   K = 0 �� THETA = 0 �̏ꍇ�AGP �͎w�����z�Ɠ����ɂȂ�܂��BK > 0 �� 
%   THETA = SIGMA �̏ꍇ�AGP �̓p���[�g���z�Ɠ����ɂȂ�܂��BK >= 1 ��
%   �ꍇ�AGP �̕��ς͗L���ł͂Ȃ��AK >= 1/2 �̏ꍇ�A���U�͗L���ł͂Ȃ�
%   �Ȃ�܂��BK >= 0 �̏ꍇ�AGP �� X>THETA �ɑ΂��Đ��̖��x�������A
%   K < 0 �̏ꍇ�A0 <= (X-THETA)/SIGMA <= -1/K �ɑ΂��Đ��̖��x�������܂��B
%
%   �Q�l GPCDF, GPFIT, GPINV, GPLIKE, GPPDF, GPSTAT, RANDOM.


%   Copyright 1993-2007 The MathWorks, Inc. 
