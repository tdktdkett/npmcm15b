% SLICESAMPLE �X���C�X�T���v�����O�@
%
%   RND = SLICESAMPLE(INITIAL,NSAMPLES,'pdf',PDF) �́A�X���C�X�T���v�����O�@
%   ���g���Ė��x�֐� PDF �����^�[�Q�b�g�̕��z���� NSAMPLES �̖���וW�{��
%   �`�悵�܂��BINITIAL �́A����וW�{��̏����l���܂ލs�x�N�g���A�܂���
%   �X�J���ł��BINITIAL �́A�^�[�Q�b�g�̕��z�̗̈���ɂȂ���΂Ȃ�܂���B
%   NSAMPLES �́A���������W�{���ł��BPDF �́A@ ���g���č쐬�����֐�
%   �n���h���ł��BPDF �́A���͂Ƃ��� 1 �̈����݂̂��󂯓���A���̈����́A
%   INITIAL �Ɠ����^�C�v�ƃT�C�Y�������܂��B�^�[�Q�b�g�̖��x�֐��Ɣ��
%   ����֐����`���܂��B�ΐ����x�֐����g�p����ꍇ�A'pdf' ��  'logpdf' 
%   �ɒu�������邱�Ƃ��\�ł��B�ΐ����x�֐��́A���Ȃ炸�������K�������
%   �킯�ł͂���܂���B
%  
%   RND = SLICESAMPLE(...,'width',W) �́A�T�^�I�ȕ� W �����^�[�Q�b�g��
%   ���z�ɑ΂��ăX���C�X�T���v�����O�@���s�Ȃ��܂��BW �́A�X�J���A�܂���
%   �x�N�g���ł��B�X�J���̏ꍇ�A���ׂĂ̎����́A�����T�^�I�ȕ�������
%   ���肳��܂��B�x�N�g���̏ꍇ�A�x�N�g���̊e�v�f�́A���̎������ŁA���ӂ�
%   �^�[�Q�b�g�̕��z�̓T�^�I�ȕ��ɂȂ�܂��BW �̃f�t�H���g�l�� 10 �ł��B
% 
%   RND = SLICESAMPLE(...,'burnin',K) �́A�J�n�_�Ɛ������ꂽ����ŏȗ�
%   ���ꂽ K �Ԗڂ̓_ (���̌�œ_�͕ێ�����܂���) �̊Ԃ̒l���������
%   �W�{�𐶐����܂��BK �͔񕉂̐����ł��BK �̃f�t�H���g�l�� 0 �ł��B
%
%   RND = SLICESAMPLE(...,'thin',M) �́A�������ꂽ����ŏȗ����ꂽ M �l��
%   �O�� M-1 ��������וW�{�𐶐����܂��BM �͐��̐����ł��BM �̃f�t�H���g
%   �l�� 1 �ł��B
%
%   [RND, NEVAL] = SLICESAMPLE(...) �́A�X���C�X�T���v�����O�@�Ŕ�������
%   �֐��]���̕��ω񐔂Ƃ��� NEVAL ���Ԃ��܂��B
%   
%   ��: 
%    ���[�U��`�� pdf �������z���疳��וW�{�𐶐����܂��B
%      f = @(x) exp( -x.^2/2).* ...       % ����̓}���`���[�_����
%               (1+(sin(3*x)).^2).* ...   % ���z�ɑ΂��� pdf ����
%               (1+(cos(5*x).^2));        % ����֐��ł��B
%      x = slicesample(1,2000,'pdf',f,'thin',5,'burnin',1000);  
%      hist(x,50)
%      set(get(gca,'child'),'facecolor',[0.6 .6 .6]);
%      hold on 
%      xd = get(gca,'XLim');              % �r���� x-�f�[�^���擾
%      binwidth = (xd(2)-xd(1));          % �e�r���̕������o�B
%      y = 5.6398*binwidth* ...           % �q�X�g�O�������d�˂ăv���b�g
%          f(linspace(xd(1),xd(2),1000)); % ����̂ɕK�v�Ȑ��K��
%      plot(linspace(xd(1),xd(2),1000),y,'r')
%   
%   �Q�l: MHSAMPLE, RAND, HIST, PLOT.

 
% Copyright 2005-2007 The MathWorks, Inc.
