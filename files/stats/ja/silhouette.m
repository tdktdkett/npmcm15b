%SILHOUETTE  �N���X�^�f�[�^�̗֊s���v���b�g
%
%   SILHOUETTE(X, CLUST) CLUST �Œ�`���ꂽ�N���X�^���ƂɁAN�~P �f�[�^�s�� 
%   X �ɑ΂���N���X�^�̗֊s���v���b�g���܂��BX �̍s�͓_�ɑΉ����A��͍��W��
%   �Ή����܂��BCLUST �́A�J�e�S���ϐ��A���l�x�N�g���A�����s��A�܂��́A
%   �����N���X�^���̓_�ɑ΂��鋤�ʂ̒l����������̃Z���z��ł��B
%   SILHOUETTE �́A�����l�ɑ΂��Ă� CLUST ���� NaN ���󕶎����p���A
%   X �̑Ή�����s�͖�������܂��B�f�t�H���g�ł́ASILHOUETTE �� X �̓_�Ԃ�
%   ���[�N���b�h�����̓����g�p���܂��B
%
%   S = SILHOUETTE(X, CLUST) �́A�N���X�^�̗֊s��\�����܂��񂪁AN�~1 ��
%   �x�N�g�� S �ɗ֊s�l��Ԃ��܂��B
%
%   [S,H] = SILHOUETTE(X, CLUST) �́A�֊s���v���b�g���A�֊s�l�� N�~1 ��
%   �x�N�g�� S �ɁAFigure �̃n���h���� H �ɕԂ��܂��B
%
%   [...] = SILHOUETTE(X, CLUST, DISTANCE) �́ADISTANCE �Ŏw�肳�ꂽ�_�Ԃ�
%   �����̊���g���ė֊s���v���b�g���܂��BDISTANCE �̑I�����͈ȉ��̂Ƃ���ł��B
%
%       'Euclidean'    - ���[�N���b�h����
%      {'sqEuclidean'} - ���[�N���b�h�����̓��
%       'cityblock'    - ��΍� (�ʖ� L1) �̘a
%       'cosine'       - 1 ���� (�x�N�g���Ƃ��Ĉ�����) �_�̊Ԃ̊p�x��
%                        �]�����������l
%       'correlation'  - 1 ���� (�l�̌n��Ƃ��Ĉ���ꂽ) �_�̊Ԃ̕W�{���ւ�
%                        �������l
%       'Hamming'      - �قȂ���W�̃p�[�Z���e�[�W
%       'Jaccard'      - �قȂ��[���̍��W�̃p�[�Z���e�[�W
%       vector         - PDIST �ō쐬���ꂽ�x�N�g���`���ł̐��l�I�ȋ����s�� 
%                        (X �́A���̏ꍇ�g�p���ꂸ�A���S�� [] ��ݒ肷��
%                        ���Ƃ��\�ł�)
%       function      - @ ��p���Ďw�肳�ꂽ�����֐��B���Ƃ��� @DISTFUN
%
%   �����֐��́A�ȉ��̌`���łȂ���΂Ȃ�܂���B
%
%         function D = DISTFUN(X0, X, P1, P2, ...),
%
%   �́A�����Ƃ��� 1 �� 1�~P �̍s��̓_ X0 �Ɠ_ X �� N�~P �̍s���^���A
%   ����ɖ��ŗL�̈��� P1,P2, ..., ��ǉ����āAX �̊e�_ (��) �� X0 �̊Ԃ�
%   ������ N�~1 �̃x�N�g�� D ��Ԃ��܂��B
%
%   [...] = SILHOUETTE(X, CLUST, DISTFUN, P1, P2, ...) �́A�֐� DISTFUN �ɁA
%   ���ڈ��� P1, P2, ... ��n���܂��B
%
%   �e�_�ɑ΂���֊s�l�́A���̓_�����̃N���X�^���̓_�ɔ�ׂāA���g�̃N���X�^��
%   �̓_�Ƃǂꂾ���������Ă��邩�Ƃ�����ŁA-1 ���� 1 �܂ł̒l���Ƃ�܂��B
%   ����͈ȉ��̂悤�ɒ�`����܂��B
%
%      S(i) = (min(AVGD_BETWEEN(i,k)) - AVGD_WITHIN(i))
%                              / max(AVGD_WITHIN(i), min(AVGD_BETWEEN(i,k)))
%
%   �����ŁAAVGD_WITHIN(i) �́Ai �Ԗڂ̓_���玩�g�̃N���X�^���̑��̓_�ւ�
%   ���ϋ����ŁAAVGD_BETWEEN(i,k) �́Ai �Ԗڂ̓_���瑼�̃N���X�^ k �̓_�ւ�
%   ���ϋ����ł��B
%
%   ��:
%
%      X = [randn(10,2)+ones(10,2); randn(10,2)-ones(10,2)];
%      cidx = kmeans(X, 2, 'distance', 'sqeuclid');
%      s = silhouette(X, cidx, 'sqeuclid');
%
%   �Q�l KMEANS, LINKAGE, DENDROGRAM, PDIST.


%   Copyright 1993-2008 The MathWorks, Inc. 
