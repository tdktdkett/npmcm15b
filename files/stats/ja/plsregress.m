%PLSREGRESS  �����ŏ�����A
%
%   [XLOADINGS,YLOADINGS] = PLSREGRESS(X,Y,NCOMP) �́ANCOMP �� PLS �v�f�A
%   �܂��́A���݈��q���g���� X ��� Y �̕����ŏ�����A���v�Z���A�\���q��
%   �������חʂ�Ԃ��܂��BX �́A�ϑ��l�ɑΉ�����s�ƕϐ��̎��\���ϐ��� 
%   N�~P �̍s��ł��BY �́AN�~M �̉����s��ł��BXLOADINGS �́A�\�����חʂ� 
%   P�~NCOMP �̍s��ł��B�����ŁAXLOADINGS �̊e�s�́A�I���W�i���̗\���ϐ���
%   �ߎ����� PLS �v�f�̐��`�������`����W�����܂݂܂��BYLOADINGS �́A
%   �������חʂ� M�~NCOMP �̍s��ł��B�����ŁAYLOADINGS �̊e�s�́A�I���W�i����
%   �����ϐ����ߎ����� PLS �v�f�̐��`�������`����W�����܂݂܂��B
%
%   [XLOADINGS,YLOADINGS,XSCORES] = PLSREGRESS(X,Y,NCOMP) �́A�\���X�R�A�A
%   ���Ȃ킿�AX �̕ϐ��̐��`�����ł��� PLS �v�f��Ԃ��܂��BXSCORES �́A
%   �ϑ��l�ɑΉ�����s�Ɨv�f�ɑΉ����������� N�~NCOMP �̒����s��ł��B
%
%   [XLOADINGS,YLOADINGS,XSCORES,YSCORES] = PLSREGRESS(X,Y,NCOMP) �́A
%   �����X�R�A�A���Ȃ킿�A�ő勤���U������ PLS �v�f�� XSCORES ����������
%   ���`�����ł��鉞���X�R�A��Ԃ��܂��BYSCORES �́A�ϑ��l�ɑΉ�����s��
%   �v�f�ɑΉ����������� N�~NCOMP �̍s��ł��BYSCORES �́A�����ł��Ȃ��A
%   ���K��������܂���B
%
%   PLSREGRESS �́ASIMPLS �A���S���Y�����g�p���A���S�����ꂽ�ϐ� X0 �� Y0 ��
%   �擾���邽�߂ɁA�ŏ��ɗ�̕��ς��������Ƃɂ���� X �� Y �𒆐S�ɂ��܂��B
%   �������A����ēx�X�P�[�����O���邱�Ƃ͂���܂���B�W�������ꂽ�ϐ��ŕ���
%   �ŏ�����A�����s����ɂ́AX �� Y �𐳋K�����邽�߂� ZSCORE ���g�p����
%   ���������B
%
%   NCOMP ���ȗ����ꂽ�ꍇ�A�f�t�H���g�l�� MIN(SIZE(X,1)-1, SIZE(X,2)) �ł��B
%
%   �X�R�A�A���חʁA���S�����ꂽ�ϐ� X0 �� Y0 �Ԃ̊֌W�͈ȉ��̂Ƃ���ł��B 
%
%      XLOADINGS = (XSCORES\X0)' = X0'*XSCORES,
%      YLOADINGS = (XSCORES\Y0)' = Y0'*XSCORES,
%
%   ���Ȃ킿�AXLOADINGS �� YLOADINGS �́AXSCORES �ɂ����� X0 �� Y0 �̉�A
%   �W���ŁAXSCORES*XLOADINGS' �� XSCORES*YLOADINGS' �́AX0 �� Y0 �ւ� 
%   PLS �ߎ��ł��BPLSREGRESS �́A�܂��A�ȉ��̂悤�� YSCORES ���v�Z���܂��B
%
%      YSCORES = Y0*YLOADINGS = Y0*Y0'*XSCORES,
%
%   �������A�֋X��APLSREGRESS �́AXSCORES'*YSCORES �����O�p�s��ƂȂ�悤�ɁA
%   XSCORES �̑O�̗�Ɋւ��� YSCORES �̊e��𒼌������܂��B
%
%   [XL,YL,XS,YS,BETA] = PLSREGRESS(X,Y,NCOMP,...) �́APLS ��A�W�� BETA ��
%   �Ԃ��܂��BBETA �� 1 �Ԗڂ̍s�̐ؕЂ̍����܂� (P+1)�~M �̍s��ł��B���Ȃ킿�A
%   Y = [ONES(N,1) X]*BETA + RESIDUALS �� Y0 = X0*BETA(2:END,:) + RESIDUALS �ł��B
%
%   [XL,YL,XS,YS,BETA,PCTVAR] = PLSREGRESS(X,Y,NCOMP) �́A���f���Ő��������
%   ���U�̃p�[�Z���e�[�W���܂� 2�~NCOMP �̍s�� PCTVAR ��Ԃ��܂��BPCTVAR �� 
%   1 �Ԗڂ̍s�́A�e PLS �v�f�ɂ�� X �Ő�������镪�U�̃p�[�Z���e�[�W���܂݁A
%   2 �Ԗڂ̍s�́AY �Ő�������镪�U�̃p�[�Z���e�[�W���܂݂܂��B
%
%   [XL,YL,XS,YS,BETA,PCTVAR,MSE] = PLSREGRESS(X,Y,NCOMP) �́A0:NCOMP ��
%   �v�f������ PLS ���f���ɑ΂��Đ��肳��镽�ϓ��덷���܂� 2�~(NCOMP+1) 
%   �̍s�� MSE ��Ԃ��܂��BMSE �� 1 �Ԗڂ̍s�́AX ���̗\���ϐ��ɑ΂���
%   ���ϓ��덷���܂݁A2 �Ԗڂ̍s�́AY ���̉����ϐ��ɑ΂��镽�ϓ��덷��
%   �܂݂܂��B
%
%   [XL,YL,XS,YS,BETA,PCTVAR,MSE] = PLSREGRESS(...,'PARAM1',val1,...) �́A
%   MSE �̌v�Z�𐧌䂷�邽�߂̃I�v�V�����p�����[�^�̖��O/�l�̑g�ݍ��킹��
%   �w�肷�邱�Ƃ��\�ł��B�p�����[�^�͈ȉ��̂Ƃ���ł��B
%
%      'CV'      MSE ���v�Z���邽�߂Ɏg�p���郁�\�b�h�B'CV' �����̐��� 
%                K �̏ꍇ�APLSREGRESS �� K-�������݌�����g�p���܂��B
%                ���݌���̕ʂ̃t�H�[�����g�p����ɂ́A'CV' �� CVPARITTION ��
%                �g���č쐬�������݌���̋敪�ɐݒ肵�܂��B
%                'CV' �� 'resubstitution' �̏ꍇ�APLSREGRESS �͌��݌�����s�킸��
%                ���f�����ߎ����A���ϓ��덷�𐄒肷�邽�߂� X �� Y ���g�p���܂��B
%                �f�t�H���g�� 'resubstitution' �ł��B
%
%      'MCReps'  ���݌���ɑ΂��郂���e�E�J�����̌J��Ԃ������������̐����B
%                �f�t�H���g�l�� 1 �ł��B
%                'CV' �� 'resubstitution' �̏ꍇ�A'MCReps' �� 1 �łȂ����
%                �Ȃ�܂���B
%
%   [XL,YL,XS,YS,BETA,PCTVAR,MSE,STATS] = PLSREGRESS(X,Y,NCOMP,...) �́A
%   �ȉ��̃t�B�[���h���܂ލ\���̂�Ԃ��܂��B
%       W            PLS �d�݂� P�~NCOMP �̍s��B���Ȃ킿�AXSCORES = X0*W
%       T2           XSCORES ���̓_���Ƃ� T^2 ���v��
%       Xresiduals   �\���c���B���Ȃ킿�AX0 - XSCORES*XLOADINGS'
%       Yresiduals   �����c���B���Ȃ킿�AY0 - XSCORES*YLOADINGS'
%
%   ��: 10 �v�f�̉�A���ߎ����A�ő� 10 �v�f�������f���ɑ΂���\���� 
%       MSE �̌��݌���̐�����v���b�g���܂��B�ϑ��� 10 �v�f�̃��f����
%       �ߎ������������v���b�g���܂��B
%
%      load spectra
%      [xl,yl,xs,ys,beta,pctvar,mse] = plsregress(NIR,octane,10,'CV',10);
%      plot(0:10,mse(2,:),'-o');
%      octaneFitted = [ones(size(NIR,1),1) NIR]*beta;
%      plot(octane,octaneFitted,'o');
%
%   �Q�l PRINCOMP, BIPLOT, CANONCORR, FACTORAN, CVPARTITION.


%   Copyright 2007-2008 The MathWorks, Inc.
