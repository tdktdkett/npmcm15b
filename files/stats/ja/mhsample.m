% MHSAMPLE  ���g���|���X-�w�C�X�e�B���O�X�A���S���Y����p�����}���R�t�A���̐��� 
%
%   SMPL = MHSAMPLE(START,NSAMPLES,'pdf',PDF,'proppdf',PROPPDF,'proprnd',PROPRND) 
%   �́A���g���|���X-�w�C�X�e�B���O�X�A���S���Y�����g���āA�^�[�Q�b�g��
%   ��핪�z���� NSAMPLES �_�̖���וW�{��`�悵�܂��BSTART �́A�}���R�t�A��
%   �̊J�n�l���܂ލs�x�N�g���ł��BNSAMPLES �́A�������邽�߂̕W�{�����w�肵�܂��B
%   PDF, PROPPDF, PROPRND �́A@ ���g���č쐬�����֐��n���h���ł��BPROPPDF �́A
%   ��ĕ��z�̖��x���`���APROPRND �͒�ĕ��z�ɑ΂��闐����������`���܂��B
%   PDF �� PROPRND �́A���͂Ƃ��� 1 �̈������󂯓���A���̈����́ASTART ��
%   �����^�C�v�ƃT�C�Y�������܂��BPROPPDF �́A���͂Ƃ��� 2 �̈������󂯓���A
%   �ǂ���̈������ASTART �Ɠ����^�C�v�ƃT�C�Y�������܂��BSMPL �́A�W�{���܂�
%   ��x�N�g���A�܂��͍s��ł��B
%   �ΐ����x�֐����I�΂ꂽ�ꍇ�A'pdf' �� 'proppdf' �́A'logpdf' �� 'logproppdf' 
%   �ɒu�������邱�Ƃ��\�ł��B���g���|���X-�w�C�X�e�B���O�X�A���S���Y����
%   �g���閧�x�֐��́A�K���������K�������킯�ł͂���܂���B
%   proppdf �܂��� logproppdf �� q(x,y) �� q(x,y) = q(y,x) �𖞂����ꍇ�A���Ȃ킿�A
%   ��ĕ��z���Ώ̂̏ꍇ�AMHSAMPLE �́A�����_���E�H�[�N�E���g���|���X-�w�C�X�e�B���O�X
%   �T���v�����O�����s���܂��Bproppdf �܂��� logproppdf �� q(x,y) �́A
%   q(x,y) = q(x) �𖞂����ꍇ�A���Ȃ킿�A��ĕ��z�����݂̒l�Ɉˑ����Ȃ��ꍇ�A
%   MHSAMPLE �́A���g���|���X-�w�C�X�e�B���O�X�T���v�����O�����s���܂��B
%
%   ��ĕ��z q(x,y) �́Ay �����݂̓_�ł���ꍇ�A���̓_�Ƃ��đI������ x ��
%   �΂��Ċm�����x��^���܂��B�����ł́A���X q(x|y) �Ƃ��ċL�q����܂��B
%
%   SMPL = MHSAMPLE(...,'symmetric',SYM) �́A���g���|���X-�w�C�X�e�B���O�X
%   �A���S���Y�����g���āA�^�[�Q�b�g�̒�핪�z PDF ���� NSAMPLES �_�̖���וW�{��
%   ���o���܂��BSYM �́A��ĕ��z���Ώ̂ł��邩�ǂ����������_���l�ł��B
%   �f�t�H���g�l�� false �ŁA��Ώ̂Ȓ�ĕ��z�ɑΉ����܂��BSYM �� true�A
%   ���Ȃ킿�A��ĕ��z���Ώ̂̏ꍇ�APROPPDF �� LOGPROPDF �́A�I�v�V�����ł��B
%
%   SMPL = MHSAMPLE(...,'burnin',K) �́A�J�n�_�Əȗ����ꂽ K �Ԗڂ̓_�̊Ԃ�
%   �l�����}���R�t�A���𐶐����܂����A���̌�œ_��ێ����܂��B
%   K �́A�񕉂̐����ł��BK �̃f�t�H���g�l�� 0 �ł��B
%
%   SMPL = MHSAMPLE(...,'thin',M) �́A������������ŏȗ����ꂽ M �l�� M-1 �O
%   �̃}���R�t�A���𐶐����܂��BM �͐��̐����ł��B�f�t�H���g�l�� 1 �ł��B
%
%   SMPL = MHSAMPLE(...,'nchain',N) �́A���g���|���X-�w�C�X�e�B���O�X
%   �A���S���Y�����g���� N �̃}���R�t�A���𐶐����܂��BN �͐��̐����ł��B
%   N �̃f�t�H���g�l�� 1 �ł��BSMPL �͕W�{���܂ލs��ł��B�Ō�̎����́A
%   �Ɨ������A���̃C���f�b�N�X���܂݂܂��B
%
%   [SMPL,ACCEPT] = MHSAMPLE(...) �́A��ĕ��z�̎�e��Ƃ��� ACCEPT ���Ԃ��܂��B
%   ACCEPT �́A�P��A�����������ꂽ�ꍇ�̓X�J���ŁA�����A�����������ꂽ�ꍇ��
%   �x�N�g���ł��B
%
%  ��:
%    �Ɨ��ȃ��g���|���X-�w�C�X�e���O�X�T���v�����O���g���āA�K���}���z�� 
%    2 �����[�����g�𐄒肵�܂��B
%        alpha = 2.43;
%        beta = 1;
%        pdf = @(x) gampdf(x,alpha,beta);     %�^�[�Q�b�g�̕��z
%        proppdf = @(x,y) gampdf ...          % ��� pdf
%                   (x,floor(alpha),floor(alpha)/alpha);
%        proprnd = @(x) sum ...               % ��ė����T���v��
%                   (exprnd(floor(alpha)/alpha,floor(alpha),1));
%        nsamples = 5000;
%        smpl = mhsample(1,nsamples,'pdf',pdf,'proprnd', ...
%                   proprnd,'proppdf',proppdf);
%        xxhat = cumsum(smpl.^2)./(1:nsamples)';
%        plot(1:nsamples,xxhat)
%
%    �����_���E�H�[�N�E���g���|���X-�w�C�X�e�B���O�X�T���v�����O�@���g���āA
%    N(0,1) ���疳��וW�{�𐶐����܂��B
%        delta = .5;
%        pdf = @(x) normpdf(x);                     % �^�[�Q�b�g�̕��z
%        proppdf = @(x,y) unifpdf(y-x,-delta,delta);% ��� pdf
%        proprnd = @(x) x + rand*2*delta - delta;   % ��ė����T���v��
%        nsamples = 15000;
%        x = mhsample(1,nsamples,'pdf',pdf,'proprnd',proprnd,'symmetric',1);
%        histfit(x,50)
%
%  �Q�l: SLICESAMPLE, RAND.


% Copyright 2005-2008 The MathWorks, Inc.
