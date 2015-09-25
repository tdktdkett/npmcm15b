%FITDIST  �f�[�^�̊m�����z
%
%   PD = FITDIST(X,DISTNAME) �́A�m�����z DISTNAME ���x�N�g�� X �̃f�[�^��
%   �ߎ����A�ߎ��������z��\���I�u�W�F�N�g PD ��Ԃ��܂��BPD �́AProbDist �N���X
%   ����h�������N���X���̃I�u�W�F�N�g�ł��B
%
%   DISTNAME �́A�m���p�����g���b�N�J�[�l���������̕��z���ߎ�����ꍇ�� 
%   'kernel'�A�܂��́A�ȉ��̃p�����[�^���z���̂����ꂩ�ɂ��邱�Ƃ��ł��܂��B
%
%         'beta'                             �x�[�^
%         'binomial'                         ��
%         'birnbaumsaunders'                 Birnbaum-Saunders
%         'exponential'                      �w��
%         'extreme value', 'ev'              �ɒl
%         'gamma'                            �K���}
%         'generalized extreme value', 'gev' ��ʉ��ɒl
%         'generalized pareto', 'gp'         ��ʉ��p���[�g
%         'inversegaussian'                  �t�K�E�X
%         'logistic'                         ���W�X�e�B�b�N
%         'loglogistic'                      �ΐ����W�X�e�B�b�N
%         'lognormal'                        �ΐ����K
%         'nakagami'                         Nakagami
%         'negative binomial', 'nbin'        ���̓�
%         'normal'                           ���K
%         'poisson'                          �|�A�\��
%         'rayleigh'                         ���C���[
%         'rician'                           ���C�X (Rician)
%         'tlocationscale'                   t ���z�̈ʒu-�X�P�[��
%         'weibull', 'wbl'                   ���C�u��
%
%   [PDCA,GN,GL] = FITDIST(X,DISTNAME,'BY',G) �́A�O���[�v�ϐ� G ��^���A�w��
%   �������z���e�O���[�v����� X �f�[�^�ɋߎ����A�ߎ������m�����z�I�u�W�F�N�g��
%   �Z���z�� PDCA ��Ԃ��܂��B�ڍׂ� "help groupingvariable" ���Q�Ƃ��Ă��������B
%   G �́A����ɕ����̃O���[�v�ϐ��̃Z���z��ɂ��邱�Ƃ��ł��܂��B
%   GN �́A�O���[�v���x���̃Z���z��ł��BGL �́A�O���[�v�ϐ����Ƃ� 1 �������
%   �O���[�v�ϐ��̃��x���̃Z���z��ł��B
%
%   PD = FITDIST(..., 'NAME1',VALUE1,'NAME2',VALUE2,...) �́A�ȉ��̃��X�g����
%   �I�������I�v�V���������̖��O�ƒl�̑g�ݍ��킹���w�肵�܂��B�������́A
%   �啶���������̋�ʂ��Ȃ��A������v�ō\���܂���B
%
%      ���O          �l
%      'censoring'    X �̑Ή�����v�f���E���ł��؂�̏ꍇ�� 1�A�Ή�����
%                     �v�f���������ϑ��̏ꍇ�� 0 ���܂� X �Ɠ����T�C�Y��
%                     �_���x�N�g���ł��B
%                     �f�t�H���g�́A���ׂĐ������ϑ����ꂽ�ϑ��l�ł��B
%                     �ł��؂�͂��ׂĂ̕��z�ɑ΂��ăT�|�[�g����Ă��܂���B
%      'frequency'    X �̑Ή�����v�f�ɑ΂���񕉂̐����̕p�x���܂� X �Ɠ���
%                     �T�C�Y�̃x�N�g���ł��B�f�t�H���g�́AX �� 1 �̗v�f��
%                     �΂��� 1 �̊ϑ��l�ł��B
%      'options'      �J��Ԃ��ߎ��A���S���Y���ɑ΂��Đ���p�����[�^���w��
%                     ���邽�߂� STATSET �ō쐬�����\���̂ł��B
%
%   'binomial' ���z�̏ꍇ�̂�:
%      'n'            N �p�����[�^ (���s��) ���w�肷�鐳�̐����ł��B
%                     ���̕��z�ł͎g�p�ł��܂���B
%
%   'generalized pareto' ���z�̏ꍇ�̂�:
%      'theta'        ��ʉ��p���[�g���z�ɑ΂��� THETA (臒l) �p�����[�^��
%                     �l�ł��B�f�t�H���g�� 0 �ł��B
%                     ���̕��z�ł͎g�p�ł��܂���B
%
%   'kernel' ���z�̏ꍇ�̂�:
%      'kernel'     'normal' (�f�t�H���g), 'box', 'triangle', 
%                   'epanechinikov' �̒�����I�������g�p�̂��߂̃J�[�l��
%                   �������̃^�C�v
%      'support'    ���x���S�̂̎������z����ꍇ 'unbounded' (�f�t�H���g)�A
%                   ���̒l�ɐ�������ꍇ�� 'positive'�A�܂��͖��x�̃T�|�[�g��
%                   �΂��ď���l�Ɖ����l�̗L����^���� 2 �v�f�̃x�N�g����
%                   �����ꂩ�ł��B
%      'width'      �J�[�l���������E�B���h�E�̑ш敝�B�f�t�H���g�́A���K���z
%                   �̖��x�𐄒肷�邱�ƂɍœK�ł����A�����̃��[�h�̂悤��
%                   �������������̂ɂ́A��菬�����l��I�����Ă����܂��܂���B
%
%   FITDIST �́A�����l�Ƃ��� NaN �������A�폜���܂��B
%
%   ��:
%        % �J�[�l�����������x������g�p���� MPG �f�[�^���ߎ����܂��B
%        load carsmall
%        ksd = fitdist(MPG,'kernel')
%
%        % ���Y�����Ƃɂ��ꂼ��ŗL�̃��C�u�����z���ߎ����܂��B
%        % �f�[�^�̑���Ȃ����̏ꍇ�A�Z���z��͋�ł��B
%        wd = fitdist(MPG,'weibull', 'by',Origin)
%
%   �Q�l PROBDIST, GROUPINGVARIABLE, MLE.


%   Copyright 2008-2009 The MathWorks, Inc.
