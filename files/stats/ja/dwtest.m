%DWTEST  ���`��A�̎��ȑ��ւɑ΂���_�[�r��-���g�\������
%
%    [P,DW]=DWTEST(R,X) �́A���`��A����̎c���̃x�N�g�� R �Ń_�[�r��-���g�\��
%    ������s�Ȃ��܂��B�����ŁAX �́A���`��A����̌v��s��ł��BP �͌����
%    �΂��Čv�Z���ꂽ p-�l�ŁADW �̓_�[�r��-���g�\�����v�ʂł��B�_�[�r��-���g�\��
%    ����́A�c���ԂɎ��ȑ��ւ̂���I�����ɑ΂��Ďc�����Ɨ����Ă��邩�ǂ�����
%    �e�X�g�Ɏg�p����܂��B
%
%    [...]=DWTEST(R,X,'METHOD') �́Ap-�l���v�Z���邽�߂Ɏg�����@���w��
%    ���܂��B'METHOD' �́A�ȉ��̂����ꂩ�ɂȂ�܂��B
%       'exact'        PAN �A���S���Y�����g�p���Đ��m�� p-�l���v�Z���܂�
%                      (�W�{�T�C�Y�� 400 ��菬�����ꍇ�̃f�t�H���g)�B
%       'approximate'  ���K�ߎ����g�p���� p-�l���v�Z���܂�
%                      (�W�{�T�C�Y�� 400 �ȏ�̏ꍇ�̃f�t�H���g)�B
%
%    [...]=DWTEST(R,X,'METHOD','TAIL') �́ATAIL �Ŏw�肳���Η������ɑ΂���
%    ������s�Ȃ��܂��B
%       'both'   "�n�񑊊ւ� 0 �ł͂Ȃ�" (��������B�f�t�H���g)
%       'right'  "�n�񑊊ւ� 0 ���傫��" (�E������)
%       'left'   "�n�񑊊ւ� 0 ��菬����" (��������)
%
%   ��:
%      % ������l�������̃f�[�^�ɋߎ����A�c�����̎��ȑ��ւ��Q�Ƃ��܂�
%      load census
%      n = length(cdate);
%      X = [ones(n,1), cdate];
%      [b,bint,r1] = regress(pop,X);
%      p1 = dwtest(r1,X)
%      plot(cdate,r1,'b-', cdate,zeros(n,1),'k:')
%
%      % ��捀��������Ǝ��ȑ��ւ͌���܂����A����͂܂� 0 �Ƃ͗L�ӂ�
%      % ��������܂�
%      X = [ones(n,1), cdate, cdate.^2];
%      [b,bint,r2] = regress(pop,X);
%      p2 = dwtest(r2,X)
%      line(cdate,r2,'color','r')
%
%   �Q�l REGRESS.


%   Copyright 1993-2008 The MathWorks, Inc. 
