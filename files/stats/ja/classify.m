%CLASSIFY  ���ʕ���
%
%   CLASS = CLASSIFY(SAMPLE,TRAINING,GROUP) �́ASAMPLE �̃f�[�^�̊e�s�� 
%   TRAINING �̃O���[�v�̒l�Ɋ��蓖�Ă܂��BSAMPLE ��TRAINING �́A�����̗������
%   �s��łȂ���΂Ȃ�܂���BGROUP�́ATRAINING �ɑ΂���O���[�v�ϐ��ł��B
%   ���̒l�̓O���[�v���`���A�e�v�f�́A�ǂ̃O���[�v�� TRAINING �̍s�ɑ�����
%   ���邩�����肵�܂��BGROUP �́A�J�e�S���ϐ��A���l�x�N�g���A�����z��A
%   �܂��́A������̃Z���z��ɂȂ�܂��BTRAINING ��GROUP �͓����s���łȂ����
%   �Ȃ�܂���BCLASSIFY �́AGROUP �� NaN�A�܂��́A��̕�����������l�Ƃ���
%   ��舵���ATRAINING �̑Ή�����s�𖳎����܂��BCLASS�́ASAMPLE �̊e�s���A
%   �ǂ̃O���[�v�Ɋ��蓖�Ă��邩�������AGROUP �Ɠ����^�C�v�������܂��B
%
%   CLASS = CLASSIFY(SAMPLE,TRAINING,GROUP,TYPE) �́A'linear', 'quadratic', 
%   'diagLinear', 'diagQuadratic', 'mahalanobis' �̂����ꂩ�̔��ʊ֐��̃^�C�v��
%   �w�肷�邱�Ƃ��\�ł��B���`���ʂ́A�����U�̃v�[�����ꂽ������e�O���[�v�ւ�
%   ���ϗʐ��K���x�ɋߎ����܂��B2 �����ʂ́A�O���[�v�ŊK�w�����ꂽ�����U�̐����
%   ���� MVN ���x�ɋߎ����܂��B�����̎�@�Ƃ��A�O���[�v�ւ̊ϑ������蓖�Ă邽�߂�
%   �ޓx����g�p���܂��B'diagLinear' �� 'diagQuadratic' �́A�Ίp�̋����U�s���
%   ����������܂����A'linear' �� 'quadratic' �Ǝ��Ă��܂��B�����̑Ίp�v�f��
%   �I���́A�P���ȃx�C�Y�̕��ނ̗�ł��B�}�n���m�r�X�̎��ʂ́A�K�w�����ꂽ�����U��
%   ��������}�n���m�r�X�������g�p���܂��BTYPE �̃f�t�H���g�́A'linear' �ł��B
%
%   CLASS = CLASSIFY(SAMPLE,TRAINING,GROUP,TYPE,PRIOR) �́A3 �̕��@��
%   �����ꂩ�̃O���[�v�ɑ΂��āA���炩���ߊm�����w�肷�邱�Ƃ��\�ł��B
%   PRIOR �́AGROUP ���̌ŗL�̒l�̐��Ɠ��������̐��l�x�N�g�� (���邢�́AGROUP ��
%   �J�e�S���̏ꍇ�AGROUP �ɑ΂��Ē�`���ꂽ���x����) �ɂȂ�܂��BGROUP �����l��
%   �J�e�S���̏ꍇ�APRIOR �̕��т́AGROUP ���̕��בւ���ꂽ�l�ɁA���邢�́A
%   GROUP ����������܂ޏꍇ�AGROUP ���̒l�� 1 �Ԗڂɔ���������тɑΉ����Ȃ����
%   �Ȃ�܂���BPRIOR �́A����ɁA�t�B�[���h 'prob' �����\���́A���l�x�N�g���A
%   ����сAGROUP �Ɠ����^�C�v�� 'prob' �̗v�f���ǂ̃O���[�v�ɑΉ����邩������
%   �ŗL�̒l���܂� 'group' ������ 1 x 1 �̍\���̂ɂ��ł��܂��B�\���̂̏ꍇ�A
%   PRIOR �́AGROUP �Ɍ���Ȃ��O���[�v���܂މ\��������܂��B����́ATRAINING ��
%   ���傫���P���̏W���̃f�[�^�ł���ꍇ�ɖ𗧂��܂��BCLASSIFY �́A�\���̓���
%   ���邢�����̃O���[�v�𖳎����܂����AGROUPS �z����̃O���[�v�͖������܂���B
%   �ŏI�I�ɁAPRIOR �́ATRAINING ���̕p�x�Ɋ֘A����O���[�v���琄�肷��K�v��
%   ����O���[�v�̑O�̊m��������������̒l 'empirical' �ɂȂ�܂��BPRIOR ��
%   �f�t�H���g�́A�������m���A���Ȃ킿�A��l���z�̐��l�x�N�g���ł��BPRIOR �́A
%   �덷��̌v�Z�ȊO�́A�}�n���m�r�X�����ɂ�鎯�ʂ̂��߂Ɏg�p����܂���
%
%   [CLASS,ERR] = CLASSIFY(...) �́A�P���f�[�^�Ɋ�Â��딻�ʂ̌덷�̐��� ERR 
%   ��Ԃ��܂��BCLASSIFY �́A�������̌덷���A���Ȃ킿�A�O���[�v�ɑ΂��đO��
%   �m���ŏd�ݕt������A�딻�ʂ��ꂽ TRAINING �̊ϑ��l�̊�����Ԃ��܂��B
%
%   [CLASS,ERR,POSTERIOR] = CLASSIFY(...) �́Aj �Ԗڂ̌P���̃O���[�v�� i �Ԗ�
%   �̕W�\�̊ϑ��̌��ƂȂ��̈�̊m���A���Ȃ킿 Pr{group j | obs i} ���܂�
%   �s�� POSTERIOR ��Ԃ��܂��BPOSTERIOR �́A�}�n���m�r�X�̎��ʂɑ΂��Čv�Z
%   ����܂���B
%
%   [CLASS,ERR,POSTERIOR,LOGP] = CLASSIFY(...) �́A�^����ꂽ���ׂẴO���[�v
%   �S�� p(obs i | group j)*Pr{group j} �̘a�ł���W�{�̊ϑ� p(obs i) �̏�����
%   �Ȃ��\���m�����x�̑ΐ��̐�����܂ރx�N�g�� LOGP ��Ԃ��܂��BLOGP �́A
%   �}�n���m�r�X�̎��ʂɑ΂��Čv�Z����܂���B
%
%   [CLASS,ERR,POSTERIOR,LOGP,COEF] = CLASSIFY(...) �́A�O���[�v�̊e�g��
%   ���킹�𕪗�����̈�Ԃ̋��E���L�q����W�����܂ލ\���̔z�� COEF ��Ԃ��܂��B
%   �e�v�f COEF(I,J) �́A�ȉ��̃t�B�[���h���g���Ē�`���ꂽ�O���[�v I �ƃO���[�v J 
%   ���r���邽�߂̏����܂�ł��܂��B
%       'type'      TYPE �̓��͂Ɋ�Â����ʊ֐��̃^�C�v
%       'name1'     �g�ݍ��킹�̍ŏ��̃O���[�v�� (�O���[�v I)
%       'name2'     �g�ݍ��킹�� 2 �Ԗڂ̃O���[�v�� (�O���[�v J)
%       'const'     ���E�������̒萔�� (K)
%       'linear'    ���E�������̐��`���̌W�� (L)
%       'quadratic' 2 ���̍��̌W���s�� (Q)
%
%   'linear' �� 'diaglinear' �ł́A'quadratic' �t�B�[���h�͑��݂����A
%   SAMPLE �z��̍s x �́A�ȉ��̏����̏ꍇ�A�O���[�v J �ł͂Ȃ��O���[�v 
%   I �ɕ��ނ���܂��B
%         0 < K + x*L
%   ���̃^�C�v�ł́Ax �́A�ȉ��̏����̏ꍇ�A�O���[�v I �ɕ��ނ���܂��B
%         0 < K + x*L + x*Q*x'
%
%   ��:
%      % 2 ���̔��ʊ֐����g���ăt�B�b�V���[�̃A�C���X�f�[�^�𕪗ނ��܂�
%      load fisheriris
%      x = meas(51:end,1:2);  % 2 �� species (2 �s) ���g�p���܂��B
%      y = species(51:end);
%      [c,err,post,logl,str] = classify(x,x,y,'quadratic');
%      gscatter(x(:,1),x(:,2),y,'rb','v^')
%
%      % x-y ���ʂɑ΂��ĕ��ނ��܂�
%      [X,Y] = meshgrid(linspace(4.3,7.9), linspace(2,4.4));
%      X = X(:); Y = Y(:);
%      C = classify([X Y],x,y,'quadratic');
%      hold on; gscatter(X,Y,C,'rb','.',1,'off'); hold off
%
%      % 2 �̗̈�Ԃ̋��E��`�悵�܂�
%      hold on
%      K = str(1,2).const;
%      L = str(1,2).linear;
%      Q = str(1,2).quadratic;
%      f = sprintf('0 = %g + %g*x + %g*y + %g*x^2 + %g*x.*y + %g*y.^2', ...
%                  K,L,Q(1,1),Q(1,2)+Q(2,1),Q(2,2));
%      ezplot(f,[4 8 2 4.5]);
%      hold off
%      title('Classification of Fisher iris data')
%
%   �Q�l CLASSREGTREE.


%   Copyright 1993-2009 The MathWorks, Inc.
