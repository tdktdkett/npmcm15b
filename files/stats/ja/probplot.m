%PROBPLOT  �m���v���b�g
%
%   PROBPLOT(Y) �́A�f�[�^ Y �̕��z�𐳋K���z�Ɣ�r���āA���K���z�̊m��
%   �v���b�g���쐬���܂��BY �́A1 �̃x�N�g���A�܂��́A�e��ɕʂ̕W�{��
%   ���s��ł��B�v���b�g�� Y �̉��ʎl���ʂƏ�ʎl���ʂƒʂ��ēn�����
%   ������܂�ł���A�f�[�^�����K���z�ɏ]�����ǂ����𔻒肷�邽�߂�
%   �𗧂��܂��BPROBPLOT �́A�ʒu���v���b�g���钆�Ԋm�����g�p���܂��B
%
%   PROBPLOT('DISTNAME',Y) �́A�w�肵�����z�̊m���v���b�g���쐬���܂��B
%   DISTNAME �́A�ȉ��̕��z�̃��X�g����I������镶����ł��B
%
%       'exponential'                      �w��
%       'extreme value' �܂��� 'ev'        �ɒl
%       'lognormal'                        �ΐ����K
%       'normal'                           ���K
%       'rayleigh'                         ���C���[
%       'weibull' �܂��� 'wbl'             ���C�u��
%
%   PROBPLOT(Y,CENS,FREQ) �܂��� PROBPLOT('DISTNAME',Y,CENS,FREQ) �́A
%   �x�N�g�� Y ���K�v�ł��BCENS �� Y �Ɠ����T�C�Y�̃x�N�g���ŁA�E���ł��؂�
%   �ƂȂ�ϑ��ɑ΂��� 1�A���m�Ɋϑ������ϑ��ɑ΂��� 0 �Ƃ��܂��B
%   FREQ �́AY �Ɠ����T�C�Y�̃x�N�g���ŁAY �̑Ή�����v�f�ɑ΂��鐮���̕p�x�ł��B
%
%   PROBPLOT(AX,Y) �́A�����̊m���v���b�g�ɑ΂���n���h�� AX ��^���AY �̕W�{
%   �ɑ΂��Ă���Ƀ��C����ǉ����܂��BAX �́AAxes �̏W���ɑ΂���n���h���ł��B
%
%   CENS �� FREQ ���w�肳��Ă��Ȃ��ꍇ�A�f�[�^�_����ϑ������擾����̂Ɠ��l�ɁA
%   �f�[�^�J�[�\�����g�p���v���b�g���琳�m�Ȓl��ǂݎ���Ă��������B
%
%   PROBPLOT(...,'noref') �́A������ȗ����܂��B
%
%   PROBPLOT(AX,PD) �́A�m�����z�I�u�W�F�N�g PD ��^���APD �Ŏw�肳�ꂽ�m��
%   ���z��\�����߂� AX �Ŏw�肵�����W���ɋߎ��������C����ǉ����܂��B
%
%   PROBPLOT(AX,FUN,PARAMS) �́A�֐� FUN �ƃp�����[�^�̏W�� PARAMS ��^���A
%   AX �Ŏw�肵�� Axes �ɑ΂��ċߎ��������C����ǉ����܂��BFUN �́Acdf �֐���
%   �v�Z����֐��̂��߁A(@weibcdf �̂悤��) @ ���g�p���Ďw�肵�܂��BPARAMS �́A
%   FUN ��]�����邽�߂ɕK�v�ȃp�����[�^�̏W���̂��߁A�Z���z��A�܂��̓x�N�g����
%   ���Ďw�肵�܂��B�֐��́A�ŏ��̈����Ƃ��� X �l�̃x�N�g���A���ɃI�v�V������
%   �p�����[�^���󂯁AX �ŕ]������� cdf �̃x�N�g����Ԃ��Ȃ���΂Ȃ�܂���B
%
%   H=PROBPLOT(...) �́A�v���b�g�������C���̃n���h����Ԃ��܂��B
%
%   y ���̃X�P�[���́A�I�������m�����z�Ɋ�Â��܂��Bx ���́A���C�u���Ƒΐ�
%   ���K���z�̏ꍇ�͑ΐ��X�P�[���A���̕��z�̏ꍇ�͐��`�X�P�[���ɂȂ�܂��B
%   �T�C�Y N �̕W�{���� I �Ԗڂɕ��בւ���ꂽ�l�́Ay ����̌o���ݐϕ��z�֐���
%   ��ђl�̒��Ԃɑ΂���v���b�g�ł��B�ł��؂��Ă��Ȃ��f�[�^�ł́A���Ԃ� 
%   (I-0.5)/N �ł��B�ł��؂�ꂽ�f�[�^�ł́Ay �l�̌v�Z�͂�蕡�G�ɂȂ�܂��B
%
%   ��: �w���f�[�^�𐶐����܂��B���K���z�v���b�g�́A�悢�ߎ��������܂���B
%       �w�����z�͕��z�̃��C�u���Q�̈ꕔ�ł��邽�߁A���C�u���m���v���b�g��
%       ���ǂ����ʂƂȂ�܂��B
%       y = exprnd(5,200,1);
%       probplot(y);                      % ���K���z�v���b�g
%       figure; probplot('weibull',y);    % ���C�u�����z�v���b�g
%
%   �Q�l NORMPLOT, WBLPLOT, ECDF.


%   Copyright 2003-2009 The MathWorks, Inc.
