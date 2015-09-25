% ROTATEFACTORS   FA �܂��� PCA �׏d��]
%
%   B = ROTATEFACTORS(A) �́AD�~M �̉׏d�s�� A ����]���āA�o���}�b�N�X
%   ����ő�ɂ��A���ʂ� B �ɏo�͂��܂��B�ϐ��Ɨ�ɑΉ����� A �� B ��
%   �s�́A���q�ɑΉ����܂��B���Ƃ��΁AA ��(i,j) �Ԗڂ̗v�f�́Aj �Ԗڂ�
%   ���q�� i �Ԗڂ̕ϐ��ɑ΂���W���ł��B�s�� A �́A�ʏ�APRINCOMP �܂���
%   PCACOV �ō쐬�����听���v�f�W���܂��́AFACTORAN �Ő��肳���׏d
%   ���q���܂݂܂��B
%
%   B = ROTATEFACTORS(A, 'Method','orthomax', 'Coeff',GAMMA) �́AA ��
%   ��]���āA�W�� GAMMA �����I�[�\�}�b�N�X����ő剻���܂��B���Ȃ킿�A
%   B �́A�ȉ����ő剻���� A �̒�����]�ł��B
%
%      sum(D*sum(B.^4,1) - GAMMA*sum(B.^2,1).^2)
%
%   GAMMA �ɑ΂���f�t�H���g�l 1 �́A�o���}�b�N�X��]�ɑΉ����܂��B���̑�
%   �̉\���́AGAMMA = 0, M/2, D*(M-1)/(D+M-2) �ŁAquartimax, equamax, 
%   parsimax �ɑΉ����܂��B'method' �p�����[�^�ɑ΂��ĕ����� 'varimax', 
%   'quartimax', 'equamax', 'parsimax' ��^���A'Coeff' �p�����[�^���ȗ�
%   ���邱�Ƃ��ł��܂��B
%
%   'Method' �� 'orthomax', 'varimax', 'quartimax', 'equamax', 'parsimax' 
%   �̏ꍇ�A�ǉ��p�����[�^�͂��̒ʂ�ł��B
%
%      'Normalize'  - �׏d�s�񂪉�]�ɑ΂��čs�𐳋K�����邩�ǂ���������
%                     �t���O�B'on' (�f�t�H���g) �̏ꍇ�AA �̍s�́A�P��
%                     ���[�N���b�h�m���������悤�ɉ�]�̑O�ɐ��K������A
%                     ��]��ɔ񐳋K������܂��B'off' �̏ꍇ�Araw �׏d��
%                     ��]����A�o�͂���܂��B
%      'Reltol'     - T �����߂邽�߂ɗp�����锽���A���S���Y���ł̑���
%                     �������e�l�B�f�t�H���g�́Asqrt(eps) �ł��B
%      'Maxit'      - T �����߂邽�߂ɗp�����锽���A���S���Y���̔���
%                     �񐔂̐����B�f�t�H���g�́A250 �ł��B
%
%   B = ROTATEFACTORS(A, 'Method','procrustes', 'Target',TARGET) �́A
%   D�~M �̃^�[�Q�b�g�׏d�s�� TARGET �ɂ��� A �̎Ό��v���N���X�e�X��]��
%   �s���܂��B
%
%   B = ROTATEFACTORS(A, 'Method','pattern', 'Target',TARGET) �́AD�~M ��
%   �^�[�Q�b�g�p�^�[���s��ɂ��ĉ׏d�s�� A �̎Ό���]���s���A���ʂ� B ��
%   �o�͂��܂��BTARGET �́AB �� "�������ꂽ" �v�f���`���܂��B���Ȃ킿�A
%   TARGET �� 0 �v�f�ɑΉ����� B �̗v�f�́A��������������ATARGET �̔��
%   �v�f�ɑΉ����� B �̗v�f�́A�C�ӂ̑傫������邱�Ƃ��\�ł��B
%
%   'Method' �� 'procrustes' �܂��� 'pattern' �̏ꍇ�A�ǉ��p�����[�^��
%   ���̒ʂ�ł��B
%
%      'Type'  - ��]�̃^�C�v�B'orthogonal' �̏ꍇ�A��]�͒����ŁA���q��
%                �����ւł��B'oblique' (�f�t�H���g) �̏ꍇ�A��]�͎Ό��ŁA
%                ��]���q�́A���ւ�����܂��B
%
%   'Method' �� 'pattern' �̂Ƃ��ATARGET �ɐ��񂪂���܂��BA �� M ���
%   �ꍇ�A������]�ɑ΂��āATARGET �� J �Ԗڂ̗�͏��Ȃ��Ƃ� M-J �� 
%   0 ���܂܂Ȃ���΂Ȃ�܂���B�Ό���]�ɑ΂��āATARGET �̊e��́A���Ȃ�
%   �Ƃ� M-1 �� 0 ���܂܂Ȃ���΂Ȃ�܂���B
%
%   B = ROTATEFACTORS(A, 'Method','promax') �́A�v���}�b�N�X����ő剻
%   ����悤�� A ����]���A����́A�I�[�\�}�b�N�X��]�ɂ���č쐬�����
%   �^�[�Q�b�g�ɂ��Ό��v���N���X�e�X��]�Ɠ����ł��B�v���}�b�N�X�ɂ��
%   �����I�ɗp������I�[�\�}�b�N�X��]�𐧌䂷�邽�߂ɁA4 �̃I�[�\
%   �}�b�N�X�p�����[�^�𗘗p���܂��B'promax' �̒ǉ��p�����[�^�́A����
%   �ʂ�ł��B
%
%      'Power'  - �v���}�b�N�X�^�[�Q�b�g�s��̍쐬�p�̎w���B1 �ȏ��
%                 �Ȃ���΂Ȃ�܂���B�f�t�H���g�� 4 �ł��B
%
%   [B,T} = ROTATEFACTORS(A, ...) �́AB�A���Ȃ킿 B = A*T ���쐬���邽�߂�
%   �p�������]�s�� T ���o�͂��܂��Binv(T'*T) �́A��]���q�̑��֍s��
%   �ł��B������]�ɑ΂��ẮA����͒P�ʍs��ŁA�Ό���]�ɑ΂��ẮA�P��
%   �Ίp�v�f�������܂����A����͔��̔�Ίp�v�f�ł��B
%
%   ��:
%
%      X = randn(100,10);
%      L = princomp(X);
%
%      % PCA �̍ŏ��� 3 �v�f�̃f�t�H���g�� (���K���o���}�b�N�X) ��]
%      [L1,T] = rotatefactors(L(:,1:3));
%
%      % PCA �̍ŏ��� 3 �v�f�� Equamax ��]
%      [L2,T] = rotatefactors(L(:,1:3),'method','equamax');
%
%      % PCA �̍ŏ��� 3 �v���� Promax ��]
%      L = factoran(X,3,'Rotate','none');
%      [L3,T] = rotatefactors(L,'method','promax','power',2);
%
%      % PCA �̍ŏ��� 3 �v���̃p�^�[����]
%      Tgt = [1 1 1 1 1 0 1 0 1; 0 0 0 1 1 1 0 0 0; 1 0 0 1 0 1 1 1 1]';
%      [L4,T] = rotatefactors(L,'method','pattern','target',Tgt);
%      inv(T'*T) % ��]���q�̑��֍s��
%
% �Q�l  BIPLOT, FACTORAN, PRINCOMP, PCACOV, PROCRUSTES.


%   Copyright 1993-2007 The MathWorks, Inc.
