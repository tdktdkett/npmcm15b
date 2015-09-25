%TREEBAGGER  ����؂̏W���ɑ΂���u�[�g�X�g���b�v�W�c
%
%   TreeBagger �́A���ނ܂��͉�A�̂����ꂩ�ɑ΂��錈��؂̏W�����܂Ƃ߂܂��B
%   'Bagging' �́A'bootstrap aggregation (�u�[�g�X�g���b�v�W�c)' �Ƃ����Ӗ��ł��B
%   �W�����̂��ׂẴc���[�́A���̓f�[�^�̓Ɨ��ɕ`�悳�ꂽ�u�[�g�X�g���b�v
%   ������ő傫���Ȃ�܂��B���̕������Ɋ܂܂�Ȃ��ϑ��l�́A���̃c���[�ɑ΂��� 
%   "out of bag" �Ƃ��Ď�菜����܂��B�ϑ�����Ă��Ȃ��f�[�^�ɑ΂���c���[��
%   �W���̗\�����v�Z���邽�߂ɁATREEBAGGER �́A�Ɨ��ȃc���[����\���̕��ς�
%   ���܂��B
%
%   �u�[�g�X�g���b�v�W�c���̗\���덷�𐄒肷��ɂ́A���� out-of-bag ��
%   �ϑ���̃c���[���Ƃ̗\���ƁA�ϑ����Ƃ̏W���S�̗̂\���̕��ς��v�Z���A
%   �\�����ꂽ out-of-bag �̉����Ƃ��̊ϑ��ɂ����� true �̒l���r���܂��B
%
%   TreeBagger �́A�Ɨ��ȃc���[����Ă邽�߂ɁACLASSREGTREE �̋@�\�Ɉˑ����܂��B
%   ���ɁACLASSREGTREE �̓I�v�V�����̓��͈����Ƃ��ĕ����������育�Ƃɖ���ׂ�
%   �I�����ꂽ�����̐����󂯓���܂��B
%
%   'Compact' �v���p�e�B�́A�V�K�f�[�^���g���ė\�����s�����߂̏\���ȏ���
%   ���ʂ̃N���X CompactTreeBagger ���܂݂܂��B���̏��ɂ́A(���ނɑ΂���) 
%   �c���[�̏W���A�ϐ����A�N���X�����܂܂�܂��BCompactTreeBagger �́ATreeBagger 
%   ��菭�Ȃ��������ł��݂܂����A�W���ɑ΂��đ����̃c���[����Ă邽�߂�
%   ���\�b�h�� TreeBagger �݂̂ɂ���܂��BTreeBagger ���g���ăc���[�̏W����
%   ��U�傫�����Ă����ƁA�P���f�[�^�ɃA�N�Z�X����K�v���Ȃ��Ȃ����ꍇ�ɁA
%   ����ȍ~�ɌP�����ꂽ�R���p�N�g�ȏW�����g���č�Ƃ��邱�Ƃ��ł��܂��B
%
%   TreeBagger �v���p�e�B:
%      X             - �W�����쐬���邽�߂Ɏg�p���� X �f�[�^�B
%      Y             - �W�����쐬���邽�߂Ɏg�p���� Y �f�[�^�B
%      FBoot         - �܂Ƃ߂�ꂽ�ϑ��̊����B
%      SampleWithReplacement - �������o�̃t���O�B
%      TreeArgs      - CLASSREGTREE �̈����̃Z���z��B
%      ComputeOOBPrediction - out-of-bag �̗\�����v�Z���邽�߂̃t���O�B
%      ComputeOOBVarImp - out-of-bag �ϐ��̏d�v�x���v�Z����t���O�B
%      Prune         - �c���[����菜�����߂̃t���O�B
%      MergeLeaves   - ���X�N�����P���Ȃ����[�t���}�[�W����t���O�B
%      NVarToSample  - ����ׂȓ����I���̂��߂̕ϐ��̐��B
%      MinLeaf       - �c���[�̃��[�t���Ƃ̊ϑ��̍ŏ��l�B
%      OOBIndices    - out-of-bag �̊ϑ��ɑ΂��� indicator �s��B
%      Trees         - �W�����̌����
%      NTrees        - �W�����̌���؂̐�
%      ClassNames    - �N���X��
%      Prior         - �O�̃N���X�̊m���B
%      Cost          - �딻�ʂ̃R�X�g�B
%      VarNames      - �ϐ���
%      Method        - �c���[�Ŏg�p���郁�\�b�h (���ނ܂��͉�A)
%      OOBInstanceWeight - �ϑ����Ƃ� out-of-bag �c���[�̃J�E���g�B
%      OOBPermutedVarDeltaError       - ���ތ덷�ɑ΂���ϐ��̏d�v�x�B
%      OOBPermutedVarDeltaMeanMargin  - ���ރ}�[�W���ɑ΂���ϐ��̏d�v�x�B
%      OOBPermutedVarCountRaiseMargin - raising �}�[�W���ɑ΂���ϐ��̏d�v�x�B
%      DeltaCritDecisionSplit - �\���q���Ƃ̕�����̍v���x
%      Proximity      - �ϑ��ɑ΂���ގ��x�s��B
%      OutlierMeasure - �ُ�l���`���邽�߂̎ړx�B
%      DefaultYfit    - PREDICT �� OOBPREDICT �ɂ��f�t�H���g�̖߂�l�B
%
%   TreeBagger ���\�b�h:
%      TreeBagger/TreeBagger - �܂Ƃ܂�������؂̏W�����쐬�B
%      append           - �V�K�c���[���W���ɒǉ��B
%      compact          - ����؂̃R���p�N�g�ȏW���B
%      error            - �덷 (�딻�ʂ̊m���܂��� MSE)
%      fillProximities  - �P���f�[�^�ɑ΂��銮�S�ގ��x�s��B
%      growTrees        - �ǉ��̃c���[���P�����ďW���ɒǉ��B
%      margin           - ���ރ}�[�W��
%      mdsProx          - �ߐڍs��̑������X�P�[�����O
%      meanMargin       - �c���[���Ƃ̕��ރ}�[�W���̕���
%      oobError         - out-of-bag �덷�B
%      oobMargin        - out-of-bag �}�[�W���B
%      oobMeanMargin    - out-of-bag ���σ}�[�W���B
%      oobPredict       - out-of-bag �̊ϑ��ɑ΂���W���\���B
%      predict          - �\������
%
%   ��:
%      load fisheriris
%      b = TreeBagger(50,meas,species,'oobpred','on')
%      plot(oobError(b))
%      xlabel('number of grown trees')
%      ylabel('out-of-bag classification error')
%
%    �Q�l TREEBAGGER/TREEBAGGER, COMPACTTREEBAGGER, CLASSREGTREE.


%   Copyright 2008-2009 The MathWorks, Inc.
