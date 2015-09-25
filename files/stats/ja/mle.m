%MLE  �Ŗސ���
%
%   PHAT = MLE(DATA) �́A�x�N�g�� DATA ���̕W�{�f�[�^���g���Čv�Z���ꂽ
%   ���K���z�̃p�����[�^�ɑ΂���Ŗސ��� (MLE) ��Ԃ��܂��B
%
%   [PHAT, PCI] = MLE(DATA) �́AMLE �ƃp�����[�^�� 95% �̐M����Ԃ�Ԃ��܂��B
%
%   [...] = MLE(DATA,'distribution',DIST) �́ADIST �Ŏw�肳�ꂽ���z�ɑ΂���
%   �p�����[�^������v�Z���܂��BDIST �́A�ȉ��̕��z�̃��X�g����I�������
%   ������ł��B
%
%       'beta'                             �x�[�^
%       'bernoulli'                        �x���k�[�C
%       'binomial'                         ��
%       'discrete uniform' �܂��� 'unid'   ���U��l
%       'exponential'                      �w��
%       'extreme value' �܂��� 'ev'        �ɒl
%       'gamma'                            �K���}
%       'generalized extreme value' 'gev'  ��ʉ��ɒl
%       'generalized pareto' �܂��� 'gp'   ��ʉ��p���[�g
%       'geometric'                        ��
%       'lognormal'                        �ΐ����K
%       'negative binomial' �܂��� 'nbin'  ���̓�
%       'normal'                           ���K
%       'poisson'                          �|�A�\��
%       'rayleigh'                         ���C���[
%       'uniform'                          ��l
%       'weibull' or 'wbl'                 ���C�u��
%
%   [...] = MLE(DATA, ..., 'NAME1',VALUE1,'NAME2',VALUE2,...) �́A�ȉ���
%   ���X�g����I�������I�v�V���������̖��O/�l�̑g�ݍ��킹���w�肵�܂��B
%   �������́A�啶���������̋�ʂ��Ȃ��A������v�ō\���܂���B
%
%        ���O         �l
%      'censoring'    DATA �̑Ή�����v�f���E���ł��؂�̏ꍇ�� 1�A
%                     �Ή�����v�f���������ϑ��̏ꍇ�� 0 ���܂� DATA ��
%                     �����T�C�Y�̘_���̃x�N�g���ł��B
%                     �f�t�H���g�́A���ׂĐ������ϑ����ꂽ�ϑ��l�ł��B
%                     �ł��؂�͂��ׂĂ̕��z�ɑ΂��ăT�|�[�g����Ă��܂���B
%      'frequency'    DATA �̑Ή�����v�f�ɑ΂���񕉂̐����̕p�x���܂� 
%                     DATA �Ɠ����T�C�Y�̃x�N�g���ł��B�f�t�H���g�́A
%                     DATA �� 1 �̗v�f�ɑ΂��� 1 �̊ϑ��l�ł��B
%      'alpha'        PCI �ɑ΂��� 100*(1-alpha)% �̐M����Ԃ��w�肷�� 
%                     0 �� 1 �̊Ԃ̒l�ł��B�f�t�H���g�́A95% �̐M����Ԃ�
%                     �΂��� alpha=0.05 �ł��B
%      'ntrials'      DATA �̑Ή�����v�f�ɑ΂��鎎�s�̑������܂ށADATA ��
%                     �����T�C�Y�̃X�J���A�܂��̓x�N�g���ł��B�񍀕��z�ɂ̂�
%                     �K�p����܂��B
%      'options'      �ߎ��A���S���Y���ɑ΂��鐔�l�I�v�V�������܂ށA
%                     STATSET ���Ăяo�����Ƃō쐬�����\���̂ł��B
%                     ���ׂĂ̕��z�ɓK�p�\�ł͂���܂���B
%
%   MLE �́A���z�֐����g���Ē�`���ꂽ�J�X�^���̕��z�ɋߎ����邱�Ƃ��\�ł��B
%   �ȉ��� 3 �̕��@�̂����ꂩ���g���܂��B
%
%   [...] = MLE(DATA,'pdf',PDF,'cdf',CDF,'start',START,...) �́A�m�����x��
%   �ݐϕ��z�֐� PDF �� CDF �Œ�`���ꂽ���z�̃p�����[�^�ɑ΂��� MLE ��Ԃ��܂��B
%   PDF �� CDF �́A@ ���g���č쐬���ꂽ�֐��n���h���ł��B�����́A�f�[�^��
%   �����̌X�̕��z�p�����[�^�̓��͂��󂯓���A�m�����x�̒l�Ɨݐϕ��z�̒l��
%   �ʁX�ɕԂ��܂��B'censoring' �̖��O/�l�̑g�����݂��Ȃ��ꍇ�A'cdf' ��
%   ���O/�l�̑g�ݍ��킹���ȗ��ł��܂��BMLE �́A���z�̑ΐ��ޓx�𐔒l�I��
%   �ő�ɂ��邱�ƂŐ�����v�Z���ASTART �́A�p�����[�^�ɑ΂��鏉���l���܂�
%   �x�N�g���ɂȂ�܂��B
%
%   [...] = MLE(DATA,'logpdf',LOGPDF,'logsf',LOGSF,'start',START,...) �́A
%   �ΐ��m�����x�Ƒΐ������֐� LOGPDF �� LOGSF �Œ�`���ꂽ���z�̃p�����[�^��
%   �΂��� MLE ��Ԃ��܂��BLOGPDF �� LOGSF �́A@ ���g���č쐬���ꂽ�֐��n���h���ł��B
%   �����́A�f�[�^�ƕ����̌X�̕��z�p�����[�^�̓��͂��󂯓���A�ΐ��̕��z
%   ���x�̒l�Ƒΐ��̐����֐��̒l��ʁX�ɕԂ��܂��B���̌`���́APDF �� CDF �֐���
%   �g���ꍇ�����A�J�n�_��I�����邱�Ƃɂ�A��胍�o�X�g�ɂȂ�܂��B
%   'censoring' �̖��O/�l�̑g�����݂��Ȃ��ꍇ�A'logsf' �̖��O/�l�̑g�ݍ��킹��
%   �ȗ��ł��܂��BSTART �́A���z�̃p�����[�^�ɑ΂��鏉���l���܂ރx�N�g���ł��B
%
%   [...] = MLE(DATA,'nloglf',NLOGLF,'start',START,...) �́ANLOGLF �ŗ^����ꂽ
%   ���z�̕��̑ΐ��ޓx�̃p�����[�^�ɑ΂��� MLE ��Ԃ��܂��BNLOGLF �́A4 ��
%   ���͈������󂯓���� @ ���g���č쐬���ꂽ�֐��n���h���ł��B
%      PARAMS - ���z�p�����[�^�l�̃x�N�g��
%      DATA   - �f�[�^�̃x�N�g��
%      CENS   - �ł��؂�̒l�̘_���x�N�g��
%      FREQ   - �����̃f�[�^�̕p�x�̃x�N�g��
%   NLOGLF �́A'censoring' �܂��� 'frequency' �̖��O/�l�̑g�ݍ��킹 
%   (��L���Q��) ���w�肵�Ȃ��Ă��A4 �̈������ׂĂ�^���Ȃ���΂Ȃ�܂���B
%   �������ANLOGLF �́A���̂悤�ȏꍇ�ACENS �� FREQ �̈����𖳎����邱�Ƃ��ł��܂��B
%   NLOGLF �́A�X�J���̕��̑ΐ��ޓx�l�ƁA����ɁA���̑ΐ��ޓx�̌��z�x�N�g����
%   �Ԃ��܂� ('GradObj' �� STATSET �͈ȉ����Q�Ƃ��Ă�������)�B
%   START �́A���z�̃p�����[�^�ɑ΂��鏉���l���܂ރx�N�g���ł��B
%
%   PDF, CDF, LOGPDF, LOGSF �܂��� NLOGLF �́A�ŏ��̗v�f����L�Œ�`���ꂽ
%   �֐��n���h���ŁA�c��̗v�f���֐��ւ̒ǉ��̈����ƂȂ�Z���z��ɂ��Ȃ�܂��B
%   MLE �͊֐��Ăяo���̈������X�g�̍Ō�ɂ����̈�����u���܂��B
%
%   �ȉ��̒ǉ��̈��� ���O/�l �̑g�ݍ��킹�́A'pdf' �� 'cdf'�A'logpdf' �� 
%   'logcdf'�A���邢�� 'nloglf' ���^����ꂽ�ꍇ�ɂ̂ݗL���ł��B
%
%      'lowerbound'   ���z�p�����[�^�ɑ΂��鉺�����܂� START �Ɠ����T�C�Y��
%                     �x�N�g���ł��B�f�t�H���g�� -Inf �ł��B
%      'upperbound'   ���z�p�����[�^�ɑ΂��������܂� START �Ɠ����T�C�Y��
%                     �x�N�g���ł��B�f�t�H���g�� Inf �ł��B
%      'optimfun'     �ޓx���ő�ɂ��邽�߂̍œK���֐����� 'fminsearch' 
%                     �܂��� 'fmincon' �̂����ꂩ�̕�����ł��B�f�t�H���g�́A
%                     'fminsearch' �ł��BOptimization Toolbox �����p�\�ȏꍇ�A
%                     'fmincon' �̂ݎw�肷�邱�Ƃ��ł��܂��B
%
%   �J�X�^���̕��z�ɋߎ�����ꍇ�A�ŖލœK���̏ڍׂ𐧌䂷�邽�߂� 
%   'options' �p�����[�^���g���܂��B�p�����[�^���ƃf�t�H���g�l�ɂ��ẮA
%   STATSET('mlecustom') ���Q�Ƃ��Ă��������BMLE �́A�ȉ��̂悤�ɁA�ߎ�����
%   �J�X�^���̕��z�ɑ΂��Ĉȉ��� STATSET �p�����[�^�����߂��܂��B
%
%      'GradObj'      2 �Ԗڂ̏o�͂Ƃ��ĕ��̑ΐ��ޓx�̌��z�x�N�g����Ԃ�
%                     ���߂ɁA'nloglf' �̖��O/�l�̑g�ݍ��킹�ŗ^����ꂽ
%                     �֐��Ɨ\������� FMINCON ���ǂ��������� 'on' �� 
%                     'off' �̕�����ł��B�f�t�H���g�� 'off' �ł��B
%                     FMINSEARCH ���g���ꍇ�͖�������܂��B
%      'DerivStep'    ���Δ����́AFMINCON ���g���ꍇ�̗L�������ɂ�铱�֐�
%                     �ߎ��Ŏg���A'GradObj' �� 'off' �ɂȂ�܂��B
%                     �X�J�����ASTART �Ɠ����T�C�Y�ł��B�f�t�H���g�́A
%                     EPS^(1/3) �ł��BFMINSEARCH ���g���ꍇ�͖�������܂��B
%      'FunValCheck'  MLE �͑Ó����ɑ΂���J�X�^���ȕ��z�֐��ŏo�͂��ꂽ�l��
%                     �`�F�b�N���邩�ǂ��������� 'on' �� 'off' �̕�����ł��B
%                     �f�t�H���g�� 'on' �ł��B�J�n�_�̗ǂ��Ȃ��I���́A
%                     �K�؂ȃG���[�`�F�b�N�Ȃ��ŋL�q����Ă���ꍇ�A���X
%                     �����̊֐��́ANaN�A�����l�A���邢�́A�͈͊O�̒l��
%                     �Ԃ����ƂɂȂ�܂��B
%       'TolBnd'      FMINCON ���g���ꍇ�̏���Ɖ����ɑ΂���I�t�Z�b�g�ł��B
%                     MLE �́A�����ȕs���� (���Ȃ킿�A�J���E) �Ƃ��ď����
%                     �����������܂��BFMINCON �́A����� TolBnd �Ŏw�肵��
%                     ����Ɖ�������}�������������E����邱�Ƃŋߎ����܂��B
%                     �f�t�H���g�́A1e-6 �ł��B
%
%   �Q�l BETAFIT, BINOFIT, EXPFIT, EVFIT, GAMFIT, LOGNFIT, NORMFIT, NBINFIT, 
%        POISSFIT, RAYLFIT, UNIFIT, WBLFIT, MLECOV, STATSET.


%   Copyright 1993-2008 The MathWorks, Inc.
