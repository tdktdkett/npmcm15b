% MDSCALE   ��v�ʓI�ƌv�ʓI�������ړx�@
%
%   Y = MDSCALE(D,P) �́AN�~N �̗ގ��s�� D �ɂ��Ĕ�v�ʓI�������ړx�@��
%   �s���AP ���� (��) �� N �_ (�s) �̍\�������� Y ���o�͂��܂��BY �̓_�Ԃ�
%   ���[�N���b�h�����́AD �̑Ή������ގ��̒P���ϊ����ߎ����܂��B�f�t�H���g
%   �ł́AMDSCALE �́A�N���X�J���̐��K��� STRESS1 ��p���܂��B
%
%   D �́AN�~N �̃t���s��A���邢�� PDIST �ɂ��o�͂̂悤�ȁA��O�p�`�s��
%   �Ŏw�肷�邱�Ƃ��ł��܂��B��ގ��̃t���s��́A�����Ώ̍s��ŁA�Ίp��
%   0 �ł���ȊO�ł͔񕉂̗v�f�������Ȃ���΂Ȃ�܂���B��O�p�s��̔�ގ�
%   �s��́A�����̔񕉂̍��ڂłȂ���΂Ȃ�܂���BMDSCALE �́AD ���� NaN ��
%   �����l�Ƃ��Ĉ����A�����̗v�f�𖳎����܂��BInf �͗��p�ł��܂���B
%
%   D �́A�Ίp�� 1�A����ȊO�̂��ׂĂ̗v�f�� 1 �����������ގ��t���s��
%   �Ƃ��Ďw�肷�邱�Ƃ��ł��܂��BMDSCALE �́AY �ɏo�͂����_�ԋ������A
%   sqrt(1-D) �ɋߎ������悤�ɁA�ގ��s����ގ��s��ɕϊ����܂��B����
%   �ϊ����g�p����ɂ́AMDSCALE �̌Ăяo���̑O�ɗގ��s���ϊ����܂��B
%
%   [Y,STRESS] = MDSCALE(D,P) �́A�ŏ����X�g���X�A�܂� Y �ŕ]�������
%   �X�g���X���o�͂��܂��B
%
%   [Y,STRESS,DISPARITIES] = MDSCALE(D,P) �́A�i���A���Ȃ킿��ގ��� 
%   D �̒P���ϊ����o�͂��܂��B
%
%   [...] = MDSCALE(..., 'PARAM1',val1, 'PARAM2',val2, ...) �́AMDSCALE ��
%   �ڍׂ𐧌䂷��I�v�V�����̃p�����[�^���ƒl�̑g���w�肷�邱�Ƃ��ł��܂��B
%   �p�����[�^�͈ȉ��̒ʂ�ł��B
%
%   'Criterion' - �ŏ����̂��߂̓K������B����́AMSDCALE �����s����
%   ��v�ʓI�A���邢�͌v�ʓI�Ȏړx�̃^�C�v�����肵�܂��B��v�ʓI�ړx�@��
%   �I�����́A�ȉ��̒ʂ�ł�
%
%
%           'stress'  - STRESS1 �Ƃ��Ă��m����_�ԋ����̓��a�ɂ�萳�K��
%                       �����X�g���X�B����̓f�t�H���g�ł��B
%           'sstress' - �_�ԋ����� 4 ��a�ɂ�萳�K���������X�g���X
%
%       �v�ʓI�ړx�@�̑I�����͈ȉ��̒ʂ�ł��B
%
%           'metricstress'  - ��ދC�̓��a�ɂ�萳�K�������X�g���X�B
%           'metricsstress' - ��ގ��� 4 ��a�ɂ�萳�K���������X�g���X�B
%           'sammon'        - Sammon �̔���`�}�b�s���O��B
%                             ��Ίp�̗ގ��́A���̊�ɂ�茵���ɐ���
%                             �Ȃ���΂Ȃ�܂���B
%           'strain'        - �ÓT�I MDS �ŗp��������̂Ɠ����
%
%   'Weights' - �񕉂̔�ގ��d�݂��܂ށAD�Ɠ����T�C�Y�̍s��܂��̓x�N�g���B
%       �������g���āA�X�g���X�̌v�Z����эŏ����ɂ�����D�̑Ή�����v�f��
%	 ��^�ɏd�݂�t���邱�Ƃ��ł��܂��B�[���d�݂ɑΉ�����D�̗v�f�́A������
%	 ��������܂��B
%
%   'Start' - Y �ɑ΂���_�̏����ݒ��I�����邽�߂ɗp�����@�B�I�����́A�ȉ�
%             �̒ʂ�ł��B
%
%       'cmdscale' - �ÓT�I MDS ���𗘗p���܂��B����́A�f�t�H���g�ł��B
%                    'cmdscale' �́A0 �̏d�݂�����ꍇ�͖����ł��B
%       'random'   - �񑊊֍��W���g���ēK�؂ɃX�P�[�����O���ꂽ P ������
%                    ���K���z����ʒu�𖳍�ׂɑI�����܂��B
%       matrix     - �����ʒu�� N�~P �s��B���̏ꍇ�AP �ɂ���[] �œn��
%                    ���Ƃ��\�ŁAMDSCALE �́A�s��� 2 �Ԗڂ̎������� 
%                    P �𐄑����܂��B�z��� 3 �Ԗڂ̎������� 'Replicates' 
%                    �ɑ΂���l���Î����āA3 �����z����^���邱�Ƃ��ł��܂��B
%                    
%   'Replicates' - �V�K�̏����ݒ�ɂ��X�P�[�����O�̔����񐔁B�f�t�H���g��
%                  1 �ł��B
%
%   'Options' - STATSET �ɂ���č쐬�����ߎ���̍ŏ����ɗp���锽��
%               �A���S���Y���ɑ΂���I�v�V�����BSTATSET �p�����[�^��
%               �I�����́A�ȉ��̒ʂ�ł��B
%
%       'Display'     - �\���o�̓��x���B�I�����́A'off' (�f�t�H���g), 'iter', 
%                       'final' �ł��B
%       'MaxIter'     - �\�ȍő唽���񐔁B�f�t�H���g�� 200 �ł��B
%       'TolFun'      - �X�g���X�̊����ь��z�ɑ΂��鋖�e�I���l�B
%                       �f�t�H���g�� 1e-4 �ł��B
%       'TolX'        - �ݒ�ʒu�̃X�e�b�v�T�C�Y�ɑ΂��鋖�e�I���l�B
%                       �f�t�H���g�� 1e-4 �ł��B
%
%   ��:
%
%      % cereal �f�[�^��ǂݍ��݁A��ގ��s����쐬���܂��B
%      load cereal.mat
%      X = [Calories Protein Fat Sodium Fiber Carbo Sugars Shelf Potass Vitamins];
%      X = X(Mfg == 'K',:); % take a subset from a single manufacturer
%      dissimilarities = pdist(X);
%
%      % ��v�ʓI�ړx�@���g���āA�f�[�^�� 2D �ōč쐬���A���ʂ� Shepard
%      % �v���b�g���쐬���܂��B
%      [Y,stress,disparities] = mdscale(dissimilarities,2);
%      distances = pdist(Y);
%      [dum,ord] = sortrows([disparities(:) dissimilarities(:)]);
%      plot(dissimilarities,distances,'bo', ...
%           dissimilarities(ord),disparities(ord),'r.-');
%      xlabel('Dissimilarities'); ylabel('Distances/Disparities')
%      legend({'Distances' 'Disparities'}, 'Location','NorthWest');
%
%      % ������ގ��s��ɂ��Čv�ʓI�ړx�@���s���܂��B
%      [Y,stress] = mdscale(dissimilarities,2,'criterion','metricsstress');
%      distances = pdist(Y);
%      plot(dissimilarities,distances,'bo', ...
%           [0 max(dissimilarities)],[0 max(dissimilarities)],'k:');
%      xlabel('Dissimilarities'); ylabel('Distances')
%
% �Q�l  CMDSCALE, PDIST, STATSET.


%   Copyright 1993-2011 The MathWorks, Inc.
