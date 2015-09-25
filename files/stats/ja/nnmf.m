%NNMF  �񕉂̍s��̈��q����
%
%   [W,H] = NNMF(A,K) �́A�񕉂� N x M �̍s�� A ��񕉂̈��q W (N x K) �� 
%   H (K x M) �ɕ������܂��B���ʂ́A���m�Ȉ��������ł͂���܂��񂪁AW*H ��
%   �I���W�i���s�� A �ւ̒჉���N�ߎ��ɂȂ�܂��BW �� H �̍s��́AA �Ƌߎ� 
%   W*H �Ԃ̎c���������ϕ������Ƃ��Ē�`�����ړI�֐����ŏ�������悤
%   �I������܂��B����́A�ȉ��̎��Ɠ����ł��B
%
%          D = sqrt(norm(A-W*H,'fro')/(N*M))
%
%   ���q�����́AW �� H �ɑ΂��郉���_���ȏ����l�Ŏn�܂锽���@���g�p���܂��B
%   �ړI�֐��͂��΂��΋Ǐ��I�ŏ��l�������߁A���q�������J��Ԃ��ƁA�قȂ� 
%   W �� H �̒l��������\��������܂��B���X�A�A���S���Y���� K ����
%   �჉���N�̉��Ɏ������A����͌��ʂ��œK���łȂ����Ƃ������܂��B
%
%   [W,H,D] = NNMF(...) �́A�c���������ϕ����� D ��Ԃ��܂��B
%
%   [W,H] = NNMF(A,K,'PARAM1',val1,'PARAM2',val2,...) �́A�ȉ��̃p�����[�^��
%   ���O�ƒl�̑g�ݍ��킹�̂��������w�肵�܂��B
%
%      �p�����[�^   �l
%      'algorithm'  ���ݍŏ����A���S���Y�����g�p����ꍇ�� 'als' 
%                   (�f�t�H���g)�A��@�I�ȍX�V�A���S���Y�����g�p����
%                   �ꍇ�� 'mult' �̂����ꂩ�B
%      'w0'         W �ɑ΂��鏉���l�Ƃ��Ďg�p����� N x K �̍s��B
%      'h0'         H �ɑ΂��鏉���l�Ƃ��Ďg�p����� K x M �̍s��B
%      'replicates' w0 �� h0 ���^������ (�f�t�H���g 1) �̏ꍇ�AW �� H ��
%                   �΂���V�K�����̊J�n�l���g���čŏ��̌J��Ԃ���������
%                   ���q�����̌J��Ԃ��񐔁B����́A'mult' �A���S���Y����
%                   �ł��L���ł��B
%      'options'    STATSET �֐��ō쐬�����I�v�V�����\���́BNNMF �́A
%                   Display, TolX, TolFun, MaxIter �̃I�v�V�������g�p���܂��B
%                   �œK���ݒ�ƈقȂ�AMaxIter ��̌J��Ԃ��ɒB�����
%                   �����Ƃ��Ĉ����܂��B
%
%    ��:
%        % �t�B�b�V���[�̃A�C���X����̔񕉂̃����N 2 �̋ߎ�
%        load fisheriris
%        [w,h] = nnmf(meas,2);
%        gscatter(w(:,1),w(:,2),species);
%        hold on; biplot(max(w(:))*h','VarLabels',{'sl' 'sw' 'pl' 'pw'},'positive',true); hold off;
%        axis([0 12 0 12]);
%
%        % ��@�A���S���Y�����g�p���āA�������̌J��Ԃ��ɂ����āA2�`3 ���
%        % �J��Ԃ������s���A���̌�A���ݍŏ����A���S���Y�����g�p���āA
%        % �����̍ł��悢���ʂ��炳��ɑ����̌J��Ԃ��𑱂��܂��B
%        x = rand(100,20)*rand(20,50);
%        opt = statset('maxiter',5,'display','final');
%        [w,h] = nnmf(x,5,'rep',10,'opt',opt,'alg','mult');
%        opt = statset('maxiter',1000,'display','final');
%        [w,h] = nnmf(x,5,'w0',w,'h0',h,'opt',opt,'alg','als');
%
%    �Q�l BIPLOT, PRINCOMP, STATSET.


%   Copyright 2007-2009 The MathWorks, Inc. 
