%GMDISTRIBUTION  �K�E�X�������z�N���X
%
%   GMDISTRIBUTION �N���X�̃I�u�W�F�N�g�́A�����̑��ϗʃK�E�X���z�v�f��
%   �����ō\������鑽�ϗʕ��z�ł���K�E�X�������z���`���܂��B�^����ꂽ 
%   GMDISTRIBUTION �I�u�W�F�N�g�ɑ΂���v�f���͌Œ�ł��B���ꂼ��̑��ϗ�
%   �K�E�X�v�f�́A���ςƋ����U�Œ�`����A�����v�f�́A������̃x�N�g����
%   ��`����܂��B
%
%   ���z�p�����[�^���w�肵�ăK�E�X�������z���쐬����ɂ́AGMDISTRIBUTION 
%   �R���X�g���N�^���g�p���Ă��������B�K�E�X�������z���f�����f�[�^�ɋߎ�����ɂ́A
%   GMDISTRIBUTION.FIT ���g�p���Ă��������B
%
%   K �̗v�f�����K�E�X�������z�́AD �����ɂ����āA�ȉ��̃v���p�e�B��
%   �����Ă��܂��B
%
%      NDimensions  �������z D ���̑��ϗʃK�E�X�v�f���Ƃ̎������B
%      DistName     ���z�� 'gaussian mixture distribution'�B
%      NComponents  �����v�f�� K�B
%      PComponents  �e�v�f�̍�������܂� 1�~K �̃x�N�g���B
%      CovType      �v�f�̋����U�s�񂪑Ίp�s��ɂȂ�悤���������ꍇ�� 
%                   'diagonal'�B�����łȂ��ꍇ�� 'full'�B
%      SharedCov    �v�f�̋����U�s�񂪓��� (�v�[�����ꂽ�����U) �ɂȂ�悤
%                   ���������ꍇ�� true�B�����łȂ��ꍇ�� false�B
%      mu           �v�f�̕��ς� K�~D �̍s��B
%      Sigma        �v�f�̋����U�s����܂ޔz��A�܂��́A�s��B
%                   Sigma �͈ȉ��̂����ꂩ�ɂȂ�܂��B
%                    * �����U�̃t�H�[���Ő������Ȃ��ꍇ�� D�~D�~K �z��B
%                      ���̏ꍇ�ASigma(:,:,J) �͗v�f J �̋����U�s��ł��B
%                    * �����U�s��͑Ίp�s��ɂȂ�悤��������邪�A�S�̂𓯂�
%                      �v�f�ɂ���悤��������Ȃ��ꍇ�� 1�~D�~K �z��B
%                      ���̏ꍇ�ASigma(:,:,J) �͗v�f J �̋����U�s���
%                      �Ίp�v�f���܂݂܂��B
%                    * �����U�s��͑S�̂𓯂��v�f�ɂ���悤��������邪�A
%                      �Ίp�s��ɂȂ�悤��������Ȃ��ꍇ�� D�~D �s��B
%                      ���̏ꍇ�ASigma �͋��ʂ̋����U�s��ł��B
%                    * �����U�s��͑Ίp�s��ɂȂ�悤�A���A�S�̂𓯂�
%                      �v�f�ɂ���悤���������ꍇ�� 1�~D �x�N�g���B
%                      ���̏ꍇ�ASigma �͋��ʂ̋����U�s��̑Ίp�v�f���܂݂܂��B
%
%   GMDISTRIBUTION.FIT ���g���ăf�[�^�ɋߎ����邱�ƂŁA�쐬���ꂽ�K�E�X�������z
%   �I�u�W�F�N�g�́A����Ɉȉ��̃v���p�e�B�������Ă��܂��B
%
%      NlogL        �ߎ��̕��̑ΐ��ޓx�B
%      AIC          2*NlogL + 2*(����p�����[�^��) �Ƃ��Ē�`�����ߎ���
%                   �΂���Ԓr�̏��K�́B
%      BIC          2*NlogL + (����p�����[�^�� * log(N)) �Ƃ��Ē�`�����
%                   �ߎ��ɑ΂���x�C�Y�̏��K�́B
%      Converged    �ߎ��A���S���Y�������������ꍇ�� true�B�A���S���Y����
%                   �������Ȃ��ꍇ�� false�B
%      Iters        �ߎ��A���S���Y���ŗ^������J��Ԃ��񐔁B
%      RegV         FIT ���\�b�h�ւ� 'Regularize' ���̓p�����[�^�ɑ΂���
%                   �^������l�B
%
%   �Q�l GMDISTRIBUTION/GMDISTRIBUTION, GMDISTRIBUTION/FIT,
%        GMDISTRIBUTION/CLUSTER, GMDISTRIBUTION/PDF, GMDISTRIBUTION/CDF,
%        GMDISTRIBUTION/RANDOM, GMDISTRIBUTION/POSTERIOR,
%        GMDISTRIBUTION/MAHAL.


%   Copyright 2007-2008 The MathWorks, Inc.
