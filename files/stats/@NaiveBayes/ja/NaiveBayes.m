%NAIVEBAYES  �P���x�C�Y���ފ�
%
%   NaiveBayes �I�u�W�F�N�g�́A�P���x�C�Y���ފ���`���܂��B�P���ȃx�C�Y
%   ���ފ�́A�O���[�v�l�ɗ^����ꂽ�����������t���œƗ��ł���Ƃ������肵�āA
%   �V�K�̊ϑ����ł��L�]�ȃO���[�v�Ɋ��蓖�Ă܂��B
%
%   NaiveBayes ���ފ�́A�R���X�g���N�^�̌Ăяo���ł͍쐬�ł��܂���B
%   NAIVEBAYES.FIT ���g���āA�I�u�W�F�N�g���P���f�[�^�ɋߎ����邱�Ƃ� 
%   NaiveBayes ���ފ���쐬���܂��B
%
%   NaiveBayes �v���p�e�B:
%       NGroups     - �O���[�v��
%       NDims       - ������
%       GNames      - �O���[�v��
%       GLevels     - �O���[�v���x��
%       GIsNonEmpty - ��łȂ��O���[�v�̃t���O
%       Params      - �p�����[�^����
%       GPrior      - �O�̃O���[�v
%       Dist        - ���z��
%
%   NaiveBayes ���\�b�h:
%       fit (static) - �P���x�C�Y���ފ���P���f�[�^�ɋߎ�
%       predict      - �e�X�g�f�[�^�ɑ΂��ė\�����ꂽ�N���X�̃��x��
%       posterior    - �e�X�g�f�[�^�ɑ΂���e�O���[�v�̎���m��
%
%   ��:
%      % �P���x�C�Y���ފ���g���ăN���X�̃��x����\�����܂�
%      load fisheriris
%      % �f�t�H���g�̃K�E�X���z���g�p���܂�
%      O1 = NaiveBayes.fit(meas,species);
%      C1 = O1.predict(meas);
%      cMat1 = confusionmat(species,C1) % �����s��
%      % 1 �� 3 �̓����ɑ΂��ăK�E�X���z���g�p���A2 �� 4 �̓����ɑ΂���
%      % �J�[�l�����x������g�p���܂��B
%      O2 = NaiveBayes.fit(meas,species, ...
%             'dist',{'normal', 'kernel','normal','kernel'});
%      C2 = O2.predict(meas);
%      cMat2 = confusionmat(species,C2) % �����s��
%
%      % ���K���z (1 �Ԗڂ̓���) �Ƒ������z (2 �Ԗڂ̓���) ������ 2 ��
%      % �O���[�v����f�[�^�𐶐����A�f�[�^��P���x�C�Y���ފ�ɋߎ����܂��B
%      n = 1000;                       % �e�N���X���̊ϑ���
%      grp = [ones(n,1);2*ones(n,1)];  % 2 �̃N���X
%      % ���K���z��������
%      mu = [0;2];
%      train1 = normrnd(mu(grp),1);
%      test1  = normrnd(mu(grp),1);
%      % �������z�̓���
%      prob = [.1 .4 .15 0.35; .4 0.2  0.3 0.1];
%      train2 = mnrnd(1,prob(grp,:)) * (1:4)';
%      test2  = mnrnd(1,prob(grp,:)) * (1:4)';
%      O = NaiveBayes.fit([train1 train2],grp,'dist',{'normal','mvmn'});
%      cidx = O.predict([test1 test2]);
%      err_rate = sum(grp~=cidx)/(2*n) % �딻�ʂ̊���


%   Copyright 2008-2009 The MathWorks, Inc.
