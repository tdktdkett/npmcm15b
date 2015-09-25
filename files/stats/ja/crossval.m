%CROSSVAL  ��������
%
%   VALS = CROSSVAL(FUN,X) �́AX ���̃f�[�^�ɓK�p�����A�֐� FUN �ɑ΂��� 
%   10 ��������������s���܂��BFUN �́AX �̌P���f�[�^�� X �̃e�X�g�f�[�^�� 
%   2 �̓��͈��������� 10 ��Ăяo�����֐��n���h���ŁA�ȉ��̂悤�ɕ\���܂��B
%
%      TESTVAL = FUN(XTRAIN,XTEST)
%
%   �Ăяo�����x�ɁAFUN �̓��f�����ߎ����邽�߂� XTRAIN ���g�p����K�v������A
%   �ߎ��������f�����g�p���� XTEST ��Ōv�Z����邢�����̋K�� TESTVAL ��
%   �Ԃ��܂��BX �́A��x�N�g���A�܂��͍s��ł��BX �̍s�͊ϑ��ɑΉ����A���
%   �ϐ��܂��͓����ɑΉ����܂��BVALS �́A��x�N�g���A�܂��͍s��ł��BVALS ��
%   �e�s�ɂ́A1 �̌���f�[�^�ɓK�p���� FUN �̌��ʂ��܂܂�܂��BFUN ��
%   ��X�J���l��Ԃ��ꍇ�ACROSSVAL �͐��`�C���f�b�N�X�̏����g�p���čs�x�N�g����
%   ���`���A�s�� VALS �̍s�Ɋi�[���܂��B
%
%   VALS = CROSSVAL(FUN,X,Y,...) �́A�����̕ϐ� X, Y, ... ������ꍇ�Ɏg���܂��B
%   ���ׂĂ̕ϐ� (��x�N�g���A�s��܂��͔z��) �́A�����s���łȂ���΂Ȃ�܂���B
%   FUN �ł́A���L�Ɏ������悤�ɁAX, Y, ... �̌P���f�[�^�̌�� X, Y, ... ��
%   �e�X�g�f�[�^�𑱂��ČĂяo���֐��n���h���ł��B
%
%      TESTVALS = FUN(XTRAIN,YTRAIN,...,XTEST,YTEST,...)
%
%   MSE = CROSSVAL('mse',X,Y,'Predfun', PREDFUN) �́A�֐� PREDFUN �ɑ΂���
%   ���ϓ��덷�� 10 ������������̐�����܂ރX�J�� MSE ��Ԃ��܂��BX �́A
%   ��x�N�g���A�s��܂��͔z��ƂȂ�\���q�ł��BY �́A�����l���܂ޗ�x�N�g���ł��B
%   X �� Y �́A�����s���łȂ���΂Ȃ�܂���BPREDFUN �́A�ȉ��̂悤�ɁAX �̌P��
%   �f�[�^�̌�� Y �̌P���f�[�^�A���̌�� X �̃e�X�g�f�[�^�𑱂��ČĂяo���֐�
%   �n���h���ł��B
%
%      YFIT = PREDFUN(XTRAIN,YTRAIN,XTEST)
%
%   �Ăяo�����x�ɁAPREDFUN �́A��A���f���ɋߎ����邽�߂� XTRAIN �� 
%   YTRAIN ���g�p���A��x�N�g�� YFIT �ɋߎ������l��Ԃ��K�v������܂��B
%   YFIT �̊e�s�́AXTEST �̑Ή�����s�ɑ΂���\���l���܂�ł��܂��B
%   CROSSVAL �́AYFIT �ƑΉ����鉞���̃e�X�g�f�[�^�Ԃ̓��a�덷���v�Z���A
%   ���ׂẴe�X�g�f�[�^�ƌ�������S�̂̕��ς�Ԃ��܂��B
%
%   MCR = CROSSVAL('mcr',X,Y,'Predfun', PREDFUN) �́A�\���l�Ƃ��čs�� X ��
%   �N���X�̃��x���Ƃ��ăx�N�g�� Y �����֐� PREDFUN �ɑ΂���딻�ʂ̊��� 
%   (�딻�ʂ����W�{�̊���) �� 10 ������������̐�����܂ރX�J�� MCR ��Ԃ��܂��B
%   PREDFUN �́A���ރ��f�����ߎ����邽�߂� XTRAIN �� YTRAIN ���g�p���AXTEST ��
%   �΂���\�������N���X�̃��x���Ƃ��� YFIT ��Ԃ��K�v������܂��BCROSSVAL �́A
%   YFIT �ƑΉ����鉞���̃e�X�g�f�[�^�Ԃ̌딻�ʂ̐����v�Z���A���ׂẴe�X�g
%   �f�[�^�ƌ�������S�̂̌딻�ʂ̊�����Ԃ��܂��B
%
%   VAL = CROSSVAL(CRITERION,X1,X2,...,Y,'Predfun', PREDFUN) �́ACRITERION �� 
%   'mse' �܂��� 'mcr' �̏ꍇ�A�\���l�Ƃ��� X1, X2, ... �Ɖ����l�܂��̓N���X
%   �̃��x���Ƃ��� Y �������ϓ��덷�ɂ���������̐��� (��A���f���̏ꍇ) 
%   �܂��͌딻�ʂ̊��� (���ރ��f���̏ꍇ) ��Ԃ��܂��B���ׂĂ̕ϐ� (X1, X2, ... Y) 
%   �́A�����s���łȂ���΂Ȃ�܂���BPREDFUN �́A���L�Ɏ������悤�ɁA
%   X1, X2, ... �̌P���f�[�^�̌�� Y �̌P���f�[�^�A���̌�� X1, X2, ... ��
%   �e�X�g�f�[�^�𑱂��ČĂяo���֐��n���h���ł��B
%
%      YFIT = PREDFUN(X1TRAIN,X2TRAIN,...,YTRAIN,X1TEST,X2TEST,...)
%
%   YFIT �́A�ߎ������l���܂ޗ�x�N�g���łȂ���΂Ȃ�܂���B
%
%   VALS = crossval(...,'PARAM1',val1,'PARAM2',val2,...) �́A�ȉ�����I��
%   �����ǉ��̃p�����[�^��/�l�̑g�ݍ��킹���w�肵�܂��B
%
%   'Kfold'        K �����̌�������ɑ΂��镪���̐� K�B
%   'Holdout'      �z�[���h�A�E�g�ɑ΂���ϑ��̔䗦�܂��͐� P�BP �̓X�J����
%                  �Ȃ���΂Ȃ�܂���B0<P<1 �̏ꍇ�A�e�X�g�Z�b�g�ɑ΂���
%                  �ߎ��I�� P*N �̊ϑ��l�𖳍�ׂɑI�����܂��BP �������̏ꍇ�A
%                  �e�X�g�f�[�^�ɑ΂��� P �̊ϑ��l�𖳍�ׂɑI�����܂��B
%   'Leaveout'     �l�� 1 �łȂ���΂Ȃ�܂���BLeave-one-out �@�̌������肪
%                  �g���܂��B
%   'Partition'    CVPARTITION �I�u�W�F�N�g C�B
%   'Stratify'     �K�w���ɑ΂���O���[�v����������x�N�g�� GROUP�BGROUP ��
%                  �ł͌P���f�[�^�ƃe�X�g�f�[�^�̗����Ƃ��������������N���X��
%                  �����ɂȂ�܂��B
%                  CROSSVAL �́AGROUP �� NaN�A�܂��́A��̕�����������l��
%                  ���Ď�舵���AX,Y,... �̑Ή�����s�𖳎����܂��B
%                  �K�w�������敪�́A���ރA���S���Y�������s���邽�߂Ɏg���܂��B
%   'Mcreps'       ����ɑ΂��郂���e�E�J�����̌J��Ԃ������������̐����B
%                  CROSSVAL �� 1 �Ԗڂ̓��͂� 'mse' �܂��� 'mcr' �̏ꍇ�A
%                  CROSSVAL �̓����e�E�J�����̌J��Ԃ��̂��ׂĂƌ������镽��
%                  ���덷�܂��͌딻�ʂ̊����̕��ς�Ԃ��܂��B�����łȂ��ꍇ�A
%                  CROSSVAL �́A1 �Ԗڂ̎����ɉ����������e�E�J�����̌J��Ԃ���
%                  ���ׂĂ��� VAL �̒l��A�����܂��B
%
%   'Kfold', 'Holdout','Leaveout' �܂��� 'Partition' �p�����[�^�̂����ꂩ�݂̂�
%   �w�肷�邱�Ƃ��ł��܂��B'Kfold', 'Holdout','Leaveout' �܂��� 'Partition' 
%   �̂����ꂩ��^���Ȃ��ꍇ�A�f�t�H���g�� 10 ������������ɂȂ�܂��B
%   'Partition' �p�����[�^�́A'Stratify' �Ƌ��Ɏw�肷�邱�Ƃ͂ł��܂���B
%   'Partition' �� 'Mcreps' �̗����̒l���^����ꂽ�ꍇ�A1 �Ԗڂ̃����e�E�J������
%   �J��Ԃ��́A�^����ꂽ CVPARTITION �I�u�W�F�N�g���Ɋ܂܂��敪�����g�p���܂��B
%   REPARTITION ���\�b�h�́A�c��̃����e�E�J�����̌J��Ԃ��̓x�ɐV�K�敪��
%   �������邽�߂ɁA���� CVPARTITION �I�u�W�F�N�g�Ōv�Z����܂��B
%
%   ��:
%      % 10 ��������������g���ĉ�A�ɑ΂��镽�ϓ��덷���v�Z���܂�
%      load('fisheriris');
%      y = meas(:,1);
%      x = [ones(size(y,1),1) meas(:,2:4)];
%      regf = @(xtrain, ytrain,xtest)(xtest * regress(ytrain,xtrain));
%      cvMse = crossval('mse',x,y,'predfun',regf)
%
%      % �K�w�����ꂽ 10 ��������������g���Č딻�ʂ̊������v�Z���܂�
%      load('fisheriris');
%      y = species;
%      % �K�w�������敪�́A���ރA���S���Y�������s���邽�߂Ɏg���܂��B
%      cp = cvpartition(y,'k',10);
%      classf = @(xtrain, ytrain,xtest)(classify(xtest,xtrain,ytrain));
%      cvMCR = crossval('mcr',meas,y,'predfun', classf,'partition',cp)
%
%      % �K�w�����ꂽ 10 ��������������g���č����s����v�Z���܂�
%      load('fisheriris');
%      % �����s��̊e�X�́A�������Ԃ̃O���[�v���x���̕��בւ����K�v�ł��B
%      yorder = unique(species);
%      % �K�w�������敪�́A���ރA���S���Y�������s���邽�߂Ɏg���܂��B
%      cp = cvpartition(species,'k',10);
%      f = @(xtr,ytr,xte,yte) confusionmat(yte,classify(xte,xtr,ytr),...
%          'order',yorder);
%      cfMat = crossval(f,meas,species,'partition',cp);
%      % cfMat �́A10 �̃e�X�g�f�[�^����� 10 �̍����s��̍��v�ł��B
%      cfMat = reshape(sum(cfMat),3,3)
%
%   �Q�l CVPARTITION, CVPARTITION/REPARTITION.


% Copyright 2007-2009 The MathWorks, Inc.
