%CHI2GOF  �J�C���K��������
%
%   CHI2GOF �́A���U�A�܂��͘A�����z�ɑ΂���J�C���K��������s�Ȃ��܂��B
%   ����́A�r�����ւ̃f�[�^���O���[�v�����A�����̃r���ɑ΂��Ċϑ������
%   �J�E���g�Ɛ��肳���J�E���g���v�Z���A�J�C��挟�蓝�v�� SUM((O-E).^2./E) 
%   ���v�Z���邱�ƂŎ��s����܂��B�����ŁA0 �͊ϑ������J�E���g�ŁAE ��
%   ���肳���J�E���g�ł��B���̌��蓝�v�ʂ́A�J�E���g���\���傫���ꍇ��
%   �K�؂ȃJ�C��敪�z�������܂��B
%
%   5 �������������肳���J�E���g���������ꂩ�̐� (tail) �̃r���́A
%   ���ꂼ��̋ɒl�̃r���̃J�E���g�����Ȃ��Ƃ� 5 �ɂȂ�܂ŋߖT�̃r����
%   ��������܂��B�r���� 5 �����������J�E���g�������Ɏc��ꍇ�ACHI2GOF ��
%   �x����\�����܂��B���̏ꍇ�A���ׂẴr�����̐��肳���J�E���g��
%   ���₷���߂ɁA���Ȃ��r�����g�p����A�܂��̓r���̒��S���G�b�W��^����
%   �K�v������܂��B
%
%   H = CHI2GOF(X) �́AX ���琄�肳��镽�ςƕ��U�������K���z����̖����
%   �W�{�ł���x�N�g�� X �̃f�[�^�̃J�C���K��������s�Ȃ��܂��B���ʂ́A
%   (X �����K���z����̖���וW�{�ł���Ƃ���) �A�������� 5% �̗L�Ӑ�����
%   ���p�ł��Ȃ��ꍇ�� H=0�A���邢�́A�A�������� 5% �̐����Ŋ��p�ł���ꍇ�� 
%   H=1 �ɂȂ�܂��BCHI2GOF �́ANBINS=10 �̃r�����g�p���A���肳��� 2 ��
%   �p�����[�^���l�����āANBINS-3 �̎��R�x�����J�C��敪�z�ƌ��蓝�v�ʂ�
%   ��r���܂��B
%
%   [H,P] = CHI2GOF(...) �́Ap-�l P ���Ԃ��܂��BP �̒l�́A�^����ꂽ���ʂ�
%   �ϑ�����m���A�܂��́A�A���������^�̏ꍇ�͕����̋ɒl�ɂȂ�܂��B�����
%   �s�����߂̏\���Ȏ��R�x���Ȃ��ꍇ�AP �� NaN �ɂȂ�܂��B
%
%   [H,P,STATS] = CHI2GOF(...) �́A�ȉ��̃t�B�[���h������ STATS �\���̂�
%   �Ԃ��܂��B
%      'chi2stat'  �J�C��擝�v��
%      'df'        ���R�x
%      'edges'     ������̃r���̃G�b�W�̃x�N�g��
%      'O'         �e�r�����̊ϑ������J�E���g
%      'E'         �e�r�����̕K�v�ȃJ�E���g
%
%   [...] = CHI2GOF(X,'NAME1',VALUE1,'NAME2',VALUE2,...) �́A�ȉ��̃��X�g����
%   �I�������I�v�V���������̖��O�ƒl�̑g�ݍ��킹���w�肵�܂��B
%   �������́A�啶���������̋�ʂ��Ȃ��A������v�ō\���܂���B
%
%   �ȉ��̃I�v�V�����́A�����O�̃f�[�^�̏����̊J�n�𐧌䂵�܂��B
%   �����̃I�v�V�����̂������͎w�肷��K�v�͂���܂���B
%
%      ���O       �l
%     'nbins'     �g�p����r�����B�f�t�H���g�� 10 �ł��B
%     'ctrs'      �r���̒��S�̃x�N�g���B
%     'edges'     �r���̃G�b�W�̃x�N�g���B
%
%   �ȉ��̃I�v�V�����́A����ɑ΂���A�����z�����肵�܂��B
%   'cdf' �� 'expected' �̗������w�肷��K�v�͂���܂���B
%
%      ���O       �l
%     'cdf'       ���S�Ɏw�肳�ꂽ�ݐϕ��z�֐��B����� ProbDist �I�u�W�F�N�g�A
%                 �֐��n���h���A�܂��͊֐��̂����ꂩ�ɂȂ�܂��B�֐��́AX �l��
%                 �����Ƃ��Ă̂ݗ^���Ȃ���΂Ȃ�܂���B
%                 ���邢�́A1 �Ԗڂ̗v�f���֐������֐��n���h���ŁA��̗v�f��
%                 �Z�����Ƀp�����[�^�l������Z���z��ɂ��邱�Ƃ��\�ł��B
%                 �֐��́AX �̒l 1 �Ԗڂ̈����Ƃ��A���̃p�����[�^����̈���
%                 �Ƃ��ė^���Ȃ���΂Ȃ�܂���B
%     'expected'  �e�r���̐��肳���J�E���g���w�肷��r������ 1 �̗v�f��
%                 ���x�N�g���B
%     'nparams'   ���肳���p�����[�^���BNBINS-1-NPARAMS �ƂȂ�悤���R�x��
%                 �������邽�߂Ɏg�p����܂��B�����ŁANBINS �̓r�����ł��B
%
%   'cdf' �܂��� 'expected' �̓��͂́A���肳���p�����[�^�Ɉˑ�����ꍇ�A
%   ����������ɑ΂��鎩�R�x��ۏ؂��邽�߂� 'nparams' �p�����[�^���g�p����
%   �K�v������܂��B�f�t�H���g�� 'nparams' �l�ȊO�́A�ȉ��̂Ƃ���ł��B
%
%     'cdf' �� ProbDist �I�u�W�F�N�g�̏ꍇ: ���肳���p�����[�^��
%     'cdf' ���֐��̏ꍇ:                   0
%     'cdf' ���Z���z��̏ꍇ:               �z����̃p�����[�^��
%     'expected' ���w�肳�ꂽ�ꍇ:          0
%
%   �ȉ��̃I�v�V�����͌���̑��̑��ʂ𐧌䂵�܂��B
%
%      ���O       �l
%     'emin'      �r���̍ŏ����e����l�B���̗ʂ�菬��������l�������ׂĂ�
%                 ���̔C�ӂ̃r���́A�ߖT�̃r���ɍ�������܂��B�����������ɂ́A
%                 0 �̒l���g�p���Ă��������B�f�t�H���g�� 5 �ł��B
%     'frequency' �Ή����� X �̒l�̕p�x���܂� X �Ɠ��������̃x�N�g���B
%     'alpha'     P<ALPHA �̏ꍇ�ɋA�����������p����悤�� ALPHA �l�B
%                 �f�t�H���g�� ALPHA=0.05 �ł��B
%
%
%   ��:
%
%      % ���w��̐��K���z�ɑ΂��� (���Ȃ킿���肵���p�����[�^��) �����
%      % �s�Ȃ� 3 �̓����ȕ��@
%      x = normrnd(50,5,100,1);
%      [h,p] = chi2gof(x)
%      [h,p] = chi2gof(x,'cdf',@(z)normcdf(z,mean(x),std(x)),'nparams',2)
%      [h,p] = chi2gof(x,'cdf',{@normcdf,mean(x),std(x)})
%
%      % �W�����K���z (���� 0�A�W���΍� 1) �ɑ΂��錟��
%      x = randn(100,1);
%      [h,p] = chi2gof(x,'cdf',@normcdf)
%
%      % �W����l���z�ɑ΂��錟��
%      x = rand(100,1);
%      n = length(x);
%      edges = linspace(0,1,11);
%      expectedCounts = n * diff(edges);
%      [h,p,st] = chi2gof(x,'edges',edges,'expected',expectedCounts)
%
%      % �ϑ������J�E���g�Ɛ��肳���J�E���g�̎w��ɂ��|�A�\�����z��
%      % �΂��錟��
%      bins = 0:5; obsCounts = [6 16 10 12 4 2]; n = sum(obsCounts);
%      lambdaHat = sum(bins.*obsCounts) / n;
%      expCounts = n * poisspdf(bins,lambdaHat);
%      [h,p,st] = chi2gof(bins,'ctrs',bins,'frequency',obsCounts, ...
%                         'expected',expCounts,'nparams',1)
%
%   �Q�l CROSSTAB, CHI2CDF, KSTEST, LILLIETEST.


%   Copyright 2005-2009 The MathWorks, Inc. 