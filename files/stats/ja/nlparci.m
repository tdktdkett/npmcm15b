% NLPARCI ����`���f���̃p�����[�^�̐M�����
%
%   CI = NLPARCI(BETA,RESID,'covar',SIGMA) �́A����`�ŏ����̃p�����[�^
%   ���� BETA �ɑ΂��� 95% �̐M����� CI ��Ԃ��܂��BNLPARCI ���Ăяo���O��
%   ����`��A���f���Ƀt�B�b�g���邽�߂� NLINFIT ���g�p���A�W������l BETA
%   �Ǝc�� RESID �Ɛ��肳�ꂽ�W���̋����U�s�� SIGMA �𓾂܂��B
% 
%   CI = NLPARCI(BETA,RESID,'jacobian',J) ���A95% �̐M����Ԃ��v�Z����
%   �V���^�b�N�X�ł��BJ �́ANLINFIT �Ōv�Z����郄�R�r�A���ł��B
%   SIGMA �p�����[�^�̓��o�X�g�ߎ����l������K�v�����邽�߁ANLINFIT ��
%   ���o�X�g�I�v�V�������g�p����ꍇ�A'jacobian' �̓��͂ł͂Ȃ��A'covar' 
%   �̓��͂��g�p����K�v������܂��B
%
%   CI = NLPARCI(...,'alpha',ALPHA) �́A100(1-ALPHA)% �̐M����Ԃ�Ԃ��܂��B
%
%   NLPARCI �́A�����l�Ƃ��� RESID�A�܂��� J �� NaN �������A�Ή�����ϑ���
%   �������܂��B
%
%   �M����Ԃ̌v�Z�́ARESID �̒����� BETA �̒����𒴂���ꍇ�ɖ����ɂȂ�A
%   J �̓t���̗񏇈ʂɂȂ�܂��BJ ���������������ꍇ�A�M����Ԃ͕s���m�ɂȂ�
%   �\��������܂��B
%
%   ��F
%      load reaction;
%      [beta,resid,J,Sigma] = nlinfit(reactants,rate,@hougen,beta);
%      ci = nlparci(beta,resid,'covar',Sigma);
%
%   �Q�l NLINFIT, NLPREDCI, NLINTOOL.


%   Copyright 1993-2007 The MathWorks, Inc. 
