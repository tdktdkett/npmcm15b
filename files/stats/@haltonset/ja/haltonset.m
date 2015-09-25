%HALTONSET  �n���g�� (Halton) �_��W���̍쐬
%
%   P = HALTONSET(D) �́AD �����̐V�K�n���g���_��W���I�u�W�F�N�g���쐬���܂��B
%
%   P = HALTONSET(D,PROP,VAL,...) �́A�쐬����O�ɓ_�W���ɓK�p����v���p�e�B-�l��
%   �g�ݍ��킹�̐ݒ���w�肵�܂��B
%
%   HALTONSET �́A�n���g���񂩂�_�𐶐����鏀�����̓_�W���̃N���X�ł��B
%   ���̓_�W���I�u�W�F�N�g�́A�ȉ��̃v���p�e�B�ƃ��\�b�h�������Ă��܂��B
%
%   �ǂݎ���p�̃v���p�e�B:
%      Type             - �n�� ('Halton')�B
%      Dimensions       - �W�����̎����� (�쐬���͌Œ�)�B
%
%   �ݒ�\�ȃv���p�e�B:
%      Skip             - �ȗ����鏉���_���B
%      Leap             - �o�͂����_�ԂŎ�����_���B
%      ScrambleMethod   - ���݂̃X�N�����u���ݒ���܂ލ\���́B
%
%   haltonset ���\�b�h:
%      scramble         - �V�K�X�N�����u����K�p�B
%      net              - �n�񂩂珉�� net ���擾�B
%      size             - �_�W���̃T�C�Y���擾�B
%      length           - �n����̓_�����擾�B
%
%   �C���f�b�N�X:
%      ���ʂ��g�����C���f�b�N�X�ŃA�N�Z�X�\�ȏW�����̓_�B���Ƃ��΁A
%      P(1:10, :) �́A�W�����̍ŏ��� 10 �_�̗�̂��ׂĂ��܂ލs���Ԃ��܂��B
%
%   �n���g���W���́A�ȉ��̃X�N�����u���^�C�v���T�|�[�g���܂��B
%
%      ���O             - �ǉ��I�v�V����
%      ===================================================
%      RR2              - �t�̊���Z���\�ȌW���l�̂��ׂĂɓK�p���邱�Ƃ�
%                         ������郉�W�J���̋t�W���̒u���B���̃X�N�����u����
%                         �΂���ǉ��I�v�V�����͂���܂���B
%
%   ��:
%
%      5 �����̓_�W�����쐬���A�ŏ��� 1024 �_���擾:
%         P = haltonset(5);
%         X = net(P,1024)
%
%      �_�W�����쐬���A1, 3, 5 �ԖڂȂǂ̓_���擾:
%         P = haltonset(5);
%         X = P([1 3 5 7 9 11 13],:)
%
%      �X�N�����u���ȓ_�W���̍쐬:
%         P = haltonset(5);
%         P = scramble(P,'RR2');
%         X = net(P,1024)
%
%   �Q�l NET, QRANDSTREAM, SCRAMBLE, SUBSREF.


%   Copyright 2007-2008 The MathWorks, Inc.
