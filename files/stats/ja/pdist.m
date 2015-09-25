%PDIST  �ϑ��Ԃ̋���
%
%   Y = PDIST(X) �́AN�~P �̃f�[�^�s�� X ���̊e�ϑ��̑g�ݍ��킹�Ԃ̃��[�N���b�h
%   �������܂ރx�N�g�� Y ��Ԃ��܂��BX �̍s�͊ϑ��ɑΉ����A��͕ϐ��ɑΉ����܂��B
%   Y �� 1�~(N*(N-1)/2) �̃x�N�g���ŁAX ���̊ϑ��� N*(N-1)/2 �̑g�ɑΉ����܂��B
%
%   Y = PDIST(X, DISTANCE) �́ADISTANCE ��p���� Y ���v�Z���܂��B
%   �I�����́A�ȉ��̂Ƃ���ł��B
%
%       'euclidean'   - ���[�N���b�h����
%       'seuclidean'  - �e���W�̓��a�����W�̕W�{���U�ɂ��d�ݕt����
%                       �t�ƂȂ�W�������[�N���b�h����
%       'cityblock'   - �s�X�n����
%       'mahalanobis' - �}�n���m�r�X����
%       'minkowski'   - �w�� 2 �Ƃ���~���R�t�X�L�[����
%       'cosine'      - 1 ���� (�x�N�g���Ƃ��Ĉ�����) �ϑ��Ԃ̊p�x��
%                       �܂ޗ]�����������l
%       'correlation' - 1 ���� (�l�̗�Ƃ��Ĉ�����) �ϑ��Ԃ̕W�{�̐��`
%                       ���ւ��������l
%       'spearman'    - 1 ���� (�l�̗�Ƃ��Ĉ�����) �ϑ��Ԃ̕W�{��
%                       �X�s�A�}���̏��ʑ��ւ��������l
%       'hamming'     - �قȂ���W�̃p�[�Z���e�[�W�ƂȂ�n�~���O����
%       'jaccard'     - 1 ����قȂ���̍��W�̃p�[�Z���e�[�W�ƂȂ� 
%                       Jaccard �W�����������l
%       'chebychev'   - �`�F�r�V�F�t���� (�ő�̍��W�̍���)
%       function      - @ ��p���Ďw�肳�ꂽ�����֐��B���Ƃ��� @DISTFUN
%
%   �����֐��́A�ȉ��̌`���łȂ���΂Ȃ�܂���B
%
%         function D = DISTFUN(XI, XJ, P1, P2, ...),
%
%   �����Ƃ��āAX �̒P��̍s���܂� 1�~P �̃x�N�g�� XI �� X �̕����̍s���܂� 
%   M�~P �̍s�� XJ�A0�A�܂��͒ǉ��̖��ŗL�̈��� P1, P2, ... ��^���A
%   K �Ԗڂ̗v�f���ϑ� XI �� XJ(K,:) �Ԃ̋����ƂȂ� M�~1 �̋����̃x�N�g�� 
%   D ��Ԃ��܂��B
%
%   Y = PDIST(X, DISTFUN, P1, P2, ...) �́A�֐� DISTFUN �ɒ��ڈ��� 
%   P1, P2, ... ��n���܂��B
%
%   Y = PDIST(X, 'minkowski', P) �́A���̃X�J���̎w�� P ��p����
%   �~���R�t�X�L�[�������v�Z���܂��B
%
%   �o�� Y �́A�Ⴆ�΁A��̏��ԂŔ�X�p�[�X�� N�~N �̋����s��̍����O�p��
%   �悤�ɁA((2,1),(3,1),..., (N,1), (3,2),...(N,2),.....(N,N-1)) �̏���
%   �z�u����܂��B�ϑ� (I < J) �� I �Ԗڂ� J �Ԗڂ̊Ԃ̋������擾����ɂ́A
%   Y((I-1)*(N-I/2)+J-I) �̌������g�����A�܂��́A(I,J) �̓��͂��ϑ� I ��
%   �ϑ� J �Ԃ̋����Ɠ������Ȃ� N�~N �̐����Ώ̍s���Ԃ��⏕�֐� 
%   Z = SQUAREFORM(Y) ���g�����̂ǂ��炩�ł��B
%
%   ��:
%
%      X = randn(100, 5);                 % �������̃����_���_
%      Y = pdist(X, 'euclidean');         % �d�ݕt������Ȃ�����
%      Wgts = [.1 .3 .3 .2 .1];           % ���W�̏d�ݕt��
%      Ywgt = pdist(X, @weucldist, Wgts); % �d�ݕt�����ꂽ����
%
%      function d = weucldist(XI, XJ, W)  % �d�ݕt�����ꂽ���[�N���b�h����
%      d = sqrt((repmat(XI,size(XJ,1),1)-XJ).^2 * W');
%
%   �Q�l SQUAREFORM, LINKAGE, SILHOUETTE.


%   Copyright 1993-2008 The MathWorks, Inc.
