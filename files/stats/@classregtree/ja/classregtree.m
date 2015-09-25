%CLASSREGTREE  ���ނ܂��͉�A�؃I�u�W�F�N�g�̍쐬
%
%   T = CLASSREGTREE(X,Y) �́A�\���q X �̊֐��Ƃ��ĉ��� Y ��\�����邽�߂�
%   ����� T ���쐬���܂��BX �́A�\���l�� N �s M ��̍s��ł��BY ������ N ��
%   �����l�̃x�N�g���̏ꍇ�ACLASSREGTREE �͉�A�����s���܂��BY ���J�e�S���ϐ��A
%   �����z��A�܂��́A������̃Z���z��̏ꍇ�ACLASSREGTREE �͕��ނ����s���܂��B
%   �ǂ���̏ꍇ�ł��AT �́A���ꂼ��̏I�[�łȂ��m�[�h�� X �̗�̒l�Ɋ�Â���
%   ��������񕪖؂ł��BX �܂��� Y ���� NaN �l�́A�����l�ƂȂ�悤�ɗ^�����A
%   �����l�����ϑ��́A�ߎ��Ŏg�p����܂���B
%
%   T = CLASSREGTREE(X,Y,'PARAM1',val1,'PARAM2',val2,...) �́A�I�v�V����
%   �p�����[�^�̖��O�ƒl�̑g�ݍ��킹���w�肵�܂��B:
%
%   ���ׂẴc���[�ɑ΂���I�v�V����:
%      'categorical' �J�e�S���ϐ�����בւ��Ȃ��悤�Ɉ������߂� X �̗��
%                   �C���f�b�N�X�x�N�g���B
%      'method'     'regression' (Y �����l�̏ꍇ�̃f�t�H���g) �܂��� 
%                   'classification' (Y �����l�łȂ��ꍇ�̃f�t�H���g) �̂����ꂩ�B
%      'names'      �\���ϐ��ɑ΂��閼�O�̃Z���z�� (�쐬���ꂽ�c���[���� X ��
%                   �s��̏�)�B
%      'prune'      ���S�ȃc���[�Ǝ�菜���ꂽ�T�u�c���[�̍œK�ȗ���v�Z����
%                   �ꍇ�� 'on' (�f�t�H���g)�A�܂��́A��菜�����Ɋ��S�ȃc���[��
%                   �v�Z����ꍇ�� 'off'
%      'minparent'  �s���S�ȃm�[�h�� K�A�܂��́A�������邽�߂̕����̊ϑ���
%                   �����Ȃ���΂Ȃ�Ȃ��悤�Ȑ� K (�f�t�H���g 10)
%      'minleaf'    �c���[�̃��[�t���Ƃ̍ŏ��ϑ��� (�f�t�H���g�� 1)�B
%                   'minparent' �� 'minleaf' �̗������^����ꂽ�ꍇ�A
%                   ���̂悤�ɁA�ő�̃��[�t�ƂȂ�ݒ肪�g���܂��B
%                   MINPARENT = MAX(MINPARENT,2*MINLEAF)
%      'nvartosample' �������Ƃɖ���ׂɑI�����ꂽ�\���ϐ��̐��B
%                   �f�t�H���g�ł́A���ׂĂ̕ϐ��͌��蕪�����Ƃɍl������܂��B
%      'mergeleaves' �����e�m�[�h���琶���郊�[�t���}�[�W���A�e�m�[�h�Ɋ֘A
%                   ���郊�X�N�ȏ�̃��X�N�l�̘a��^����ꍇ�� 'on' (�f�t�H���g)�B
%                   'off' �̏ꍇ�A���[�t�̓}�[�W����܂���B
%
%   ��A�؂݂̂̃I�v�V����:
%      'qetoler'     ��A�؂̏ꍇ�Ƀm�[�h���Ƃ̓񎟌덷�̋��e�덷���`�B
%                    �m�[�h���Ƃ̓񎟌덷�� QETOLER*QED ��菬�����Ȃ�ƁA
%                    �m�[�h�̕�������~���܂��B�����ŁAQED �͌���؂��傫��
%                    �Ȃ�O�ɁA���͔z�� Y �̕��ςƂ��Đ��肳�ꂽ YBAR ������ 
%                    QED = NORM(Y-YBAR) �Ƃ��Čv�Z�����S�f�[�^�ɑ΂���
%                    �񎟌덷�ł��B�f�t�H���g�� 1e-6 �ł��B
%
%   ���ޖ؂݂̂̃I�v�V����:
%      'cost'        �����s�� C�B�����ŁAC(i,j) �� true �̃N���X�� i �̏ꍇ��
%                    �N���X j �ɕ��ނ���_�̃R�X�g�ł� (�f�t�H���g�ŁAi~=j ��
%                    �ꍇ�� C(i,j)=1�Ai=j �̏ꍇ�� C(i,j)=0 �ł�)�B���邢�́A
%                    ���̒l�͎���2 �̃t�B�[���h�����\���� S �ɂ��邱�Ƃ��ł��܂��B
%                    �J�e�S���ϐ��A�����z��A�܂��́A������̃Z���z��Ƃ���
%                    �O���[�v�����܂� S.group�A�R�X�g�s�� C ���܂� S.cost�B
%      'splitcriterion'  ������I�����邽�߂̊�B�W�j�̑��l���w�W�ɑ΂��� 
%                    'gdi' (�f�t�H���g)�Atwoing rule �ɑ΂��� 'twoing'�A
%                    �ő�ُ̈팸���ɑ΂��� 'deviance' �̂����ꂩ�B
%      'priorprob'   �x�N�g�� (�قȂ�O���[�v�����Ƃ� 1 �̒l) �Ƃ��āA
%                    �܂��́A���� 2 �̃t�B�[���h�����\���� S �Ƃ��Ďw�肳���
%                    �N���X���Ƃ̑O�̊m���B�J�e�S���ϐ��A�����z��A�܂��́A
%                    ������̃Z���z��Ƃ��ăO���[�v�����܂� S.group�A�Ή�����
%                    �m���̃x�N�g�����܂� S.cost�B
%
%   ��:  �t�B�b�V���[�̃A�C���X�f�[�^�ɑ΂��镪�ޖ؂��쐬���܂��B
%      load fisheriris;
%      t = classregtree(meas, species,'names',{'SL' 'SW' 'PL' 'PW'});
%      view(t);
%
%   �Q�l CLASSREGTREE/EVAL, CLASSREGTREE/TEST, CLASSREGTREE/VIEW, 
%        CLASSREGTREE/PRUNE.


%   Copyright 2006-2009 The MathWorks, Inc. 
