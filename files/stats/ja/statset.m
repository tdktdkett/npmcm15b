%STATSET  STATS �I�v�V�����\���̂̍쐬/�C��
%
%   OPTIONS = STATSET('PARAM1',VALUE1,'PARAM2',VALUE2,...) �́A�w�肳�ꂽ
%   �p�����[�^���w�肳�ꂽ�l�������v�ʂ̃I�v�V�����\���� OPTIONS ���쐬���܂��B
%   �w�肳��Ă��Ȃ��p�����[�^�͂������ [] ���ݒ肳��܂��B���v�֐��� OPTIONS ��
%   �n���ꍇ�ɁA�p�����[�^�l�Ƃ��� [] ��ݒ肷��ƁA���̃p�����[�^�̃f�t�H���g�l
%   �𗘗p���邱�Ƃ��Ӗ����܂��B�p�����[�^�����ȗ����āA�ŗL�ɋ�ʂł��镶�����
%   ���Ďw�肷�邱�Ƃ��\�ł��B����: ������̒l�̃p�����[�^�ɑ΂��āA�l�ɑ΂���
%   ���S�ȕ����񂪕K�v�ł��B�����ȕ����񂪗^����ꂽ�ꍇ�A�f�t�H���g���g���܂��B
%
%   OPTIONS = STATSET(OLDOPTS,'PARAM1',VALUE1,...) �́A�w�肵���l�ŕύX���ꂽ
%   ���O�t���̃p�����[�^���g���� OLDOPTS �̃R�s�[���쐬���܂��B
%
%   OPTIONS = STATSET(OLDOPTS,NEWOPTS) �́A�V�����I�v�V�����\���� NEWOPTS ��
%   �����̃I�v�V�����\���� OLDOPTS �Ɍ������܂��B��łȂ��l������ NEWOPTS ����
%   �p�����[�^�́AOLDOPTS ���̑Ή�����Â��p�����[�^���㏑�����܂��B
%
%   ���͈����Əo�͈����������Ȃ� STATSET �́A���̃I�v�V�������g�p���邷�ׂĂ�
%   �֐��ɑ΂��ăf�t�H���g�������̏ꍇ�A�p�����[�^���Ƃ����̉\�Ȓl�� {} ����
%   �f�t�H���g�Ƌ��ɂ��ׂĕ\�����܂��B����̊֐��ɑ΂���֐��̎d�l�̏ڍׂ��Q��
%   ����ɂ́A(���L�Ɏ����悤��) STATSET(STATSFUNCTION) ���g�p���Ă��������B
%
%   OPTIONS = STATSET (���͈����������Ȃ�) �́A���ׂẴt�B�[���h�� [] ���ݒ�
%   ���ꂽ�I�v�V�����\���� OPTIONS ���쐬���܂��B
%
%   OPTIONS = STATSET(STATSFUNCTION) �́ASTATSFUNCTION ���Ɏw�肳�ꂽ�œK��
%   �֐��Ɋ֘A���邷�ׂẴp�����[�^���ƃf�t�H���g�l�����I�v�V�����\���̂�
%   �쐬���܂��BSTATSET �́ASTATSFUNCTION �ɑ΂��ėL���łȂ��p�����[�^�ɑ΂��āA
%   OPTIONS ���̃p�����[�^�� [] �ɐݒ肵�܂��B���Ƃ��΁Astatset('factoran') 
%   �܂��� statset(@factoran) �́A�֐� 'factoran' �Ɋ֘A���邷�ׂẴp�����[�^����
%   �f�t�H���g�l���܂ރI�v�V�����\���̂�Ԃ��܂��B
%
%   STATSET �p�����[�^:
%      Display     - �\�����x���B'off', 'iter', 'final'.
%      MaxFunEvals - �ړI�֐��]���̍ő勖�e�񐔁B���̐����ł��B
%      MaxIter     - �J��Ԃ��̍ő勖�e�񐔁B���̐����ł��B
%      TolBnd      - �p�����[�^�̋��E�̋��e�덷�B���̃X�J���ł��B
%      TolFun      - �ړI�֐��l�ɑ΂���I�����e�덷�B���̃X�J���ł��B
%      TolTypeFun  - 'TolFun' �̎g�p�@���w�肷��t���O�B'TolFun' ���΋��e�덷
%                    �Ƃ��Ďg�p����ꍇ 'abs'�A���΋��e�덷�Ƃ��Ďg�p����ꍇ 'rel'�B
%      TolX        - �p�����[�^�ɑ΂���I�����e�덷�B���̃X�J���ł��B
%      TolTypeX    - 'TolX' �̎g�p�@���w�肷��t���O�B'TolX' ���΋��e�덷�Ƃ���
%                    �g�p����ꍇ 'abs'�A���΋��e�덷�Ƃ��Ďg�p����ꍇ 'rel'�B
%      GradObj     - �ړI�֐��� 2 �Ԗڂ̏o�͂Ƃ��Č��z�x�N�g����Ԃ����ǂ�����
%                    �����t���O�B'off' �܂��� 'on'�B
%      Jacobian    - ���f���֐��� 2 �Ԗڂ̏o�͂Ƃ��ă��R�r�s���Ԃ����ǂ�����
%                    �����t���O�B'off' �܂��� 'on'�B
%      DerivStep   - �L�������ɂ�铱�֐��ߎ��Ɏg���鑊�Δ����B���̃X�J���A
%                    �܂��́A���肳��郂�f���p�����[�^�̃x�N�g���Ɠ����T�C�Y��
%                    �x�N�g���ł��B
%      FunValCheck - �ړI�֐����� NaN �� Inf �̂悤�Ȗ������o�͂���Ȃ�����
%                    �`�F�b�N�B'off' �܂��� 'on'�B
%      Robust      - ���o�X�g�ߎ��I�v�V�������Ăяo�����߂̃t���O�B
%                    'off' (�f�t�H���g) �܂��� 'on'�B
%      WgtFun      - ���o�X�g�ߎ��ɑ΂���d�݊֐��BRobust �� 'on' �̏ꍇ�̂�
%                    �L���ł��B'bisquare' (�f�t�H���g), 'andrews', 'cauchy', 
%                    'fair', 'huber', 'logistic', 'talwar' �܂��� 'welsch'�B
%                    ���͂Ƃ��Đ��K�����ꂽ�c�����󂯓����֐��n���h����
%                    ���邱�Ƃ��\�ŁA�o�͂Ƃ��ă��o�X�g�ȏd�݂�Ԃ��܂��B
%      Tune        - �d�݊֐���K�p����O�Ɏc���𐳋K�����邽�߂̃��o�X�g�ߎ�
%                    �Ŏg�p����钲���萔�B���̃X�J���ł��B�f�t�H���g�l�͏d��
%                    �֐��Ɉˑ����܂��B
%                    ���̃p�����[�^�́A�d�݊֐����֐��n���h���Ŏw�肳���ꍇ
%                    �ɕK�v�ł��B
%   �Q�l STATGET.


%   Copyright 1993-2009 The MathWorks, Inc.
