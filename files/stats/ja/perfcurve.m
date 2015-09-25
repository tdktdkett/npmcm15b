%PERFCURVE  ���ފ�̏o�͂ɑ΂����M�ғ������ (ROC) �Ȑ��܂��͑��̐��\�Ȑ��̌v�Z
%
%   [X,Y] = PERFCURVE(LABELS,SCORES,POSCLASS) �́Atrue �̃N���X�̃��x�� 
%   LABELS ��^���A���ފ�̗\���x�N�g�� SCORES �ɑ΂��� ROC �Ȑ����v�Z���܂��B
%   ���x���́A���l�x�N�g���A�_���x�N�g���A�����s��A������̃Z���z��A�܂���
%   �J�e�S���̃x�N�g���ɂ��邱�Ƃ��ł��܂� (groupingvariable �̃w���v���Q��)�B
%   SCORES �́A�������̃f�[�^�ɑ΂��镪�ފ�ŕԂ����X�R�A�̐��l�x�N�g���ł��B
%   ���̃x�N�g���́ALABELS �Ɠ����v�f���łȂ���΂Ȃ�܂���BPOSCLASS �́A
%   ���l (���l LABELS �̏ꍇ) �܂��͕����̂����ꂩ�̗z���̃N���X�̃��x�� 
%   (�X�J��) �ł��B�w�肵���z���̃N���X�́A���͂̃��x���̔z��ɗ^���Ȃ����
%   �Ȃ�܂���B�߂�l X �� Y �́A���\�Ȑ��ɑ΂�����W�ŁAPLOT(X,Y) ��
%   �\�����邱�Ƃ��ł��܂��B�f�t�H���g�ł́AX �͋U�z���� FPR (�����ɁAfallout 
%   �܂��� 1 - ���ٓx) �ŁAY �͐^�z���� TPR (�����ɁArecall �܂��͊��x) �ł��B
%
%   [X,Y,THRE] = PERFCURVE(LABELS,SCORES,POSCLASS) �́AX �� Y �̌v�Z�����l��
%   �΂��ĕ��ފ�̃X�R�A��臒l�̔z���Ԃ��܂��BX �� Y �͓����s���ɂȂ�܂��B
%   ���ꂼ���臒l�ɑ΂��āATP �͂���臒l�ȏ�̃X�R�A�����^�z���̊ϑ���
%   �J�E���g�ŁAFP �͂���臒l�ȏ�̃X�R�A�����U�z���̊ϑ��̃J�E���g�ł��B
%   PERFCURVE �́A�A���̃J�E���g TN �� FN ���`���A�������@�ŁA�z���̃J�E���g��
%   �����ɑΉ�����悤��臒l���~���ɕ��בւ��܂��BM �̈قȂ�臒l���X�R�A��
%   �z��Ō��������ꍇ�APERFCURVE �� X, Y �� M+1 �s�� THRE �z���Ԃ��܂��B
%   PERFCURVE �́A�v�f THRE(2:M+1) ���قȂ�臒l�ɐݒ肵�ATHRE(1) �� THRE(2) ��
%   �������܂��B�֋X��ATHRE(1) �͍ł����� '���ׂĊ��p' ��臒l��\�����߁A
%   PERFCURVE �́ATP=0 �� FP=0 �ɑ΂��� X �� Y �̑Ή�����l���v�Z���܂��B
%   THRE(end) �́ATN=0 �� FN=0 �̏ꍇ�A�ł��Ⴂ '���ׂċ���' ��臒l�ł��B
%
%   [X,Y,THRE,AUC] = PERFCURVE(LABELS,SCORES,POSCLASS) �́AX �� Y �̌v�Z����
%   �l�ɑ΂���Ȑ����ʐ� (AUC) ��Ԃ��܂��BXVALS �� 'all' �ɐݒ肳�ꂽ�ꍇ�A
%   PERFCURVE �͖߂�l X �� Y ���g���� AUC ���v�Z���܂��BXVALS �����l�z���
%   �ꍇ�APERFCURVE �� XVALS �̍ŏ��v�f�ƍő�v�f�Ŏw�肵����ԓ��̂��ׂĂ�
%   �قȂ�X�R�A���瓾���� X �� Y �l���g���� AUC ���v�Z���܂��B���m�ɂ́A
%   XVALS �� 'all' �ɐݒ肳���悤�ɁAPERFCURVE �͂��ׂĂ̈قȂ�臒l�ɑ΂��� 
%   X �l�������AAUC ���v�Z���邽�߂� MIN(XVALS) �� MAX(XVALS) �Ԃł���� 
%   (�Ή����� Y �l��) �̃f�[�^���g�p���܂��B�֐��́A�ʐς𐄒肷�邽�߂�
%   ��`�ߎ����g�p���܂��B
%
%   X �܂��� Y �̍ŏ��ƍŌ�̒l�� NaN �̏ꍇ�APERFCURVE �� AUC �̌v�Z���s�����߂� 
%   NaN ���폜���܂��B����́A����� '���ׂĊ��p' �܂��� '���ׂċ���' ��臒l�A
%   ���Ƃ��΁A�z���I���� (PPV) �܂��͉A���I���� (NPV) �̏ꍇ�� NaN �𐶐�����
%   ���������܂��B
%
%   [X,Y,THRE,AUC,OPTROCPT] = PERFCURVE(LABELS,SCORES,POSCLASS) �́A�œK ROC 
%   �̍�p�_�ɑ΂��� FPR �� TPR �̒l�� ROC �Ȑ��̍œK�ȍ�p�_�� 1 �s 2 ���
%   �T�C�Y�̔z��Ƃ��ĕԂ��܂��BOPTROCPT �́A�W�� ROC �Ȑ��̏ꍇ�̂݌v�Z���s���A
%   �����łȂ��ꍇ�� NaN �ɐݒ肳��܂��BROC �Ȑ��ɑ΂���œK�ȍ�p�_���擾����
%   �ɂ́APERFCURVE �͍ŏ��Ɉȉ��̎����g���Č��z S �����߂܂��B
%          S = (cost(P|N)-cost(N|N))/(cost(N|P)-cost(P|P)) * N/P
%   �����ŁAcost(I|J) �̓N���X J �̃C���X�^���X���N���X I �Ɋ��蓖�Ă�R�X�g�ł��B
%   P=TP+FN �� N=TN+FP �́A���ꂼ��A�z���ƉA���̃N���X�̃C���X�^���X�̑����ł��B
%   ���ɁAPERFCURVE �́AROC �Ȑ��ƌ�������܂� ROC �v���b�g�̍���� (FPR=0,TPR=1) 
%   �̉�������z S �Œ������E�ɓ��������ƂŁA�œK�ȍ�p�_�����߂܂��B
%
%   [X,Y,THRE,AUC,OPTROCPT,SUBY] = PERFCURVE(LABELS,SCORES,POSCLASS) �́A�A��
%   �̃T�u�N���X�ɑ΂��� Y �l�̔z���Ԃ��܂��B1 �̉A���̃N���X�݂̂��w�肵��
%   �ꍇ�ASUBY �� Y �Ɠ����ɂȂ�܂��B�����łȂ��ꍇ�ASUBY �́AM �s K ��̃T�C�Y
%   �̍s��ł��B�����ŁAX �� Y �ɑ΂���߂�l�̐��ŁAK �͉A���̃N���X�̐��ł��B
%   PERFCURVE �́A���ׂẲA���̃N���X�ŃJ�E���g�����Z���邱�Ƃ� Y �l���v�Z���܂��B
%   SUBY �́A�A���̃N���X���ƂɕʁX�� Y �̊�l��^���܂��B���ꂼ��̉A����
%   �N���X�ɑ΂��āAPERFCURVE �� SUBY �ɐV�K�̗��z�u���A���̃N���X�̏ꍇ�̂�
%   �J�E���g����� TN �� FP �ɑ΂��� Y �l�����܂��B
%
%   [X,Y,THRE,AUC,OPTROCPT,SUBY,SUBYNAMES] = PERFCURVE(LABELS,SCORES,
%   POSCLASS,'NegClass',NEGCLASS) �́A�A���̃N���X���̃Z���z���Ԃ��܂��B
%   �A���̃N���X�� NEGCLASS �̓��͔z���^����ꍇ�APERFCURVE �͂���� 
%   SUBYNAMES �ɃR�s�[���܂��BNEGCLASS ���^�����Ȃ��ꍇ�APERFCURVE ��
%   ���̓��x������ SUBYNAMES �𒊏o���܂��BSUBYNAMES �̏��Ԃ́ASUBY ��
%   �����񏇂ł��B���Ȃ킿�ASUBY(:,1) �͉A���̃N���X SUBYNAMES{1} �ɑΉ����܂��B
%
%   [X,Y] = PERFCURVE(LABELS,SCORES,POSCLASS,'PARAM1',val1,'PARAM2',val2,...) 
%   �́A�ǉ��̃p�����[�^���ƒl�̑g�ݍ��킹���w�肵�܂��B
%
%     'NegClass' - �A���̃N���X�̃��X�g�B���l�z��A�����z��A������̃Z���z��
%                  �̂����ꂩ�ɂȂ�܂��B�f�t�H���g�ł́ANegClass �� 'all' ��
%                  �ݒ肳��邽�߁A�z���̃N���X�ł͂Ȃ����x���̓��͔z��ɂ���
%                  ���ׂẴN���X�͉A���ł�����̂ƍl�����܂��BNegClass ��
%                  ���x���̓��͔z��ɂ���N���X�̃T�u�Z�b�g�̏ꍇ�A�z���܂���
%                  �A���̃N���X�̂����ꂩ�ɑ����Ȃ����x�������C���X�^���X��
%                  �j������܂��B
%
%     'XCrit' - X �ɑ΂���v�Z��B�ȉ��̊���T�|�[�g���܂��B
%         TP    - �^�z���̐�
%         FN    - �U�A���̐�
%         FP    - �U�z���̐�
%         TN    - �^�A���̐�
%         TP+FP - TP �� FP �̘a
%         RPP   = (TP+FP)/(TP+FN+FP+TN) �z���̗\����
%         RNP   = (TN+FN)/(TP+FN+FP+TN) �A���̗\����
%         accu  = (TP+TN)/(TP+FN+FP+TN) ���x
%         TPR, sens, reca = TP/(TP+FN) �^�z�����A���x�Arecall
%         FNR, miss       = FN/(TP+FN) �U�A�����Amiss
%         FPR, fall       = FP/(TN+FP) �U�z�����Afallout
%         TNR, spec       = TN/(TN+FP) �^�A�����A���ٓx
%         PPV, prec = TP/(TP+FP) �z���̗\���l�A���x
%         NPV       = TN/(TN+FN) �A���̗\���l
%         ecost=(TP*COST(P|P)+FN*COST(N|P)+FP*COST(P|N)+TN*COST(N|N))/(TP+FN+FP+TN)
%              �K�v�ȃR�X�g
%         ����ɁA3 �̈��� (C,scale,cost) �̖����֐���^���邱�ƂŁA�C�ӂ�
%         ����`���邱�Ƃ��ł��܂��B�����ŁAC �� 2 �s 2 ��̍����s��Ascale �� 
%         2 �s 1 ��̃N���X�̃X�P�[���̔z��Acost �� 2 �s 2 ��̌딻�ʂ̃R�X�g�ł��B
%         �x��: �����̊�̂������́A2 �̓����臒l '���ׂĊ��p' �� 
%         '���ׂċ���' �̂����ꂩ�� NaN ��Ԃ��܂��B
%
%     'YCrit' - Y �ɑ΂���v�Z��BX �ɑ΂���T�|�[�g�Ɠ�����ł��B
%
%     'XVals' - X �̊�ɑ΂���l�B�f�t�H���g�ł́AXVals �� 'all' �ɐݒ�
%               ����邽�߁APERFCURVE �͂��ׂẴX�R�A�ɑ΂��� X �� Y �l��
%               �v�Z���܂��BXVals �� 'all' �ɐݒ肳��Ȃ��ꍇ�͐��l�z���
%               �Ȃ���΂Ȃ�܂���B
%               ���̏ꍇ�AX �� Y �͎w�肵�� XVals �ɑ΂��Ă̂݌v�Z����܂��B
%
%     'ProcessNaN' - ���̈����́APERFCURVE ���ǂ̂悤�� NaN �̃X�R�A��������
%                    �邩���w�肵�܂��B�f�t�H���g�ł́A'ignore' �ɐݒ肳��邽�߁A
%                    NaN �̃X�R�A�����C���X�^���X�̓f�[�^����폜����܂��B
%                    �p�����[�^�� 'addtofalse' �ɐݒ肳�ꂽ�ꍇ�APERFCURVE 
%                    �� NaN �̃X�R�A�����C���X�^���X�����ꂼ��̃N���X�ɂ���
%                    �U�̌딻�ʂ̃J�E���g�ɒǉ����܂��B���Ȃ킿�A�z���̃N���X
%                    ����̃C���X�^���X�͏�ɋU�A�� (FN) �Ƃ��ăJ�E���g����A
%                    �A���̃N���X����̃C���X�^���X�͏�ɋU�z�� (FP) �Ƃ���
%                    �J�E���g����܂��B
%
%     'Prior' - ������܂��� 2 �v�f�����z��̂����ꂩ�B���ꂼ��A�z���ƉA��
%               �̃N���X�ɑ΂���O�̊m����\���܂��B�f�t�H���g�� 'empirical' �ł��B
%               ���Ȃ킿�A�O�̊m���̓N���X�̕p�x����h�����܂��B'uniform' ��
%               �ݒ肷��ꍇ�A���ׂĂ̑O�̊m�����������ݒ肳��܂��B
%
%     'Cost'  - �딻�ʂ̃R�X�g�� 2 �s 2 ��̍s��B
%                   [C(P|P) C(N|P); C(P|N) C(N|N)]
%               �����ŁAC(I|J) �̓N���X J ���N���X I �Ƃ��Č딻�ʂ���R�X�g�ł��B
%               �f�t�H���g�ł́A[0 0.5; 0.5 0] �ɐݒ肳��܂��B
%
%   ��: ���W�X�e�B�b�N��A�ŕ��ނ��邽�߂� ROC �Ȑ����v���b�g���܂��B
%      load fisheriris
%      x = meas(51:end,1:2);        % �A�C���X�f�[�^�� 2 �̃N���X�� 2 �̋@�\
%      y = (1:100)'>50;             % versicolor=0, virginica=1
%      b = glmfit(x,y,'binomial');  % ���W�X�e�B�b�N��A
%      p = glmval(b,x,'logit');     % �X�R�A�ɑ΂��ċߎ������m�����擾
%
%      [X,Y] = perfcurve(species(51:end,:),p,'virginica');
%      plot(X,Y)
%      xlabel('False positive rate'); ylabel('True positive rate')
%      title('ROC for classification by logistic regression')
%
%   �Q�l GLMFIT, CLASSIFY, NAIVEBAYES, CLASSREGTREE, GROUPINGVARIABLE.


%   Copyright 2008-2009 The MathWorks, Inc. 
