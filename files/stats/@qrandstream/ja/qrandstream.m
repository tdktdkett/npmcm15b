%QRANDSTREAM  �������̃X�g���[���̍쐬
%
%   Q = QRANDSTREAM(TYPE,D) �́A�_�W���̎w�肵���^�C�v���J�v�Z��������
%   �X�g���[���̎Q�ƃI�u�W�F�N�g���쐬���܂��BTYPE �́A�_�W�������܂�
%   ������ŁA'sobol' �܂��� 'halton' �̂����ꂩ�łȂ���΂Ȃ�܂���B
%   D �͎��������w�肵�܂��B
%
%   Q = QRANDSTREAM(TYPE,D,PROP,VAL,...) �́A��{�ƂȂ�X�g���[����ł�
%   �_�W���̍쐬�Ɏg�p�����v���p�e�B-�l�̑g�ݍ��킹�̐ݒ���w�肵�܂��B
%
%   Q = QRANDSTREAM(PS) �́A�_�W�� PS �̃R�s�[�Ɋ�Â��X�g���[�����쐬���܂��B
%   PS �́A�������̓_�W���I�u�W�F�N�g (��. sobolset �܂��� haltonset) ��
%   �Ȃ���΂Ȃ�܂���B
%
%   �������̃X�g���[���ɂ́A�ȉ��̃v���p�e�B�ƃ��\�b�h������܂��B
%
%   �ǂݎ���p�̃v���p�e�B:
%      PointSet     - �X�g���[����`�悷��_�W���I�u�W�F�N�g�B
%
%   �ݒ�\�ȃv���p�e�B:
%      State        - �Ō�̓_�̓_�̃X�g���[�����̃C���f�b�N�X�B
%
%   qrandstream ���\�b�h:
%      qrand,rand   - �X�g���[������_��`�悵�A��Ԃ��C���N�������g�B
%      reset        - �X�g���[����������Ԃɖ߂��悤�ݒ�B
%
%   ��:
%
%      �\�{����Ɋ�Â� 5 �����̃X�g���[�����쐬���A�l��`��:
%         Q = qrandstream('sobol',5);
%         qrand(Q,10000)
%
%      �n���g����Ɋ�Â��X�g���[�����쐬���A�����̓_���X�L�b�v:
%         Q = qrandstream('halton',5,'Leap',12,'Skip',1);
%         qrand(Q,100)
%
%      �X�N�����u���ȃ\�{���̏W���Ɋ�Â��X�g���[�����쐬:
%         S = sobolset(5);
%         S = scramble(S,'MatousekAffineOwen');
%         Q = qrandstream(S);
%         qrand(Q,2^16)
%
%      �X�g���[�����쐬���Arand ���g���ăX�g���[������l��`��:
%         Q = qrandstream('sobol',5);
%         rand(Q, 100, 5)
%
%   �Q�l QRAND, HALTONSET, SOBOLSET, RAND, RANDSTREAM.


%   Copyright 2007-2009 The MathWorks, Inc.
