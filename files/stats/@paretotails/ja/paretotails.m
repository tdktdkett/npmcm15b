%PARETOTAILS  ��ʉ��p���[�g�̐������o���ݐϕ��z
%
%   OBJ = PARETOTAILS(X, PL, PU) �́A���S�� X �̌o�����z�A���̓p���[�g���z����
%   �\������镪�z���`����I�u�W�F�N�g���쐬���܂��B
%   X �́A�ɒl�̊ϑ�����ʉ��p���[�g���z (GPD) �ɋߎ������f�[�^�l�̎����l
%   �x�N�g���ł��BPL �� PU �́AX �̊ϑ��l�� 100*PL �� 100*(1 - PU) �̃p�[�Z���g
%   �ł���悤�ɁA�����Ə㐞�̗ݐϊm������肵�܂��B�����͊e�X�A�ő�ޓx�ɂ�� 
%   GPD �ɋߎ�����܂��B
%   PL=0�A�܂��́A�����ɏ��Ȃ��Ƃ� 2 �̈قȂ�ϑ����Ȃ��ꍇ�A�ߎ�����p���[�g���z��
%   �����͂���܂���BPL=1�A�܂��́A�㐞�ɏ��Ȃ��Ƃ� 2 �̈قȂ�ϑ����Ȃ��ꍇ�A
%   �ߎ�����p���[�g���z�̏㐞�͂���܂���B
%
%   OBJ = PARETOTAILS(X, PL, PU, CDFFUN) �́A�����Ə㐞�̊m���Ԃ� X �� CDF ��
%   ���肷�邽�߂ɁA�֐� CDFFUN ���g�p���܂��B
%   CDFFUN �́A�ȉ��̂����ꂩ�ɂȂ�܂��B
%       'ecdf'    (�f�t�H���g) ecdf ���̐����X�e�b�v���̒��ԂƂ��ăf�[�^�l��
%                 ��`����A�f�[�^�l�Ԃ̐��`��ԂŌv�Z������Ԃ����o�����z�� 
%                 cdf ���g�p�B
%       'kernel'  cdf �̃J�[�l���̊��炩�Ȑ���Ƃ����̐���l�̗��U�W���Ԃ�
%                 ��Ԃ��g�p�B
%       @FUN      ���̓f�[�^�̃x�N�g�����󂯓���Acdf �l�̃x�N�g�� P �ƕ]���_��
%                 �x�N�g�� XI ��Ԃ� [P,XI]=FUN(X) �̌`���̊֐��̃n���h���B
%                 XI �́A���ɕ��ׂ��Ă���K�v������܂��B�܂��AX ���̒l�Ɠ�����
%                 �K�v�͂���܂��� XI �͂��ꂼ��قȂ�l�łȂ���΂Ȃ�܂���B
%   CDFFUN �́A�t��Ԃ� PL �� PU �ɑΉ����镪�ʐ����v�Z���A�����̕��ʐ��Ԃ�
%   �ߎ����z���`���邽�߂Ɏg�p����܂��B
%
%   �o�̓I�u�W�F�N�g OBJ �́Acdf �A�t cdf�A�ߎ����z�Ɋւ��鑼�̊֐���]�����邽�߂�
%   ���\�b�h������ PARETOTAILS �I�u�W�F�N�g�ł��B�����̃��\�b�h�́A�R�s������
%   ���̃����e�E�J�����V�~�����[�V�����ɂ��K���Ă��܂��B���ɂ����� pdf 
%   ���\�b�h�� GPD ���x�ł����A���S�ł́A��Ԃ��� cdf �̌��z�Ƃ��Čv�Z����܂��B
%
%   PARETOTAILS �N���X�́APIECEWISEDISTRIBUTION �N���X�̃T�u�N���X�ŁA
%   ���\�b�h�̑����́A���̂悤�ȃN���X����h�����Ă��܂��B
%
%   ��:�p���[�g�̐��Ɋ�Â��ߎ��̕��z���v�Z
%      t = trnd(3,100,1);
%      o = paretotails(t,.1,.9);
%      x = linspace(-5,5);
%      plot(x,o.cdf(x),'b-',x,tcdf(x,3),'r:')
%
%   �Q�l ECDF, KSDENSITY, GPFIT, PARETOTAILS/CDF, PARETOTAILS/ICDF, 
%        PARETOTAILS/RANDOM.


%   Copyright 2006-2008 The MathWorks, Inc. 
