%GLMFIT  ��ʉ����`���f���ߎ�
%
%   B = GLMFIT(X,Y,DISTR) �́A�\���ϐ��s�� X�A���� Y�A���z DISTR �Ɉ�ʉ�
%   ���`���f�����ߎ����܂��B���ʂ� B �́A�W������l�̃x�N�g���ł��B
%   DISTR �ɑ΂��Ďw��\�Ȓl�́A'normal'�A'binomial'�A'poisson'�A'gamma'�A
%   'inverse gaussian' �ł��B���z�́ADISTR �ɑΉ����鐳�������N���g�p����
%   �ߎ����܂��B
%
%   X �́A�ϑ��l�ɑΉ�����s�Ɨ\���ϐ��ւ̗�����s��ł��BGLMFIT �́A
%   ���f���̒萔���������I�Ɋ܂݂܂� (���� X �ɂ��̗����͂��܂���)�B
%   Y �͉����l�̃x�N�g���ł��BDISTR �� 'binomial' �̏ꍇ�AY �͐���/���s��
%   ���� 2 �l�x�N�g���ŁA���s�񐔂͂��ׂĂ̊ϑ��ɑ΂��� 1 �Ƃ݂Ȃ���܂��B
%   DISTR �� 'binomial' �̏ꍇ�AY �́A1 �Ԗڂ̗񂪊e�ϑ��ɑ΂��鐬���񐔂��܂݁A
%   2 �Ԗڂ̗񂪎��s�񐔂��܂� 2 ��̍s��ɂȂ�ꍇ������܂��B
%
%   GLMFIT �́AX �� Y �̒��� NaN �������l�Ƃ��Ĉ����A�Ή�����ϑ��l���폜���܂��B
%
%   B = GLMFIT(X,Y,DISTR,'PARAM1',val1,'PARAM2',val2,...) �́A���f���̋ߎ���
%   ���䂷��I�v�V�����p�����[�^�̖��O/�l�̑g�ݍ��킹���w�肷�邱�Ƃ��\�ł��B
%   �p�����[�^�͈ȉ��̂Ƃ���ł��B
%
%      'link' - ���������N�̑���Ɏg�p���邽�߂̃����N�֐��B
%         �����N�֐��́A���ω��� mu �Ɨ\���q x*b �̐��`�����Ԃ̊֌W 
%         f(mu) = x*b ���`���܂��B�ȉ��̂����ꂩ�̃����N�p�����[�^��
%         �w�肵�܂��B
%            - �e�L�X�g������ 'identity', 'log', 'logit', 'probit', 
%              'comploglog', 'reciprocal', 'loglog'
%            - �p���[�����N mu = (x*b)^P (x*b > 0) ���`����w�� P
%            - �����N (FL)�A�����N�̔��� (FD)�A�t�����N (FI) ���`����A
%              @ ���g���č쐬����� 3 �̊֐��n���h�����܂� {FL FD FI} ��
%              �`���̃Z���z��B
%
%      'estdisp' - �W���덷���v�Z����񍀁A�܂��̓|�A�\�����z�̕��U�p�����[�^
%         �𐄒肷��ꍇ 'on'�A�܂��́A���_�̕��U�l���g�p����ꍇ 'off' 
%         (�f�t�H���g) �Ƃ��Ďw��BGLMFIT �́A��ɑ��̕��z�̕��U�𐄒肵�܂��B
%
%      'offset' - �ǉ��̗\���ϐ��Ƃ��Ďg�p���邯��ǂ��A1.0 �ŌŒ肵��
%         �W���l�����x�N�g���B
%
%      'weights' - �e�ϑ��̑��Ε��U�̋t�ƂȂ�悤�Ȃ��炩���ߗ^����ꂽ
%         �d�݂̃x�N�g��
%
%      'constant' - ���f���̒萔�����܂ޏꍇ 'on' (�f�t�H���g)�A�ȗ�����ꍇ 
%         'off' �Ƃ��Ďw��B�萔���̌W���́AB �� 1 �Ԗڂ̗v�f�ł��B
%
%   [B,DEV] = GLMFIT(...) �́A�ߎ��̕Ε���Ԃ��܂��B
%
%   [B,DEV,STATS] = GLMFIT(...) �́A�ȉ��̃t�B�[���h���܂ލ\���̂�Ԃ��܂��B
%       'dfe'       �덷�̎��R�x
%       's'         ���_�l�܂��͐���l�̕��U�p�����[�^
%       'sfit'      ����l�̕��U�p�����[�^
%       'se'        �W������l�̕W���덷 B
%       'coeffcorr' B �ɑ΂��鑊�֍s��
%       'covb'      B �ɑ΂��Đ��肳�ꂽ�����U�s��
%       't'         B �ɑ΂��� t ���v��
%       'p'         B �ɑ΂��� p-�l
%       'resid'     �c��
%       'residp'    �s�A�\���c��
%       'residd'    �Ε��c��
%       'resida'    Anscombe �c��
%
%   ��: x ��� y �ɑ΂���v���r�b�g��A���f���ɋߎ����܂��B�e y(i) �́A
%       n(i) ��̎��s�ɂ����鐬���񐔂ł��B
%
%       x = [2100 2300 2500 2700 2900 3100 3300 3500 3700 3900 4100 4300]';
%       n = [48 42 31 34 31 21 23 23 21 16 17 21]';
%       y = [1 2 0 3 8 8 14 17 19 15 17 21]';
%       b = glmfit(x, [y n], 'binomial', 'link', 'probit');
%       yfit = glmval(b, x, 'probit', 'size', n);
%       plot(x, y./n, 'o', x, yfit./n, '-')
%
%   �Q�l GLMVAL, REGSTATS, REGRESS.


%   Copyright 1993-2008 The MathWorks, Inc.
