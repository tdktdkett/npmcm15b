%MNRVAL  ���`�܂��͏����̑������z��A���f���̗\���l
%
%   PHAT = MNRVAL(B,X) �́A�\���q�̒l X �������`�̑������z�̃��W�X�e�B�b�N
%   ��A���f���ɑ΂���\���m�����v�Z���܂��BB �́AMNRFIT �֐��ŕԂ����ؕЂ�
%   �W������l�ł��BX �́AP �̗\���q�ϐ���� N �̊ϑ������� N�~P �̌v��s��ł��B
%   MNRVAL �́A�����I�Ƀ��f�����̐ؕ� (�萔) �����܂݂܂��B���� X �ɂ��̗��
%   ���͂��܂���BPHAT �́A���ꂼ��̑������z�̃J�e�S���ɑ΂���\���m���� 
%   N�~K �̍s��ł��B
%
%   YHAT = MNRVAL(B,X,SSIZE) �́A�W�{�T�C�Y SSIZE �̗\�������J�e�S����
%   �J�E���g���v�Z���܂��BSSIZE �́A���̐����� N �v�f�̗�x�N�g���ł��B
%
%   [... ,DLO,DHI] = MNRVAL(B,X, ... ,STATS) �́A�\���m�� PHAT�A�܂��́A
%   �J�E���g YHAT ��� 95% �̐M�����E���v�Z���܂��BSTATS �́AMNRFIT ��
%   �Ԃ���铝�v�ʂ̍\���̂�Ԃ��܂��BDLO �� DHI �́APHAT�A�܂��� 
%   YHAT - DLO �̐M�������ƁAPHAT�A�܂��� YHAT + DHI �̐M��������`���܂��B
%   �M�����E�́A�����ɂ͑��݂����A�����͋ߎ��Ȑ��ɓK�p����A�V�K�̊ϑ��ɂ�
%   �K�p����܂���B
%
%   [...] = MNRVAL(...,'PARAM1',val1,'PARAM2',val2,...) �́A�\���l�𐧌䂷��
%   ���߂̃I�v�V�����p�����[�^�̖��O/�l�̑g�ݍ��킹���w�肷�邱�Ƃ��\�ł��B
%   �p�����[�^�͈ȉ��̂Ƃ���ł��B
%
%      'model' - MNRFIT �ŋߎ����ꂽ���f���^�C�v�B�e�L�X�g������ 'nominal' 
%         (�f�t�H���g), 'ordinal', 'hierarchical' �̂����ꂩ�ł��B
%
%      'interactions' - ���f�����A�������z�̃J�e�S���ƌW���Ԃ̑��ݍ�p���܂� 
%         MNRFIT �ŋߎ�����邩�ǂ������w��B�f�t�H���g�́A�����̃��f����
%         �΂��� 'off'�A���`�ƊK�w�̃��f���ɑ΂��� 'on' �ł��B
%
%      'link' - �����ƊK�w�̃��f���ɑ΂��� MNRFIT �Ŏg���郊���N�֐��B
%         �e�L�X�g������ 'logit' (�f�t�H���g), 'probit', 'comploglog', 
%         'loglog' �̂����ꂩ�Ƃ��ă����N�̃p�����[�^�l���w�肵�܂��B
%         ���`���f���ɑ΂��� 'link' �p�����[�^���w�肵�Ȃ����Ƃ�����܂��B
%         �����͏�ɑ��ϗʃ��W�X�e�B�b�N�̃����N���g�p���܂��B
%
%      'type' - K �̑������z�̃J�e�S���̊m�� (�܂��̓J�E���g) �ɑ΂���\����
%         �M�����E��Ԃ��ɂ� 'category' (�f�t�H���g) �ɐݒ肵�܂��B
%         N�~(K-1) �̍s��̂悤�ɁA�ŏ��� K-1 �̑������z�̃J�e�S���̗ݐϊm�� 
%         (�܂��̓J�E���g) �ɑ΂���\���ƐM�����E��Ԃ��ɂ́A'cumulative' ��
%         �ݒ肵�܂��BK �Ԗڂ̃J�e�S���ɑ΂��ė\�������ݐϊm���� 1 �ł��B
%         �ŏ��� K-1 �̏����J�e�S���̊m���A���Ȃ킿�A�J�e�S�� J �ȏ�̍���
%         ���ʂ�^����J�e�S�� J �ɑ΂���m���̍��ڂŗ\���ƐM�����E��Ԃ�
%         �ɂ́A'conditional' �ɐݒ肵�܂��B'type' �� 'conditional' �ŁA
%         �W�{�T�C�Y�̈��� SSIZE ��^����ꍇ�AX �̊e�s�ɂ����ė\�������
%         �J�E���g�́A���ׂẴJ�e�S���ɂ܂�����Ή����� SSIZE �̗v�f��
%         �����ƂȂ�܂��B
%
%      'confidence' - 0 �� 1 �̊Ԃ̒l�̐M�����E�ɑ΂���M���x�B
%         �f�t�H���g�� 0.95 �ł��B
%
%   �Q�l MNRFIT, GLMFIT, GLMVAL.


%   Copyright 2006-2008 The MathWorks, Inc.
