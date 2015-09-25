% INVPRED �P���Ȑ��`��A�̋t�\��
%
%   X0 = INVPRED(X,Y,Y0) �́A���������̃x�N�g�� X �� Y ���󂯓���A�P����
%   ��A�Ƀt�B�b�e�B���O���AY0 �̃��C���̍����ɑ΂��Đ��肳�ꂽ�l X0 ��
%   �Ԃ��܂��BY0 �͔C�ӂ̃T�C�Y�̔z��ɂȂ�A�o�� X0 �� Y0 �Ɠ����T�C�Y��
%   �Ȃ�܂��B
%
%   [X0,DXLO,DXUP] = INVPRED(X,Y,Y0) �́A95% �̗\����Ԃ̋t���v�Z���܂��B
%   DXLO �� DXUP �́A���� X0-DXLO �Ə�� X0+DXUP ������Ԃ��`���܂��B
%   DXLO �� DXUP �͂ǂ���� Y0 �Ɠ����T�C�Y�ɂȂ�܂��B
%
%   ��Ԃ́A�����ł͂Ȃ��A�L���ł���K�v�͂���܂���B�������̋�Ԃ́A
%   �L���l���� -Inf �܂��� +Inf �Ɋg������A������S�̂Ɋg�������\����
%   ����܂��B
%
%   [X0,DXLO,DXUP] = INVPRED(X,Y,Y0,'NAME1',VALUE1,'NAME2',VALUE2,...)
%   �́A���̃��X�g����I�������I�v�V���������̖��O/�l�̑g�ݍ��킹��
%   �w�肵�܂��B�������́A�啶���������̋�ʂ��Ȃ��A������v�ō\���܂���B
%
%      ���O       �l
%     'alpha'     100*(1-alpha)% �̐M�����x�����w�肷�� 0 �� 1 �̊Ԃ̒l�B
%                 �f�t�H���g�́A95% �̐M���ɑ΂��� alpha=0.05 �ł��B
%     'predopt'   Y0 �Ɠ������V�K�ϑ��ł� X0 �l�ɑ΂����Ԃ��v�Z����ꍇ
%                 'observation' (�f�t�H���g)�A�܂��� Y0 �Ɠ������Ȑ��ł�
%                 X0 �l�ɑ΂����Ԃ��v�Z���� 'curve' �̂����ꂩ�B
%
%   INVPRED �́AX�A�܂��� Y ���� NaN �������l�Ƃ��Ĉ����A�������폜���܂��B
%
%    ��:
%        x = 4*rand(25,1);
%        y = 10 + 5*x + randn(size(x));
%        scatter(x,y)
%        x0 = invpred(x,y,20)
%
%   �Q�l POLYFIT, POLYTOOL, POLYCONF.


%   Copyright 2005-2007 The MathWorks, Inc.
