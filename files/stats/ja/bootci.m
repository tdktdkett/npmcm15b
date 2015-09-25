%BOOTCI  �u�[�g�X�g���b�v�M�����
%
%   CI = BOOTCI(NBOOT,BOOTFUN,...) �́A�֐� BOOTFUN �Œ�`����铝�v�ʂ� 
%   95% �� BCa �u�[�g�X�g���b�v�M����Ԃ��v�Z���܂��BNBOOT �́A�v�Z�Ŏg����
%   �u�[�g�X�g���b�v�f�[�^�̕W�{�����������̐����ł��BBOOTFUN �́A@ �t����
%   �w�肳���֐��n���h���̂��߁A�X�J����Ԃ��Ȃ���΂Ȃ�܂���BBOOTCI �� 
%   3 �Ԗڈȍ~�̓��͈����́ABOOTFUN �ւ̓��͈������쐬����̂Ɏg����f�[�^ 
%   (�X�J���A��x�N�g���A�܂��͍s��) �ł��BBOOTCI �́A��X�J���f�[�^�̈��� 
%   (�����͓����s���łȂ���΂Ȃ�܂���) �̍s����Ĕz�u���ăT���v�����O
%   ���邱�ƂŁA�u�[�g�X�g���b�v�̊e�W�{���쐬���܂��BBOOTFUN �ɓn�����
%   �X�J���f�[�^�͕ύX����܂���BCI �́A�M����Ԃ̉����Ə�����܂ރx�N�g���ł��B
%
%   CI = BOOTCI(NBOOT,{BOOTFUN,...},'alpha',ALPHA) �́A�֐� BOOTFUN �Œ�`
%   ����铝�v�ʂ� 100*(1-ALPHA)% �� BCa �u�[�g�X�g���b�v�M����Ԃ��v�Z���܂��B
%   ALPHA �́A0 �� 1 �̊Ԃ̃X�J���ł��BALPHA �̃f�t�H���g�l�� 0.05 �ł��B
%   �Z���z��� BOOTFUN ���O���[�v�����邽�߁A���̈����͓��͂��쐬���邽�߂�
%   �g���܂��BALPHA �� BOOTCI �̑��̈����́A�Z���z��̊O���Ɏw�肵�܂��B
%
%   CI = BOOTCI(NBOOT,{BOOTFUN,...},...,'type',TYPE) �́A�֐� BOOTFUN ��
%   ��`����铝�v�ʂ̃u�[�g�X�g���b�v�M����Ԃ��v�Z���܂��B
%   TYPE �́A�M����Ԃ��v�Z����قȂ���@���w�肷��M����Ԃ̃^�C�v�ł��B
%   TYPE �́A�ȉ��̂����ꂩ����I�����镶����ł��B
%       'norm' or 'normal':               �u�[�g�X�g���b�v���ꂽ�o�C�A�X��
%                                         �W���덷�������K�̋ߎ����ꂽ���
%       'per' �܂��� 'percentile':        ��{�̓��S���ʖ@
%       'cper' �܂��� 'corrected percentile': �o�C�A�X���C�����ꂽ���S���ʖ@
%       'bca' :                           �o�C�A�X���C�����ꍂ�������ꂽ
%                                         ���S���ʖ@
%       'stud' �܂��� 'student':          �X�`���[�f���g�����ꂽ�M�����
%   TYPE �̃f�t�H���g�l�� 'bca' �ł��B
%
%   CI = BOOTCI(NBOOT,{BOOTFUN,...},...,'type','stud','nbootstd',NBOOTSTD) 
%   �́A�֐� BOOTFUN �Œ�`����铝�v�ʂ̃X�`���[�f���g�����ꂽ�u�[�g�X�g���b�v
%   �M����Ԃ��v�Z���܂��B�u�[�g�X�g���b�v���v�ʂ̕W���덷�́ANBOOTSTD �̃u�[�g
%   �X�g���b�v�f�[�^�W�{�����u�[�g�X�g���b�v���g���Đ��肳��܂��B
%   NBOOTSTD �͐��̐����l�ł��BNBOOTSTD �̃f�t�H���g�l�� 100 �ł��B
%
%   CI = BOOTCI(NBOOT,{BOOTFUN,...},...,'type','stud','stderr',STDERR) �́A
%   �֐� BOOTFUN �Œ�`����铝�v�ʂ̃X�`���[�f���g�����ꂽ�u�[�g�X�g���b�v
%   �M����Ԃ��v�Z���܂��B�u�[�g�X�g���b�v���v�ʂ̕W���덷�́A�֐� STDERR ��
%   �]������܂��BSTDERR �́A@ ���g���č쐬�����֐��n���h���ł��BSTDERR �́A
%   BOOTFUN �Ɠ���������^���邽�߁ABOOTFUN �Ōv�Z���ꂽ���v�ʂ̕W���덷��
%   �Ԃ���܂��B
%
%   ��:
%     ���v�I�H���Ǘ��̔\�͎w���ɑ΂���M����Ԃ��v�Z���܂��B
%          y = normrnd(1,1,30,1);                  % �V�~�����[�V���������H���f�[�^
%          LSL = -3;  USL = 3;                     % �H���̎d�l
%          capable = @(x) (USL-LSL)./(6* std(x));  % �H���\��
%          bootci(2000,capable, y)                 % Bca �M�����
%          bootci(2000,{capable, y},'type','stud') % �X�`���[�f���g�����ꂽ�M�����
%
%   �Q�l: BOOTSTRP, JACKKNIFE.


% Copyright 2005-2009 The MathWorks, Inc. 
