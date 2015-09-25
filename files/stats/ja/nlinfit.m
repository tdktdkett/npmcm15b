%NLINFIT  ����`�̍ŏ�����A
%
%   BETA = NLINFIT(X,Y,MODELFUN,BETA0) �́A�ŏ���搄���p��������`��A��
%   �W���𐄒肵�܂��BY �́A�����l (�]���ϐ�) �̃x�N�g���ł��B�ʏ�́AX �́A
%   Y �̊e�l�ɑ΂��� 1 �̍s�����\���q (�Ɨ��ϐ�) �̌v��s��ł��B�������A
%   X �� MODELFUN �Ɏ󂯓�����邽�߂ɏ������ꂽ�C�ӂ̔z��ł��BMODELFUN �́A
%   2 �̈����A�W���x�N�g���Ɣz�� X ���󂯓���A�ߎ����� Y �̃x�N�g����Ԃ� 
%   @ �Ŏw�肳���֐��ł��BBETA0 �́A�W���ɑ΂��鏉���l���܂ރx�N�g���ł��B
%
%   [BETA,R,J,COVB,MSE] = NLINFIT(X,Y,MODELFUN,BETA0) �́A�ߎ������W�� BETA�A
%   �c�� R�AMODELFUN �̃��R�r�A�� J�A�ߎ������W���ɑ΂��Đ��肳�ꂽ�����U�s�� 
%   COVB�A�덷���̕��U�̐��� MSE ��Ԃ��܂��B�����̏o�͂� NLPREDCI �Ƌ���
%   �g�p���āA�\���q�ɑ΂���M����Ԃ̐����A����� NLPARCI �Ƌ��Ɏg�p����
%   ����W���ɑ΂���M����Ԃ𐶐����邱�Ƃ��ł��܂��B���o�X�g�ȃI�v�V������
%   �g�p����ꍇ�A�M����ԂɃ��o�X�g�ߎ��𐳂����������ɂ́ASIGMA ��
%   �g�p���Ȃ���΂Ȃ炸�ANLPREDCI �܂��� NLPARCI �ւ̓��͂Ƃ��āAMSE ��
%   �K�v�ƂȂ�ꍇ������܂��B
%
%   [...] = NLINFIT(X,Y,MODELFUN,BETA0,OPTIONS) �́ANLINFIT ���g�����A���S���Y��
%   �ɑ΂��鐧��p�����[�^���w�肵�܂��B���̈����́ASTATSET ���Ăяo�����Ƃ�
%   �쐬�ł��܂��B���p�\�� STATSET �p�����[�^�́A�ȉ��̂Ƃ���ł��B
%
%      'MaxIter'     - �J��Ԃ��̍ő勖�e�񐔁B�f�t�H���g�� 100 �ł��B
%      'TolFun'      - �c���̓��a�̏I�����e�덷�B
%                      �f�t�H���g�� 1e-8 �ł��B
%      'TolX'        - ���肳�ꂽ�W�� BETA �̏I�����e�덷�B�f�t�H���g�� 1e-8 �ł��B
%      'Display'     - ���蒆�̏o�͂̕\�����x���ł��B'off' (�f�t�H���g), 
%                      'iter', 'final' �̂����ꂩ����I�����܂��B
%      'DerivStep'   - �L�������̌��z�̌v�Z�Ɏg���鑊�Δ����ł��B�X�J�����A
%                      �p�����[�^�x�N�g�� BETA �Ɠ����T�C�Y�ɂȂ�܂��B
%                      �f�t�H���g�� EPS^(1/3) �ł��B
%      'FunValCheck' - �ړI�֐����� NaN �� Inf �̂悤�Ȗ������o�͂���Ȃ�����
%                      �`�F�b�N�B'off' �܂��� 'on' (�f�t�H���g)�B
%      'Robust'      - ���o�X�g�ߎ��I�v�V�������Ăяo�����߂̃t���O�B
%                      'off' (�f�t�H���g) �܂��� 'on'�B
%      'WgtFun'      - ���o�X�g�ߎ��ɑ΂���d�݊֐��BRobust �� 'on' �̏ꍇ
%                      �̂ݗL���ł��B'bisquare' (�f�t�H���g), 'andrews', 
%                      'cauchy', 'fair', 'huber', 'logistic', 'talwar' 
%                      �܂��� 'welsch'�B���͂Ƃ��Đ��K�����ꂽ�c�����󂯓����
%                      �֐��n���h���ɂ��邱�Ƃ��\�ŁA�o�͂Ƃ��ă��o�X�g��
%                      �d�݂�Ԃ��܂��B
%      'Tune'        - �d�݊֐���K�p����O�Ɏc���𐳋K�����邽�߂̃��o�X�g
%                      �ߎ��Ŏg�p����钲���萔�B���̃X�J���ł��B�f�t�H���g�l��
%                      �d�݊֐��Ɉˑ����܂��B
%                      ���̃p�����[�^�́A�d�݊֐����֐��n���h���Ŏw�肳���
%                      �ꍇ�ɕK�v�ł��B
%
%   NLINFIT �́AY �܂��� MODELFUN(BETA0,X) ���� NaN �������l�Ƃ��Ĉ����A
%   �Ή�����ϑ��𖳎����܂��B
%
%   ��:
%
%      MODELFUN ���w�肷�邽�߂� @ ���g���܂��B
%         load reaction;
%         beta = nlinfit(reactants,rate,@mymodel,beta);
%
%      �����ŁAMYMODEL �́A�ȉ��̂悤�� MATLAB �֐��ł��B
%         function yhat = mymodel(beta, x)
%         yhat = (beta(1)*x(:,2) - x(:,3)/beta(5)) ./ ...
%                        (1+beta(2)*x(:,1)+beta(3)*x(:,2)+beta(4)*x(:,3));
%
%      �d�ݕt���ߎ��̗�ɂ��ẮAStatistics Toolbox �̃f�� 
%      "Weighted Nonlinear Regression" ���Q�Ƃ��Ă��������B
%
%   �Q�l NLPARCI, NLPREDCI, NLMEFIT, NLINTOOL, STATSET.


%   Copyright 1993-2009 The MathWorks, Inc.
