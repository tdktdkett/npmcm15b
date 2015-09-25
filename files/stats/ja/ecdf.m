%ECDF  �o���ݐϕ��z�֐� (�J�v����-�}�C���[)
%
%   [F,X] = ECDF(Y) �́A�o���I�� cdf �Ƃ��Ă��m����ݐϕ��z�֐� (cdf) ��
%   �J�v����-�}�C���[����l���v�Z���܂��BY �́A�f�[�^�l�̃x�N�g���ł��B
%   F �́AX �ɂ����ċ��߂��o���I�� cdf �l�̃x�N�g���ł��B
%
%   [F,X,FLO,FUP] = ECDF(Y) �́Acdf �ɑ΂���M����������я�����Ԃ��܂��B
%   �����͈̔͂́A�O���[���E�b�h�̌������g���Čv�Z����A�����̐M����Ԃł�
%   ����܂���B
%
%   �o�͈����������Ȃ� ECDF(...) �́A�o���I�� cdf �̃v���b�g�𐶐����܂��B
%   �v���b�g���琳�m�Ȓl���m�F����ɂ́A�f�[�^�J�[�\�����g�p���Ă��������B
%
%   ECDF(AX,...) �́AGCA �̑���ɍ��W�� AX �Ƀv���b�g���܂��B
%
%   [...] = ECDF(Y,'PARAM1',VALUE1,'PARAM2',VALUE2,...) �́A�ȉ�����I��
%   ���ꂽ���O�ƒl�̑g�ݍ��킹�Œǉ��p�����[�^���w�肵�܂��B
%
%      ���O          �l
%      'censoring'   ���m�Ɋϑ����ꂽ�ϑ��l�ɑ΂��� 0 ���A�E���ł��؂��
%                    �ϑ��l�ɑ΂��� 1 �ƂȂ�AY �Ɠ����T�C�Y�̘_���x�N�g���ł��B
%                    �f�t�H���g�́A���ׂĐ������ϑ����ꂽ�ϑ��l�ł��B
%      'frequency'   �񕉂̐����J�E���g���܂܂�� Y �Ɠ����T�C�Y�̃x�N�g���ł��B
%                    ���̃x�N�g���� j �Ԗڂ̗v�f�́AY �� j �Ԗڂ̗v�f���ϑ�
%                    ���ꂽ�񐔂������܂��B�f�t�H���g�� Y �̗v�f���̊ϑ��l��
%                    �΂��� 1 �ł��B
%      'alpha'       100*(1-alpha)% �̐M���x�ɑ΂��� 0 ���� 1 �̊Ԃ̒l�ł��B
%                    �f�t�H���g�́A95% �̐M����Ԃɑ΂��� alpha=0.05 �ł��B
%      'function'    'cdf' (�f�t�H���g)�A'survivor'�A�܂��� 'cumulative hazard' 
%                    ����I�����ꂽ�A�o�͈��� F �Ƃ��ĕԂ����֐��̃^�C�v�ł��B
%      'bounds'      �͈͂��܂ޏꍇ 'on'�A�܂��͂������ȗ�����ꍇ 'off' 
%                    (�f�t�H���g) �̂����ꂩ�ł��B�v���b�g�ł̂ݎg���܂��B
%
%
%   ��:  �����_���Ȍ̏�񐔂ƁA�����_���ȑł��؂�񐔂𐶐����A���m�ł���
%        �^�� cdf ��p���āA�o���I�� cdf �Ɣ�r���܂��B
%
%       y = exprnd(10,50,1);     % �����_���Ȍ̏�� exponential(10)
%       d = exprnd(20,50,1);     % �h���b�v�A�E�g������ exponential(20)
%       t = min(y,d);            % �����̉񐔂̍ŏ��l���ϑ�
%       censored = (y>d);        % �Ώۂ����s�������ǂ������ϑ�
%
%       % �o���I�� cdf �ƐM����Ԃ��v�Z���\�����܂��B
%       [f,x,flo,fup] = ecdf(t,'censoring',censored);
%       stairs(x,f);
%       hold on;
%       stairs(x,flo,'r:'); stairs(x,fup,'r:');
%
%       % ���m�ł���^�� cdf �̃v���b�g���d�˕`�����܂��B
%       xx = 0:.1:max(t); yy = 1-exp(-xx/10); plot(xx,yy,'g-')
%       hold off;
%
%   �Q�l CDFPLOT, ECDFHIST.


% Copyright 1993-2009 The MathWorks, Inc.
