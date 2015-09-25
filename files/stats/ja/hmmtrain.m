% HMMTRAIN   HMM �ɑ΂��郂�f���p�����[�^�̍Ŗސ����
%
%   [ESTTR, ESTEMIT] = HMMTRAIN(SEQS,TRGUESS,EMITGUESS) �́ABaum-Welch 
%   �A���S���Y����p���āA�n�� SEQS ����B��}���R�t���f���ɑ΂���J�ڂ�
%   ���o�̊m���𐄒肵�܂��BSEQ �͒P��V�[�P���X�A�s���� 1 �̃V�[�P���X
%   �����s��A�V�[�P���X�̃Z���z��̂����ꂩ���܂ލs�x�N�g���ł��B
%   TRGUESS �� EMITGUESS �́A�J�ڂƕ��o�̊m���s��̏�������l�ł��B
%   TRGUESS(I,J) �́A��� I ������ J �ɑJ�ڂ��鐄��m���ł��B
%   EMITGUESS(K,SYM) �́A�V���{�� SYM ����� K ������o����鐄��m���ł��B
%
%   HMMTRAIN(...,'ALGORITHM',ALGORITHM) �́A�P���A���S���Y����I������
%   ���Ƃ��ł��܂��BALGORITHM �́A'BaumWelch' �܂��� 'Viterbi' �̂����ꂩ
%   �ł��B�f�t�H���g�̃A���S���Y���́ABaumWelch �ł��B
%
%   HMMTRAIN(...,'SYMBOLS',SYMBOLS) �́A���o�����V���{�����w��ł��܂��B
%   SYMBOLS �́A���l�z�񂩁A�V���{���̖��O�̃Z���z��ł��BN ���\��
%   ���o���̏ꍇ�A�f�t�H���g�̃V���{���́A1 ���� N �̊Ԃ̐����ł��B
%
%   HMMTRAIN(...,'TOLERANCE',TOL) �́A��������ߒ��̎����̃e�X�g�ɑ΂���
%   �g�p����鋖�e�덷���w�肷�邱�Ƃ��ł��܂��B�f�t�H���g�̋��e�덷�́A
%   1e-4 �ł��B
%
%   HMMTRAIN(...,'MAXITERATIONS',MAXITER) �́A����ߒ��ɑ΂���J��Ԃ���
%   �ő�񐔂��w�肷�邱�Ƃ��ł��܂��B�f�t�H���g�̌J��Ԃ����́A100 �ł��B
%
%   HMMTRAIN(...,'VERBOSE',true) �́A�e�J��Ԃ��ł̃A���S���Y���̏�Ԃ�
%   �\�����܂��B
%
%   HMMTRAIN(...,'PSEUDOEMISSIONS',PSEUDOE) �́A�r�^�r�P���A���S���Y����
%   �΂��āA�o���p�x�̕��o�l���w�肷�邱�Ƃ��ł��܂��B
%
%   HMMTRAIN(...,'PSEUDOTRANSITIONS',PSEUDOTR) �́A�r�^�r�P���A���S���Y��
%   �ɑ΂��āA�o���p�x�̑J�ڒl���w�肷�邱�Ƃ��ł��܂��B
%
%   �n��ɑΉ������Ԃ����m�̏ꍇ�A���f���p�����[�^�̐���� HMMESTIMATE 
%   ���g�p���Ă��������B
%
%   ���̊֐��́A��ɏ�� 1 �̃��f������n�܂�A���ɑJ�ڍs��̍ŏ���
%   �s�ɂ���m�����g���čŏ��̃X�e�b�v�ɑJ�ڂ��܂��B�]���āA�ȉ���
%   �^����ꂽ��ɂ����āA��Ԃ̏o�͂̍ŏ��̗v�f�́A0.95 �̊m���� 1 �ɁA
%   0.05 �̊m���� 2 �ɂȂ�܂��B
%
%   ��:
%
% 		tr = [0.95,0.05;
%             0.10,0.90];
%
% 		e = [1/6,  1/6,  1/6,  1/6,  1/6,  1/6;
%            1/10, 1/10, 1/10, 1/10, 1/10, 1/2;];
%
%       seq1 = hmmgenerate(100,tr,e);
%       seq2 = hmmgenerate(200,tr,e);
%       seqs = {seq1,seq2};
%       [estTR, estE] = hmmtrain(seqs,tr,e);
%
%   �Q�l  HMMGENERATE, HMMDECODE, HMMESTIMATE, HMMVITERBI.


%   Copyright 1993-2007 The MathWorks, Inc.
