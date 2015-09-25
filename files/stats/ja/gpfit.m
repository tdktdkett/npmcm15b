% GPFIT ��ʉ��p���[�g�f�[�^�ɑ΂���p�����[�^����ƐM�����
%
%   PARMHAT = GPFIT(X) �́AX �ŗ^����ꂽ�f�[�^�� 2 �̃p�����[�^��
%   ��ʉ��p���[�g (GP) ���z�̃p�����[�^�̍Ŗސ����Ԃ��܂��BPARMHAT(1) �́A
%   �����̎w�� (�`��) �p�����[�^�AK �� PARMHAT(2) �̓X�P�[���p�����[�^ SIGMA 
%   �ł��BGPFIT �́A臒l (�ʒu) �p�����[�^���t�B�b�e�B���O���܂���B
%
%   [PARMHAT,PARMCI] = GPFIT(X) �́A�p�����[�^����ɑ΂��� 95% �̐M����Ԃ�
%   �Ԃ��܂��B
%
%   [PARMHAT,PARMCI] = GPFIT(X,ALPHA) �́A�p�����[�^����ɑ΂��� 100(1-ALPHA)% 
%   �̐M����Ԃ�Ԃ��܂��B
%
%   [...] = GPFIT(X,ALPHA,OPTIONS) �́AML ������v�Z���邽�߂Ɏg����
%   �����A���S���Y���ɑ΂��鐧��p�����[�^���w�肵�܂��B���̈����́ASTATSET 
%   �ւ̌Ăяo���ō쐬����܂��B�p�����[�^���ƃf�t�H���g�l�ɂ��ẮA
%   STATSET('gpfit') ���Q�Ƃ��Ă��������B
%
%   �f�t�H���g�l���g�p����ɂ́AALPHA �� [] ��n���Ă��������B
%
%   GPCDF �̂悤�Ȉ�ʉ��p���[�g�ɑ΂��鑼�̊֐��́A臒l�p�����[�^ THETA
%   ���󂯓���܂��B�������AGPFIT �́ATHETA �𐄒肹���A����͊��m�ł���
%   ���̂Ɖ��肵�AGPFIT ���Ăяo���O�� X �����菜���Ȃ���΂Ȃ�܂���B
%
%   K = 0 �� THETA = 0 �̏ꍇ�AGP �͎w�����z�Ɠ����ɂȂ�܂��BK > 0 �� 
%   THETA = SIGMA �̏ꍇ�AGP �̓p���[�g���z�Ɠ����ɂȂ�܂��BK >= 1 ��
%   �ꍇ�AGP �̕��ς͗L���ł͂Ȃ��AK >= 1/2 �̏ꍇ�A���U�͗L���ł͂Ȃ�
%   �Ȃ�܂��BK >= 0 �̏ꍇ�AGP �� X>THETA �ɑ΂��Đ��̖��x�������A
%   K < 0 �̏ꍇ�A0 <= (X-THETA)/SIGMA <= -1/K �ɑ΂��Đ��̖��x�������܂��B
%
%   �Q�l GPCDF, GPINV, GPLIKE, GPPDF, GPRND, GPSTAT, MLE, STATSET.


%   Copyright 1993-2007 The MathWorks, Inc.
