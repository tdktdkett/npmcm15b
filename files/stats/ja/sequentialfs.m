%SEQUENTIALFS  �A�������@�\�I��
%
%   INMODEL = SEQUENTIALFS(FUN,X,Y) �́A�\���̉��P�������Ȃ��Ȃ�܂ŘA��
%   ���đI������@�\�ɂ��AX ���� Y ���̃f�[�^���ł��ǂ��\������\���ϐ���
%   �f�[�^��I�����܂��BX �́A�s���|�C���g (�܂��͊ϑ��l) �ɑΉ����A�񂪋@�\ 
%   (�܂��͗\���ϐ�) �ɑΉ�����f�[�^�s��ł��BY �́AX ���̊ϑ��l���Ƃ̉����l�A
%   �܂��́A�N���X�̃��x���̗�x�N�g���ł��BX �� Y �́A�����s���łȂ����
%   �Ȃ�܂���BFUN �́A�@�\�̑I���ƒ�~�̃^�C�~���O�����肷�邽�߂Ɏg�p���� 
%   SEQUENTIALFS �̊���`����A@ ���g���č쐬�����֐��n���h���ł��B
%   SEQUENTIALFS �́A�ŏI�I�ɑI�������@�\�������_���x�N�g�� INMODEL ��Ԃ��܂��B
%
%   ��̋@�\�̏W������n�߂�ƁASEQUENTIALFS �́A�܂��I������Ă��Ȃ��e�@�\��
%   �ǉ����邱�ƂŁA���̋@�\�̃T�u�Z�b�g���쐬���܂��B���̋@�\�̃f�[�^
%   ���ƂɁASEQUENTIALFS �́A�ȉ��̂悤�� X �� Y �̈قȂ�P���ƃe�X�g��
%   �f�[�^���g���� FUN ���J��Ԃ��Ăяo�����ƂŁA10 ����������������s���܂��B
%
%      CRITERION = FUN(XTRAIN,YTRAIN,XTEST,YTEST)
%
%   XTEST �� YTEST ���s�̑���I�ȃf�[�^���܂ފԂ́AXTRAIN �� YTRAIN �́A
%   X �� Y �̓����s�̃f�[�^���܂݂܂��BXTRAIN �� XTEST �́A���݂̌���
%   �@�\�̏W���ɑΉ����� X �̗񂩂瓾����f�[�^���܂�ł��܂��B
%
%   �Ăяo�����x�ɁAFUN �́A�X�J���l CRITERION ��Ԃ��Ȃ���΂Ȃ�܂���B
%   �ʏ�AFUN �̓��f�����P���A�܂��́A�ߎ����邽�߂� XTRAIN �� YTRAIN ���g�p���A
%   ���ɁA���f�����g�p���� XTEST �ɑ΂���l��\�����܂��B�ŏI�I�ɁAYTEST ����
%   �����̗\���l�̋����̑���A�܂��́A�����l��Ԃ��܂��B�^����ꂽ����
%   �@�\�̏W���ɑ΂����������̌v�Z�ɂ����āASEQUENTIALFS �́A���ׂĂ�
%   �e�X�g�f�[�^�ƌ������� FUN �̖߂�l�����v���A���̍��v���e�X�g�̊ϑ��l��
%   �����Ŋ���܂��B�e���̋@�\�̃T�u�Z�b�g��]�����邽�߂ɁA�l�̕��ς�
%   �g�p���܂��BFUN �ɑ΂��āA2 �̋��ʂ��Ďg�p����鑹������́A��A
%   ���f���ɑ΂�����덷 (���̏ꍇ�ASEQUENTIALFS �͕��ϓ��덷���v�Z
%   ���܂�) �ƁA���ރ��f���ɑ΂���딻�ʂ̊ϑ��� (���̏ꍇ�ASEQUENTIALFS ��
%   �딻�ʂ̊������v�Z���܂�) �ł��B
%
%   ����: SEQUENTIALFS �́A���ׂẴe�X�g�f�[�^�ƌ������� FUN �ŕԂ����l��
%   �a���e�X�g�̊ϑ��l�̑����Ŋ���܂��B���̂��߁AFUN �͂��̏o�͒l���e�X�g��
%   �ϑ��l�̐��Ŋ���K�v�͂���܂���B
%
%   ���̋@�\�̃T�u�Z�b�g���Ƃ̕��� CRITERION �̒l���^������ƁA
%   SEQUENTIALFS �́A���ς� CRITERION �l���ŏ���������̂�I�����܂��B
%   ���̎菇�́A�@�\��ǉ����邱�ƂŊ�������Ȃ��Ȃ�܂ő������܂��B
%
%   INMODEL = SEQUENTIALFS(FUN,X,Y,Z,...) �́A���͕ϐ� X, Y, Z, ... �̐���
%   �󂯓���܂��BSEQUENTIALFS �́AX ����̂݋@�\ (��) ��I�����܂����A
%   �����łȂ��ꍇ�́AX, Y, Z, ... �ɉ��߂�^���܂���B��x�N�g�����s���
%   ���ׂẴf�[�^���͂́A�����s���łȂ���΂Ȃ�܂���BSEQUENTIALFS �́A
%   �ȉ��̂悤�ɁAX, Y, Z, ... �̌P���f�[�^�ƃe�X�g�f�[�^�� FUN ���Ăяo���܂��B
%
%      CRITERION = FUN(XTRAIN,YTRAIN,ZTRAIN,...,XTEST,YTEST,ZTEST,...)
%
%   SEQUENTIALFS �́AX, Y, Z, ... �̍s�̃T�u�Z�b�g��I�����邱�ƂŁAXTRAIN, 
%   YTRAIN, ZTRAIN, ... �� XTEST, YTEST, ZTEST, ... ���쐬���܂��BFUN �́A
%   �X�J���l CRITERION ��Ԃ��܂����A���炩�̒l���v�Z����\���͂���܂��B
%   �_���x�N�g�� INMODEL �̗v�f�� X �̗�ɑΉ����A�Ō�ɑI�����ꂽ�@�\�������܂��B
%
%   [INMODEL,HISTORY] = SEQUENTIALFS(FUN,X,...) �́A�e�X�e�b�v�őI�������@�\
%   �̏���Ԃ��܂��BHISTORY �́A�ȉ��̃t�B�[���h�����X�J���̍\���̂ł��B
%
%         Crit   �e�X�e�b�v�Ōv�Z���ꂽ��l���܂ރx�N�g���B
%         In     �s I ���ǂ̋@�\���X�e�b�v I �Ŋ܂܂��������_���s��B
%
%   [...] = SEQUENTIALFS(..., 'PARAM1',val1, 'PARAM2',val2, ...) �́A�ȉ���
%   ���O�ƒl�̑g�� 1 �A�܂��́A�������w�肵�܂��B
%
%   'CV'        ���̋@�\�̃T�u�Z�b�g���Ƃ̊���v�Z���邽�߂Ɏg����
%               ���؃��\�b�h�B�I�����́A�ȉ��̂Ƃ���ł��B
%               ���̐��� K - K ��������������g�p (�K�w���Ȃ�)�BK �� 
%                                      1 ���傫���Ȃ���΂Ȃ�܂���B
%               CVPARTITION �I�u�W�F�N�g - CVPARTITION �I�u�W�F�N�g��
%                                      �w�肵��������������s�B
%               'resubstitution'     - �Ēu�����g�p�A���Ȃ킿�A�I���W�i��
%                                      �f�[�^�́A����v�Z���邽�߂ɌP����
%                                      �e�X�g�f�[�^�̗����� FUN �ɓn���܂��B
%               'none'               - �e�X�g�f�[�^�ƌP���f�[�^��ʁX�ɂ����ɁA
%                                      CRITERION = FUN(X,Y,Z,...) �Ƃ��� 
%                                      FUN ���Ăяo���܂��B
%               'CV' �̃f�t�H���g�l�� 10�A���Ȃ킿�A10 ������������ (�K�w���Ȃ�) �ł��B
%
%               �ʏ́A"wrapper" ���\�b�h�́A�w�K�A���S���Y������������֐� 
%               FUN ���g�p���܂��B�����̃��\�b�h�́A�ʏ�A�@�\��I�����邽�߂�
%               ���������K�p���܂��B�ʏ́A"filter" ���\�b�h�́A�@�\��I������
%               ���߂̃f�[�^�̓��� (���ւ̂悤��) �𑪒肷��֐����g�p���܂��B
%
%   'MCReps'  ��������ɑ΂��郂���e�E�J�����̌J��Ԃ������������̐����B
%               �f�t�H���g�l�� 1 �ł��B
%               'CV' �� 'none' �܂��� 'resubstitution' �̏ꍇ�A'MCReps' �� 1 
%               �łȂ���΂Ȃ�܂���B
%
%   'Direction' �������������s��������B
%               �f�t�H���g�́A'forward' �ł��B'Direction' �� 'backward' ��
%               �ꍇ�ASEQUENTIALFS �́A���ׂĂ��܂ދ@�\�̏W���Ŏn�܂�A
%               ��l����������܂ŋ@�\�������폜���܂��B
%
%   'KeepIn'    �K���܂܂��@�\�̏W�����w�肷��_���x�N�g���A�܂��́A��ԍ�
%               �̃x�N�g���B�f�t�H���g�͋�ł��B
%
%   'KeepOut'   �K�����O�����@�\�̏W�����w�肷��_���x�N�g���A�܂��́A
%               ��ԍ��̃x�N�g���B�f�t�H���g�͋�ł��B
%
%   'NFeatures' SEQUENTAILFS ����~����Ƃ��̋@�\���B
%               INMODEL �́A���̑����̋@�\�𐳊m�Ɋ܂݂܂��B�f�t�H���g�l��
%               ��ŁA��̋Ǐ��I�ȍŏ��l�����������ꍇ�� SEQUENTAILFS ��
%               ��~���邱�Ƃ������܂��B'NFeatures' �ɑ΂����łȂ��l�́A
%               'Options' ���� 'MaxIter' �� 'TolFun' �𖳌��ɂ��܂��B
%
%   'NullModel'  (X ����̋@�\���܂܂Ȃ��Ƃ���) �A���������@�\�I���菇�� 
%               HISTORY �̏o�͂Ɋ܂ޕK�v�����邩�ǂ����������_���l�B
%               �f�t�H���g�� FALSE �ł��B
%
%   'Options'   STATSET �ō쐬�����J��Ԃ����������A���S���Y���ɑ΂���
%               �I�v�V�����\���́BSEQUENTIALFS �́A�ȉ��� STATSET �p�����[�^��
%               �g�p���܂��B
%
%         'Display'     �\���o�̓��x���B�I�����́A'off' (�f�t�H���g), 
%                       'final', 'iter' �ł��B
%         'MaxIter'     �\�ȍő�J��Ԃ��񐔁B�f�t�H���g�� Inf �ł��B
%         'TolFun'      ��ɑ΂���I�����e�덷��^���鐳�̐��B�f�t�H���g
%                       �́A'Direction' �� 'forward' �̏ꍇ 1e-6�A
%                       'Direction' �� 'backward' �̏ꍇ 0 �ł��B
%         'TolTypeFun'  'TolFun' ���΋��e�덷�Ƃ��Ďg�p����ꍇ 'abs'�A
%                       ���΋��e�덷�Ƃ��Ďg�p����ꍇ 'rel'�B�f�t�H���g�� 
%                       'rel' �ł��B
%
%   ��:
%      % �m�C�Y���܂ދ@�\�����A�C���X�f�[�^�� CLASSIFY �ɑ΂��ĘA������
%      % �@�\�I�������s���A�m�C�Y���܂܂Ȃ��@�\���d�v�ł��邱�Ƃ��m�F���܂��B
%      load('fisheriris');
%      X = randn(150,10);
%      X(:,[1 3 5 7 ])= meas;
%      y = species;
%      opt = statset('display','iter');
%      % �K�w�������敪�̐����́A�ʏ�A���ރA���S���Y�������s���邽�߂�
%      % �g���܂��B
%      cvp = cvpartition(y,'k',10);
%      [fs,history] = sequentialfs(@classf,X,y,'cv',cvp,'options',opt);
%
%      �����ŁACLASSF �́A�ȉ��̂悤�ɕ\����� MATLAB �֐��ł��B
%      function err = classf(xtrain,ytrain,xtest,ytest)
%        yfit = classify(xtest,xtrain,ytrain,'quadratic');
%        err = sum(~strcmp(ytest,yfit));
%
%   �Q�l CVPARTITION, CROSSVAL, STEPWISEFIT.


% Copyright 2008-2009 The MathWorks, Inc.
