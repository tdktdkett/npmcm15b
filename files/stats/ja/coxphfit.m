%COXPHFIT  �R�b�N�X���n�U�[�h��A
%
%   B=COXPHFIT(X,Y) �́A�\���q�Ƃ��čs�� X �̗���g�p���A�R�b�N�X�̔��
%   �n�U�[�h��A���f�����x�N�g�� Y �̃f�[�^�ɋߎ������܂��BX �� Y �́A�����s
%   ���łȂ���΂Ȃ�܂���B�܂� X �� 1 �̗���܂�ł͂����܂���B���ʂ� B �́A
%   �W������l�̃x�N�g���ł��B���̃��f���́AY �̕��z�ɑ΂���̏ᗦ�� 
%   h(t)*exp(X*B) �Ƃ��ċL�q�ł��邱�Ƃ������A������ h(t) �́A���ʂ̃x�[�X
%   ���C���n�U�[�h�֐��ł��B
%
%   [...] = COXPHFIT(X,Y,'PARAM1',VALUE1,'PARAM2',VALUE2,...) �́A�ȉ�����
%   �I�������ǉ��p�����[�^�̖��O/�l�̑g�ݍ��킹���w�肵�܂��B
%
%      ���O          �l
%      'baseline'    �x�[�X���C���n�U�[�h�֐����v�Z����� X �̒l�B�f�t�H���g�� 
%                    mean(X) �̂��߁AX �ł̌̏ᗦ�� h(t)*exp((X-mean(X))*B) �ł��B
%                    0 �ɑ΂���x�[�X���C�����v�Z����ɂ� 0 ����͂��邽�߁A
%                    X �ł̌̏ᗦ�́Ah(t)*exp(X*B) �ł��B
%      'censoring'   �E���ł��؂�̊ϑ��l�ɑ΂��� 1�A���m�Ɋϑ����ꂽ�ϑ��l��
%                    �΂��� 0 �ƂȂ� Y �Ɠ����T�C�Y�� boolean �z��B�f�t�H���g�́A
%                    ���ׂĐ������ϑ����ꂽ�ϑ��l�ł��B
%      'frequency'   �񕉂̐����J�E���g���܂� Y �Ɠ����T�C�Y�̔z��B
%                    ���̃x�N�g���� j �Ԗڂ̗v�f�́AY �� j �Ԗڂ̗v�f�� 
%                    X �� j �Ԗڂ̍s���ϑ����ꂽ�񐔂�^���܂��B�f�t�H���g�� 
%                    X �� Y �̍s���� 1 �̊ϑ��l�ł��B
%      'init'        ����W�� B �ɑ΂��鏉���l���܂ރx�N�g���B
%      'options'     B �̐���Ɏg���锽���A���S���Y���ɑ΂��鐧��p�����[�^
%                    ���w�肷��\���́B���̈����́ASTATSET �̌Ăяo���ō쐬����܂��B
%                    �p�����[�^���ƃf�t�H���g�l�ɂ��ẮASTATSET('coxphfit') ��
%                    ���͂��Ă��������B
%
%   [B,LOGL,H,STATS]=COXPHFIT(...) �́A�ǉ��̌��ʂ�Ԃ��܂��BLOGL �͑ΐ��ޓx
%   �ł��BH �͗� 1 �� y �l���A�� 2 �ɂ����̃x�N�g���ŕ]�����ꂽ���肳���
%   �x�[�X���C���ݐσn�U�[�h�܂� 2 �s�̍s��ł��BSTATS �́A�ȉ��̃t�B�[���h��
%   ���\���̂ł��B
%       'beta'     �W������l (B �̏o�͂Ɠ���)
%       'se'       �W������l�̕W���덷
%       'z'        B �ɑ΂��� z ���v�� (�W���덷�Ŋ���ꂽ B)
%       'p'        B �ɑ΂��� p-�l
%       'covb'     B �ɑ΂��Đ��肳�ꂽ�����U�s��
%
%   ��:
%       % �\���q X �Ɉˑ����� A �Ń��C�u���f�[�^�𐶐����܂��B
%       x = 4*rand(100,1); A = 50*exp(-0.5*x); B = 2;
%       y = wblrnd(A,B);
%
%       % �R�b�N�X���f���̋ߎ�
%       [b,logL,H,st] = coxphfit(x,y);
%
%       % �x�[�X���C���̎c���̃R�b�N�X����Ɗ��m�̃��C�u���֐���\��
%       stairs(H(:,1),exp(-H(:,2)))
%       xx = linspace(0,100);
%       line(xx,1-wblcdf(xx,50*exp(-0.5*mean(x)),B),'color','r')
%       title(sprintf('Baseline survivor function for X=%g',mean(x)));
%
%   �Q�l ECDF, STATSET, WBLFIT.


%   Copyright 2005-2008 The MathWorks, Inc.
