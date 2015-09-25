% POLYCONF �������̌v�Z�ƐM����Ԃ𐄒�
%
%   Y = POLYCONF(P,X) �́AX �ŕ]�������A������ P �̒l��Ԃ��܂��BP �́A
%   ���̗v�f���~�ׂ��ȑ������̌W���ƂȂ钷�� N+1 �̃x�N�g���ł��B
%
%       Y = P(1)*X^N + P(2)*X^(N-1) + ... + P(N)*X + P(N+1)
%
%   X ���s��A�܂��̓x�N�g���̏ꍇ�A�������́AX �̂��ׂĂ̓_�ŕ]������܂��B
%   �s��̕]���̈Ӗ��ɂ��ẮAPOLYVALM ���Q�Ƃ��Ă��������B
%
%   [Y,DELTA] = POLYCONF(P,X,S) �́A95% �̗\����Ԃ𐶐����邽�߂� POLYFIT 
%   �ō쐬���ꂽ�I�v�V�����̏o�� S ���g�p���܂��BP �̌W���� POLYFIT ��
%   �v�Z���ꂽ�ŏ����̐���ʂł���APOLYFIT �ւ̃f�[�^���͂̌덷���萔��
%   ���U�����Ɨ��Ő��K���z�������ꍇ�AY +/- DELTA �� X �ŏ����̊ϑ���
%   �܂ނƂ��� 95% �̊m��������܂��B
%
%   [Y,DELTA] = POLYCONF(P,X,S,'NAME1',VALUE1,'NAME2',VALUE2,...) �́A
%   ���̃��X�g����I�������I�v�V���������̖��O/�l�̑g�ݍ��킹��
%   �w�肵�܂��B�������́A�啶���������̋�ʂ͂Ȃ��A������v���\�ł��B
%
%      ���O       �l
%     'alpha'     100*(1-alpha)% �̐M�����x�����w�肷�� 0 �� 1 �̊Ԃ̒l�B
%                 �f�t�H���g�́A95% �̐M���ɑ΂��� alpha=0.05 �ł��B
%     'mu'        polyfit �Ōv�Z�����悤�ȃp�����[�^�̒��S���ƃX�P�[�����O
%                 ���܂� 2 �v�f�x�N�g���B���̃I�v�V�����Ƌ��ɁApolyconf �́A
%                 x �̑���� (X-MU(1))/MU(2) ���g�p���܂��B
%     'predopt'   X �ŐV�K�̊ϑ���\�����邽�߂̋�Ԃ��v�Z����ɂ� 'observation' 
%                 (�f�t�H���g)�AX �ŕ]������鑽�����̐M����Ԃ��v�Z����ɂ�
%                 'curve' �̂����ꂩ�ł��B
%     'simopt'    �񓯎����E�ɑ΂��� 'off' (�f�t�H���g)�A�������E�ɑ΂���
%                 'on' �̂����ꂩ�ł��B
%
%   �Q�l POLYFIT, POLYTOOL, POLYVAL, INVPRED, POLYVALM.


%   Copyright 1993-2007 The MathWorks, Inc.
