%MAINEFFECTSPLOT  �O���[�v�����ꂽ�f�[�^�̎���ʃv���b�g
%
%   MAINEFFECTSPLOT(Y,GROUP) �́A�Z���z�� GROUP ���̍��ڂŒ�`���ꂽ�O���[�v
%   �����s�� Y �̃O���[�v���ςɑ΂������ʃv���b�g��\�����܂��B
%   Y �͐��l�s��A�܂��̓x�N�g���ł��BY ���s��̏ꍇ�A�s�͈قȂ�ϑ���\���A
%   ��͊e�ϑ��̔�����\���܂��BGROUP �̊e�Z���́A�J�e�S���ϐ��A���l�x�N�g���A
%   �����s��A�܂��́A�P��̗�̕�����̃Z���z��̃O���[�v���ϐ����܂܂Ȃ����
%   �Ȃ�܂���BGROUP �́A�قȂ�O���[�v���ϐ���\���s��̗�ɂ��Ȃ�܂��B
%   ���ꂼ��̃O���[�v���ϐ��́AY �Ɠ����s���łȂ���΂Ȃ�܂���B
%   �O���[�v���ϐ��̐��́A1 ���傫���Ȃ���΂Ȃ�܂���B
%
%   �\���́A1 �̃O���[�v���ϐ��̊֐��Ƃ��� Y �̃O���[�v���ϐ���\��
%   �O���[�v���ϐ����� 1 �̃T�u�v���b�g�������܂��B
%
%   MAINEFFECTSPLOT(Y,GROUP,'PARAM1',val1,'PARAM2',val2,...) �́A�ȉ���
%   �p�����[�^�̖��O/�l�̑g�ݍ��킹�̂��������w�肵�܂��B
%
%       �p�����[�^  �l
%
%       'varnames'   1 �̃O���[�v���ϐ����̕����s��A�܂��͕������
%                    �Z���z����ɂ���O���[�v���ϐ����B
%                    �f�t�H���g���́A'X1', X2', ... �ł��B
%
%       'statistics' �v���b�g�ɕK�v�ȃO���[�v���ρA�܂��̓O���[�v�̕W���΍���
%                    �����ꂩ������������̒l�B'mean' �܂��� 'std' ���g�p���܂��B
%                    �f�t�H���g�� 'mean' �ł��B�l�� 'std' �̏ꍇ�AY �͕�����
%                    ������K�v������܂��B
%
%       'parent'     �v���b�g�ɑ΂��� Figure �E�B���h�E�̃n���h���B
%                    �f�t�H���g�́A���݂� Figure �E�B���h�E�ł��B
%
%   [FIGH, AXESH] = MAINEFFECTSPLOT(...) �́AFigure �E�B���h�E�̃n���h�� 
%   FIGH �ƁA�T�u�v���b�g�̍��W���̃n���h���̔z�� AXESH ��Ԃ��܂��B
%
%   ��:
%    2 �̃O���[�v���ϐ��A���f���N�ƃV�����_�����������Ԃ̏d�ʂɑ΂���
%    ����ʃv���b�g��\�����܂��B
%       load carsmall;
%       maineffectsplot(Weight,{Model_Year,Cylinders}, ...
%                  'varnames',{'Model Year', '# of Cylinders'})
%
%   �Q�l: INTERACTIONPLOT, MULTIVARICHART


% Copyright 2006-2008 The MathWorks, Inc.
