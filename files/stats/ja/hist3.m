%HIST3  2 �ϐ��f�[�^�� 3 �����q�X�g�O����
%
%   HIST3(X) �́AM �s 2 ��̍s�� X �̗v�f�𓙊Ԋu�̊i�[�A10 �s 10 ��̃O���b�h
%   �ɕ����A�q�X�g�O�������v���b�g���܂��BX �̊e��́A�r���̃O���b�h�� 1 ����
%   �ɑ������܂��B
%
%   HIST3(X,NBINS) �́ANBINS(1) �s NBINS(2) ��̃O���b�h�̃r�����g�p����
%   �q�X�g�O�������v���b�g���܂��BHIST3(X,'Nbins',NBINS) �́AHIST3(X,NBINS) ��
%   �����ł��B
%
%   HIST3(X,CTRS) �́A1 �Ԗڂ̎����ɂ��Ē����� CTRS{1}�A2 �Ԗڂ̎�����
%   ���Ē����� CTRS{2} �ł���悤�ȃr���� 2 �����O���b�h���g�p���܂��B
%   �����ŁACTRS �́A�P���񌸏��̒l�������l�x�N�g���� 2 �v�f�Z���z��ł��B
%   HIST3 �́A�O���b�h�͈̔͊O�ƂȂ� X �̍s���O���b�h�̊O�[�ɗאڂ���r����
%   ���蓖�āANaN ���܂� X �̍s�𖳎����܂��BHIST3(X,'Ctrs',CTRS) �́A
%   HIST3(X,CTRS) �Ɠ����ł��B
%
%   HIST3(X,'Edges',EDGES)�́A1 �Ԗڂ̎����ɂ��Ē[�� EDGES{1}�A2 �Ԗڂ�
%   �����ɂ��Ē[�� EDGES{2} �̃r���� 2 �����O���b�h���g�p���܂��B�����ŁA
%   EDGES �́A�P���񌸏��̒l�������l�x�N�g���� 2 �v�f�̃Z���z��ł��B
%   (i,j) �Ԗڂ̃r���́A�ȉ��̏ꍇ�A�l X(k,:) ���܂݂܂��B
%
%      EDGES{1}(i) <= X(k,1) < EDGES{1}(i+1) ����
%      EDGES{2}(j) <= X(k,2) < EDGES{2}(j+1)
%
%   EDGES{1}(end) �܂��� EDGES{2}(end) �́A�O���b�h�̏�[�ɂƂȂ� X �̍s�ŁA
%   (I,j) �Ԗڂ܂��� (i,J) �Ԗڂ̃r���ɃJ�E���g����܂��B�����ŁAI �� J �́A
%   EDGES{1} �� EDGES{2} �̒����ł��BHIST3 �́A�O���b�h�͈̔͂̊O���ɂȂ� 
%   X �̍s���J�E���g���܂���B���ׂĂ� NaN �łȂ��l���܂ނ��߂ɂ́AEDGES �� 
%   -Inf �� Inf ���g�p���܂��B
%
%   N = HIST3(X,...) �́A�O���b�h�̊e�r���ɓ��� X �̗v�f�����܂ލs���Ԃ��A
%   �q�X�g�O�������v���b�g���܂���B
%
%   [N,C] = HIST3(X,...) �́A���l�x�N�g���� 1 �s 2 ��̃Z���z��ɁA�r����
%   �����̈ʒu��Ԃ��A�q�X�g�O�������v���b�g���܂���B
%
%   HIST3(AX,X,...) �́AGCA �ł͂Ȃ� AX �Ƀv���b�g���܂��B
%
%   HIST3(..., 'PARAM1',val1, 'PARAM2',val2, ...) �ɂ��A�v���b�g�������
%   ����悤�ɃO���t�B�b�N�X�p�����[�^�̖��O�ƒl�̑g���w�肷�邱�Ƃ��ł��܂��B
%
%   ��:
%
%      % �����ԃf�[�^���쐬���A7 �s7 ��̃O���b�h�̃r���Ńq�X�g�O�������쐬���܂��B
%      load carbig
%      X = [MPG,Weight];
%      hist3(X,[7 7]);
%      xlabel('MPG'); ylabel('Weight');
%
%      % �������̃o�[�����q�X�g�O�������쐬���܂��B
%      hist3(X,[7 7],'FaceAlpha',.65);
%      xlabel('MPG'); ylabel('Weight');
%      set(gcf,'renderer','opengl');
%
%      % �����ɏ]���ĐF�t�����ꂽ�o�[�����q�X�g�O�������쐬���܂��B
%      hist3(X,[7 7]);
%      xlabel('MPG'); ylabel('Weight');
%      set(gcf,'renderer','opengl');
%      set(get(gca,'child'),'FaceColor','interp','CDataMode','auto');
%
%      % �e�����ňقȂ�r���̒������w�肵�܂��B% �J�E���g�������܂����A
%      % �v���b�g���܂���B
%      cnt = hist3(X, {0:10:50 2000:500:5000});
%
%   �Q�l ACCUMARRAY, BAR, BAR3, HIST, HISTC.


%   Copyright 1993-2009 The MathWorks, Inc.
