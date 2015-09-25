%PROCRUSTES  �v���N���X�e�X���
%
%   D = PROCRUSTES(X, Y) �́A�s�� X �̓_�Ƃ����Ƃ��ǂ���v����悤�ɁA
%   �s�� Y �̓_�� (�ϊ��A���ˁA������]�A�X�P�[�����O�Ȃǂ�) ���`�ϊ���
%   ��`���܂��B"�K���x" �̊�́A�덷�̓��a�ł��BPROCRUSTES �́AD ��
%   ���̑���_�̑���l���ŏ��������l��Ԃ��܂��BD �́A�ȉ��ŗ^������ 
%   X �̃X�P�[���̊�ŕW�������ꂽ���̂ł��B
%
%      sum(sum((X - repmat(mean(X,1), size(X,1), 1)).^2, 1))
%
%   ���Ȃ킿�AX �̒��S����̊e�v�f�̓��a�ł��B�������AX �������_�̌J��Ԃ�
%   ���܂ޏꍇ�A�덷�̓��a�͕W��������܂���B
%
%   X �� Y �͓_ (�s) �̓����������Ɖ��肳��APROCRUSTES �́AY �� i �Ԗڂ̓_
%   �� X �� i �Ԗڂ̓_����v�����܂��BY �̓_�́AX �̓_��菬�������� (��) ��
%   �����Ƃ��ł��܂��B���̏ꍇ�APROCRUSTES �́A�K�v�ȂƂ��� Y �� 0 �̗��
%   �����܂��B
%
%   [D, Z] = PROCRUSTES(X, Y) �́A�ϊ����� Y �̒l���Ԃ��܂��B
%
%   [D, Z, TRANSFORM] = PROCRUSTES(X, Y) �́AY �� Z �Ɏʑ������ϊ��̓��e��
%   �Ԃ��܂��BTRANSFORM �́A�ȉ��̃t�B�[���h�����\���̂ł��B
%      c:  ���s�ړ�����
%      T:  ������]�Ɣ��ː���
%      b:  �{������
%   ����� Z = TRANSFORM.b * Y * TRANSFORM.T + TRANSFORM.c �ƂȂ�܂��B
%
%   [...] = PROCRUSTES(..., 'Scaling',false) �́A�{���������܂܂Ȃ��A
%   ���Ȃ킿�ATRANSFORM.b == 1 �̏ꍇ�̃v���N���X�e�X�����v�Z���܂��B
%   PROCRUSTES(..., 'Scaling',true) �́A�f�t�H���g�̔{���������܂�
%   �v���N���X�e�X�����v�Z���܂��B
%
%   [...] = PROCRUSTES(..., 'Reflection',false) �́A���ː������܂܂Ȃ��A
%   ���Ȃ킿�ADET(TRANSFORM.T) �� 1 �̏ꍇ�̃v���N���X�e�X�����v�Z���܂��B
%   PROCRUSTES(..., 'Reflection','best') �́A�f�t�H���g�� 'best' �Ƃ��āA
%   ���ː������܂ނ��܂܂Ȃ��œK�ߎ��̃v���N���X�e�X�����v�Z���܂��B
%   PROCRUSTES(..., 'Reflection',true) �́A�������ː����������I�Ɋ܂ނ悤�ɁA
%   ���Ȃ킿 DET(TRANSFORM.T) �� -1 �Ƃ��܂��B
%
%   ��:
%
%      % 2 �����̂������̃����_���ȓ_���쐬���܂��B
%      n = 10;
%      X = normrnd(0, 1, [n 2]);
%
%      % �����̂������̓_�ɁA��]�A�{���A���s�ړ��̕ϊ����s���A
%      % �m�C�Y�������܂��B
%      S = [0.5 -sqrt(3)/2; sqrt(3)/2 0.5]; % 60 �x��]
%      Y = normrnd(0.5*X*S + 2, 0.05, n, 2);
%
%      % Y �� X �ɓK�������A�I���W�i���� X �� Y �ƕϊ����ꂽ Y ��
%      % �\�����܂��B
%      [d, Z, tr] = procrustes(X,Y);
%      plot(X(:,1),X(:,2),'rx', Y(:,1),Y(:,2),'b.', Z(:,1),Z(:,2),'bx');
%
%   �Q�l FACTORAN, CMDSCALE.


%   Copyright 1993-2009 The MathWorks, Inc.
