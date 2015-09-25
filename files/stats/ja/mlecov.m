% MLECOV   �ő�ޓx����q�̑Q�ߋ����U�s��
%
%   ACOV = MLECOV(PARAMS, DATA, ...) �́A�w�肵�����z�ɑ΂���p�����[�^��
%   �Q�ߋ����U�s��̋ߎ����o�͂��܂��BMLECOV �́A�ϑ��f�[�^DATA����ő�ޓx
%   ����qPARAMS�ł̑ΐ��ޓx�̂փV�A���̗L�������ߎ����v�Z���A���̂փV�A����
%   ���̋t�����o�͂��܂��BACOV�́AP�sP��s��ŁAP ��PARAMS�̗v�f���ł��B
%
%   ���z�́A3��ނ̕��@�̂����ꂩ�Ŏw�肷�邱�Ƃ��ł��܂��B
%
%   ACOV = MLECOV(PARAMS, DATA, 'pdf',PDF, 'cdf',CDF) �́A�m�����x�Ɨݐ�
%   ���z�֐��ɂ�蕪�z���`���܂��BPDF��CDF�́A@���g���č쐬�����֐��n���h
%   ���ł��B�����́A���͂Ƃ��ăf�[�^�̃x�N�g���ƁA1�܂��͕����̕��z�p��
%   ���[�^���󂯎��A�m�����x�֐��l�Ɨݐϕ��z�l�̃x�N�g�������ꂼ��o�͂���
%   ���B'censoring' �̖��O�ƒl�̑g(���L���Q��)���Ȃ��ꍇ�́A'cdf' �̖��O��
%   �l�̑g���ȗ����邱�Ƃ��ł��܂��B
%
%   ACOV = MLECOV(PARAMS, DATA, 'logpdf',LOGPDF, 'logsf',LOGSF) �́A�m��
%   ���x�Ƒΐ��̐����֐��ɂ���ĕ��z���`���܂��BLOGPDF��LOGSF�́A@��
%   �g���č쐬�����֐��n���h���ł��B����́A���͂Ƃ��ăf�[�^�̃x�N�g�������
%   1�܂��͕����̕��z�p�����[�^���󂯎��A�ΐ��̊m�����x�l�Ƒΐ��̐����֐�
%   �l���o�͂��܂��B'censoring' �̖��O�ƒl�̑g(���L���Q��)�͂Ȃ��ꍇ�́A
%   'logsf' �̖��O�ƒl�̑g�͏ȗ����邱�Ƃ��ł��܂��B
%
%   ACOV = MLECOV(PARAMS, DATA, 'nloglf',NLOGLF) �́A�ΐ��ޓx�֐��ɂ�蕪�z
%   ���`���܂��BNLOGLF�́A�ȉ���4�̓��͈������󂯎��A@���g���Ďw�肳���
%   �֐��n���h���ł��B
%      PARAMS - ���z�p�����[�^�l�̃x�N�g��
%      DATA   - �f�[�^�̃x�N�g��
%      CENS   - �Z���T�l�̃u�[���A���x�N�g��
%      FREQ   - �����f�[�^���g���̃x�N�g��
%   NLOGLF�́A'censoring' �܂���'frequency' �̖��O�ƒl�̑g��^���Ȃ��ꍇ�ł��A
%   4�S�Ă̈������󂯎��K�v������܂�(���L���Q��)�B�������Ȃ���ANLOGLF�́A
%   ���̏ꍇ����CENS��FREQ�𖳎����邱�Ƃ��ł��܂��BNLOGLF�́A�X�J���̕��̑ΐ�
%   �ޓx�l���o�͂��A�I�v�V�����ŁA���̑ΐ��ޓx���z�x�N�g�����o�͂��܂�(���L�� 
%   'options'�̖��O�ƒl�̑g���Q��)�B
%
%   PDF, CDF, LOGPDF, LOGSF, NLOGLF�́A�ŏ��̗v�f����L�Œ�`�����֐��n���h��
%   �ŁA�c��̗v�f���֐��̕t���I�Ȉ����ł���Z���z��ł��BMLE�́A�֐��R�[���̈���
%   ���X�g�̍Ō�ɂ����̈�����u���܂��B
%
%   [...] = MLECOV(PARAMS, DATA, ..., 'PARM1',VAL1, 'PARM2',VAL2, ...)
%   �͈ȉ�����I�������I�v�V�����̈�����/�l�̑g���w�肵�܂��B
%
%      ���O		�l
%      'censoring'    DATA�Ɠ����T�C�Y�̃u�[���A���x�N�g���ŁADATA�̑Ή�����
%			  �v�f���E���ł��؂�̊ϑ��l�̂Ƃ���1�A�Ή�����v�f������
%			  �Ȋϑ��ł���Ƃ���0���܂݂܂��B
%                     �f�t�H���g�́A���ׂĂ������Ɋϑ����ꂽ�l�ł��B
%      'frequency'    DATA�Ɠ����T�C�Y�̃x�N�g���ŁA�Ή�����DATA�̗v�f�ɑ΂���
%			  �񕉂̎��g�����܂݂܂��B�f�t�H���g�́ADATA�̗v�f���Ƃ�1��
%			  �̊ϑ��l�ł��B
%      'options'      STATSET�̌Ăяo���ɂ��쐬�����\���̂ŁA�L�������փV
%			  �A���ɑ΂��鐔�l�I�v�V�������܂݂܂��B���p�\��STATSET
%			  �p�����[�^�͈ȉ��̒ʂ�ł��B
%
%           'GradObj'   - 'on' �܂���'off'�B'nloglf' �̖��O�ƒl�̑g�ɂ��^��
%				������֐����A2�Ԗڂ̏o�͂Ƃ��ĕ��̑ΐ��ޓx�̌��z
%			       �x�N�g�����o�͂��邩�ǂ����������܂��B�f�t�H���g��'off'�B
%           'DerivStep' - �փV�A���v�Z�̗L�������ŗp�����鑊�΃X�e�b�v�T�C�Y�B
%                         �X�J���܂���PARAMS�Ɠ����T�C�Y�ł��B�f�t�H���g��
%                         EPS^(1/4)�ł��B
%                         �������l��'GradObj'��'on'�̏ꍇ�ɓK�؂ł��B
%
%   ���:
%
%       % �V�~�����[�g���ꂽ�f�[�^�̃x�[�^���z���ߎ����A�p�����[�^����̋ߎ���
%	 % ���U�s����v�Z���܂��B
%       x = betarnd(1.23, 3.45, 25, 1);
%       phat = mle(x, 'dist','beta')
%       acov = mlecov(phat, x, 'logpdf',@betalogpdf)
%
%       function logpdf = betalogpdf(x,a,b)
%       logpdf = (a-1)*log(x) + (b-1)*log(1-x) - betaln(a,b);
%
% �Q�l  MLE, STATSET.


%   Copyright 1993-2004 The MathWorks, Inc.
