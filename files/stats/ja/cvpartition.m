%CVPARTITION  �f�[�^�ɑ΂�����݌���̋敪���쐬
%
%   CVPARTITION �N���X�̃I�u�W�F�N�g�́A�w�肵���T�C�Y�̃f�[�^�̏W�����
%   �����_���ȋ敪���`���܂��B���̋敪�́A���݌�����g���ē��v���f����
%   ���؂��邽�߂ɁA�e�X�g�ƌP���f�[�^�̒�`�Ɏg�p����܂��B
%
%   C = CVPARTITION(N,'Kfold',K) �́AN �_�̊ϑ��_�� K-�������݌����
%   �΂��郉���_���ȋ敪���`���� CVPARTITION �I�u�W�F�N�g C ���쐬���܂��B
%   �敪�� N �_�̊ϑ��_���A�����悻�����T�C�Y�̖���ׂɑI�����ꂽ K ��
%   �����Ȃ����W�{ (�t�H�[���h) �ɕ������܂��BK �̃f�t�H���g�l�� 10 �ł��B
%
%   C = CVPARTITION(GROUP,'Kfold',K) �́A�K�w�����ꂽ K-�������݌���
%   �ɑ΂��郉���_���ȋ敪���`���� CVPARTITION �I�u�W�F�N�g C ���쐬���܂��B
%   GROUP �́A�e�ϑ��ɑ΂���N���X���������x�N�g���ł��BGROUP �́A�J�e�S��
%   �ϐ��A���l�x�N�g���A�����z��A�܂��́A������̃Z���z��ɂȂ�܂��B���ꂼ���
%   ���W�{�́AGROUP ���ŕ��W�{�Ƃ����悻�������T�C�Y�ł����悻�����N���X�̊�����
%   �����Ă��܂��BCVPARTITION �́AGROUP ���� NaN �܂��͋�̕�����������l�Ƃ���
%   �����܂��B
%
%   C = CVPARTITION(N,'Holdout',P) �́AN �_�̊ϑ��_�̃z�[���h�A�E�g�̌����
%   �΂��郉���_���ȋ敪���`���� CVPARTITION �I�u�W�F�N�g C ���쐬���܂��B
%   ���̋敪�́AN �̊ϑ��l���P���f�[�^�ƃe�X�g (�z�[���h�A�E�g) 
%   �Z�b�g�ɕ������܂��BP �̓X�J���łȂ���΂Ȃ�܂���B0<P<1 �̏ꍇ�A
%   CVPARTITION �̓e�X�g�f�[�^�ɑ΂��ċߎ��I�� P*N �̊ϑ��l�𖳍�ׂɑI�����܂��B
%   P �������̏ꍇ�A�e�X�g�f�[�^�ɑ΂��� P �̊ϑ��l�𖳍�ׂɑI�����܂��B
%   P �̃f�t�H���g�l�� 1/10 �ł��B
%
%   C = CVPARTITION(GROUP,'Holdout',P) �́AGROUP ���̃N���X�����g���āA
%   �ϑ����K�w�����ČP���f�[�^�ƃe�X�g�f�[�^�Ƀ����_���ɋ敪���܂��B
%   ���Ȃ킿�A�P���ƃe�X�g�f�[�^�̂ǂ���� GROUP ���ł����悻����
%   �N���X�̊����������܂��B
%
%   C = CVPARTITION(N,'Leaveout') �́AN �_�̊ϑ��_�� Leave-one-out �@��
%   ���݌���ɑ΂��郉���_���ȋ敪���`����I�u�W�F�N�g C ���쐬���܂��B
%   Leave-one-out �@�́AK-�����̓��ʂȃP�[�X�ł��B���̏ꍇ�A��������
%   �ϑ��� N �Ɠ������Ȃ�܂��B
%
%   C = CVPARTITION(N,'Resubstitution') �́A�f�[�^���敪���Ȃ� CVPARTITION 
%   �I�u�W�F�N�g C ���쐬���܂��B�P���f�[�^�ƃe�X�g�f�[�^�̂ǂ�����I���W�i���� 
%   N �_�̂��ׂĂ̊ϑ������܂݂܂��B
%
%   C �͈ȉ��̃v���p�e�B�������܂��B
%
%      Type         ����̋敪�^�C�v�B'kfold', 'holdout', 'leaveout', 
%                   'resubstitution' �̂����ꂩ�ł��B
%      N            �ϑ��� (GROUP ���^����ꂽ�ꍇ�A�������� GROUP �̒l��
%                   ���ϑ��l���܂�)�B
%      NumTestSets  �e�X�g�f�[�^�̐��B�l�́AK-������ Leave-one-out �@��
%                   �������ł��B�z�[���h�A�E�g�ƍĒu���̏ꍇ�� 1 �ł��B
%      TrainSize    ���ꂼ��̌P���f�[�^�̃T�C�Y�BK-������ Leave-one-out �@
%                   �̃x�N�g���ł��B�z�[���h�A�E�g�ƍĒu���̏ꍇ�̓X�J���ł��B
%      TestSize     ���ꂼ��̃e�X�g�f�[�^�̃T�C�Y�BK-�����ƈ�_���O��
%                   �x�N�g���A���邢�́A�z�[���h�A�E�g�ƍĒu���̏ꍇ�̓X�J���ł��B
%
%   ��: �A�C���X�f�[�^�� CLASSIFY �֐��ɑ΂���딻�ʂ̌덷���v�Z���邽�߂� 
%       10-�����K�w�����ꂽ���݌�����g�p���܂��B
%
%     load('fisheriris');
%     CVO = cvpartition(species,'k',10);
%     err = zeros(CVO.NumTestSets,1);
%     for i = 1:CVO.NumTestSets
%         trIdx = CVO.training(i);
%         teIdx = CVO.test(i);
%         ytest = classify(meas(teIdx,:),meas(trIdx,:),species(trIdx,:));
%         err(i) = sum(~strcmp(ytest,species(teIdx)));
%     end
%     cvErr = sum(err)/sum(CVO.TestSize);
%
%   �Q�l CVPARTITION/TEST, CVPARTITION/TRAINING, CVPARTITION/REPARTITION, 
%        CROSSVAL.


%   Copyright 2007-2008 The MathWorks, Inc.
