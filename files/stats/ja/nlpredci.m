%NLPREDCI  ����`��A�̗\���ɑ΂���M�����
%
%   [YPRED, DELTA] = NLPREDCI(MODELFUN,X,BETA,RESID,'covar',SIGMA) �́A
%   �\���l (YPRED) �ƁA���͒l X �ł� MODELFUN �Œ�`���ꂽ����`��A���f����
%   �΂��� 95% �̐M����Ԃ̔��l�� (DELTA) ��Ԃ��܂��BMODELFUN �́A2 �̈����A
%   �W���x�N�g���Ɣz�� X ���󂯓���A�ߎ����� Y �̃x�N�g����Ԃ� @ �Ŏw�肳���
%   �֐��ł��BNLPREDCI ���Ăяo���O�ɁA���肳�ꂽ�W���l BETA �ƁA�c�� RESID�A
%   ���R�r�A�� J ���擾���A����`�ŏ����� MODELFUN �ɋߎ����邽�߂ɁA
%   NLINFIT ���g�p���Ă��������B
%
%   [YPRED, DELTA] = NLPREDCI(MODELFUN,X,BETA,RESID,'jacobian',J) �́A95% ��
%   �M����Ԃ��v�Z�����փV���^�b�N�X�ł��BJ �́ANLINFIT �Ōv�Z����郄�R�r�A��
%   �ł��BSIGMA �p�����[�^�̓��o�X�g�ߎ����l������K�v�����邽�߁ANLINFIT ��
%   ���o�X�g�I�v�V�������g�p����ꍇ�A'jacobian' �̓��͂ł͂Ȃ� 'covar' ��
%   ���͂��g�p����K�v������܂��B
%
%   [...] = NLPREDCI(...,'PARAM1',val1,'PARAM2',val2,...) �́A�ȉ��̂悤��
%   �I�v�V�����p�����[�^�̖��O�ƒl�̑g�ݍ��킹���w�肷�邱�Ƃ��\�ł��B
%
%      ���O          �l
%      'alpha'       100(1-ALPHA)% �Ƃ��ĐM���x���w�肷�邽�߂� 0 �� 1 ��
%                    �Ԃ̒l�ł��B�f�t�H���g�� 0.05 �ł��B
%      'mse'         nlinfit �ŕԂ���镽�ϓ��덷�ł��Bnlinfit �Ń��o�X�g
%                    �I�v�V�������g�p����ꍇ�� predict �̐V�K�̊ϑ����K�v�ł� 
%                    ('predopt' ���Q��)�B����ȊO�̏ꍇ�� mse �͎c������v�Z����A
%                    ���o�X�g�ߎ����l�����܂���B
%      'predopt'     X �Ő��肳���Ȑ� (�֐��l) �ɑ΂���M����Ԃ��v�Z����
%                    �ꍇ�� 'curve' (�f�t�H���g)�AX �ŐV�K�̊ϑ��̗\����Ԃ�
%                    �v�Z����ꍇ�� 'observation' �ł��Bnlinfit �Ń��o�X�g
%                    �I�v�V�������g�p������A'observation' ���w�肵���ꍇ�A
%                    ���ϓ��덷�̃��o�X�g������w�肷�邽�߂� 'mse' �p�����[�^
%                    ���^���Ȃ���΂Ȃ�܂���B
%      'simopt'      ������Ԃɑ΂��� 'on'�A�񓯎���Ԃɑ΂��� 'off' 
%                    (�f�t�H���g) �̂����ꂩ�ł��B
%
%   NLPARCI �́ARESID �܂��� J �� NaN �������l�Ƃ��Ĉ������߁A�Ή�����ϑ���
%   �������܂��B
%
%   �M����Ԃ̌v�Z�́ARESID �̒����� BETA �̒����𒴂��AJ �� BETA �Ńt����
%   �����N�����V�X�e���ɑ΂��ėL���ł��BJ ���������̏ꍇ�A�M����Ԃ͕s���m��
%   �Ȃ�\��������܂��B
%
%   ��:
%      load reaction;
%      [beta,resid,J,Sigma] = nlinfit(reactants,rate,@hougen,beta);
%      newX = reactants(1:2,:);
%      [ypred, delta] = nlpredci(@hougen,newX,beta,resid,'Covar',Sigma);
%
%   �Q�l NLINFIT, NLPARCI, NLINTOOL.


%   Copyright 1993-2009 The MathWorks, Inc.
