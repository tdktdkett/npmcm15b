%MVREGRESS  �����l�������ϗʉ�A
%
%   [BETA,SIGMA,RESID]=MVREGRESS(X,Y) �́AX �̗\���ϐ��ɂ��Ă� N x D ��
%   �s�� Y �̑��ϗʂ̊ϑ��̑��ϗʉ�A���s�Ȃ��A�W������l�� P x 1 �̗�x�N�g���� 
%   Y �̐��肳�ꂽ�����U�� D x D �̍s�� SIGMA �Ǝc���� N x D �̍s�� RESID ��
%   �Ԃ��܂��BX �܂��� Y �� NaN �l�́A�����l�Ƃ��Ď󂯓���܂��BX �� �����l��
%   ���ϑ��l�͖�������܂��BY �̌����l�́A�ȉ��ɋL�q����� 'algorithm' 
%   �p�����[�^�̒l�Ɋւ���n���h���ł��B
%
%   Y �́AD-�����̑��ϗʊϑ��� N x D �̍s��ł��BX �́A�s�񂩃Z���z���
%   �����ꂩ�ɂȂ�܂��BD=1 �̏ꍇ�AX �́A�\���ϐ��� N x P �̌v��s��ɂȂ�܂��B
%   D �̔C�ӂ̒l�ɂ����āAX �́A�e�Z���� 1 �̑��ϗʊϑ��ɑ΂��� D x P ��
%   �v��s����܂ޒ��� N �̃Z���z��ɂ��Ȃ�܂��B���ׂĂ̊ϑ������� D x P ��
%   �v��s��̏ꍇ�AX �͒P��̃Z���ɂȂ�܂��B
%
%   [BETA,SIGMA,RESID,VARPARAM]=MVREGRESS(...) �́A����l�̐��肳�ꂽ�����U
%   �s����Ԃ��܂��B�f�t�H���g�ł́A���邢�́A'varformat' �� 'beta' �̏ꍇ 
%   (�ȉ����Q��)�AVARPARAM �́A�W������l BETA �̐��肳��鋤���U�s��ł��B
%   'varformat' �p�����[�^�� 'full' �̏ꍇ�AVARPARAM �́ABETA �� SIGMA ��
%   ����l�̐��肳��鋤���U�s��ł��B
%
%   [BETA,SIGMA,RESID,VARPARAM,OBJECTIVE]=MVREGRESS(...) �́A�Ō�̌J��Ԃ���
%   ��ŁA�ړI�֐��A�܂��́A�ΐ��ޓx�̒l��Ԃ��܂��B
%
%   [...]= MVREGRESS(X,Y,'PARAM1',VALUE1,'PARAM2',VALUE2,...) �́A�ȉ�����
%   �I�������ǉ��p�����[�^�̖��O/�l�̑g�ݍ��킹���w�肵�܂��B
%     'algorithm'  ECM �A���S���Y���ɂ��Ŗސ�����v�Z����ɂ� 'ecm'�A
%                  (���͂̋����U�s��ŏd�ݕt�������I�v�V�����̏����t����) 
%                  �ŏ��������s����ɂ� 'cwls'�A�����f�[�^�����ϑ����ȗ����A
%                  �����̑��ϗʐ��K�̐�����v�Z����ɂ� 'mvn' �̂����ꂩ�B
%                  �f�t�H���g�́A���S�ȃf�[�^�ɑ΂��� 'mvn'�A�W�{�T�C�Y��
%                  ���ׂẴp�����[�^�𐄒肷��̂ɏ\���ł���ꍇ�̌���
%                  �f�[�^�ɑ΂��� 'ecm'�A����ȊO�̏ꍇ�� 'cwls' �ł��B
%     'covtype'    ��X�p�[�X�̋����U�s���������ɂ� 'full' (�f�t�H���g)�A
%                  �܂��́A�Ίp�s��ɂȂ�悤��������ɂ� 'diagonal' �̂����ꂩ�B
%     'maxiter'    �ő�J��Ԃ��� (�f�t�H���g 100)�B
%     'tolbeta'    BETA �̎����̋��e�덷 (�f�t�H���g sqrt(eps))
%                  �J��Ԃ��́ATOLBETA �� TOLOBJ �̏��������������܂ő������܂��B
%                  �J��Ԃ� k �ł̎����̌���́A
%                  ||BETA(k)-BETA(k-1)|| < sqrt(P)*TOLBETA * (1+||BETA(k)||) 
%                  �ƂȂ�A������ ||v|| �́A�x�N�g�� v �̃m������\���܂��B
%     'tolobj'     �ړI�֐��̕ω��ɑ΂�������̋��e�덷 (�f�t�H���g eps^(3/4))�B
%                  ����� |Obj(k)-Obj(k-1)| < TolObj * (1 + |Obj(k)|) �ł��B
%                  TOLOBJ �� TOLBETA �������Ƃ� 0 �̏ꍇ�A�֐��́A������
%                  ����������� MAXITER ��̌J��Ԃ����s�Ȃ��܂��B
%     'param0'     PARAM �ɑ΂��鏉������Ƃ��Ďg�p���邽�߂� P �v�f�̃x�N�g���B
%                  �f�t�H���g�� 0 �̃x�N�g���ł��B'mvn' �A���S���Y���ł͎g�p���܂���B
%     'covar0'     SIGMA �ɑ΂��鏉������Ƃ��Ďg�p���邽�߂� D x D �̍s��B
%                  �f�t�H���g�͒P�ʍs��ł��B���͒l�́A�e�J��Ԃ��ŏd�ݍs��Ƃ���
%                  �g���邽�߁A�ʏ�A'cwls' �A���S���Y���ɑ΂��Ă��̍s���
%                  �Ίp�s��ŁA�J��Ԃ��̊Ԃ͕ύX����܂���B
%     'outputfcn'  �o�͊֐��B
%     'varformat'  BETA �����ɑ΂��� VARPARAM ���v�Z����ɂ� 'beta' (�f�t�H���g)�A
%                  BETA �� SIGMA �̗����ɑ΂��� VARPARAM ���v�Z����ɂ� 'full' ��
%                  �����ꂩ�ł��B
%     'vartype'    �w�V�A���A�܂��� �ϑ������g�p�� VARPARAM ���v�Z����ɂ� 
%                  'hessian' (�f�t�H���g)�A�܂��́A���S�ȃf�[�^�̃t�B�b�V���[�A
%                  �܂��͗\�z���ꂽ�����v�Z����ɂ� 'fisher' �̂����ꂩ�ł��B
%                  'hessian' ���\�b�h�́A�����f�[�^�̂��߂ɑ��������s�m������
%                  �l�����܂����A'fisher' ���\�b�h�͍l�����܂���B
%
%   Y �̌����l�ɑΉ����� RESID �l�́AY �ɑ΂�������t���̓��͒l�Ƌߎ������l��
%   �Ԃł͈Ⴂ������܂��BSIGMA �̐���l�́ARESID �s��̕W�{�̋����U�s��ł�
%   ����܂���B
%
%   �o�͊֐��́A3 �̈����ŌĂяo����܂��B
%      1.  ���݂̃p�����[�^����l�̃x�N�g��
%      2.  �����U�s��̌��݂̒l�̑΂��� 'Covar'�A���݂̌J��Ԃ����ɑ΂��� 
%          'iteration'�A�ړI�֐��̌��݂̒l�ɑ΂��� 'fval' �̃t�B�[���h��
%          ���\���́B
%      3.  ���������ɌĂяo�����ꍇ 'init'�A�J��Ԃ���ɌĂяo�����ꍇ 
%          'iter'�A������ɌĂяo�����ꍇ 'done' �ƂȂ�e�L�X�g������B
%   �֐��́A�J��Ԃ��𒆎~����K�v������ꍇ�� TRUE�A������ꍇ�� FALSE ��
%   �Ԃ��܂��B
%
%   �Q�l REGSTATS, MANOVA1, MVREGRESSLIKE.


%    Copyright 2006-2009 The MathWorks, Inc.
