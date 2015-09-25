%NLINTOOL  ����`�ߎ��Ɨ\�����s���Θb�`���̃O���t�B�J���c�[��
%
%   NLINTOOL(X,Y,FUN,BETA0) �́A(x,y) �f�[�^�ɔ���`�Ȑ���K���������\���}��
%   �쐬���܂��B2 �̐ԐF�̋Ȑ��́A�\���ɑ΂��� 95% �̃O���[�o���ȐM����Ԃ�
%   �����܂��B
%
%   Y �̓x�N�g���ł��BX �̓x�N�g���A�܂��� Y �Ɠ����s���̍s��ł��BFUN �́A
%   �W���x�N�g���� X �̒l�̔z��� 2 �̈������󂯓���āA�ߎ����� Y �̒l��
%   �x�N�g����Ԃ��֐��ł��BBETA0 �́A�W���ɑ΂��鏉������l���܂ރx�N�g���ł��B
%
%   NLINTOOL(...,'PARAM1',val1,'PARAM2'val2,...) �́A�ȉ��̃p�����[�^�̖��O��
%   �l�� 1 �܂��͕����̑g�ݍ��킹���w�肵�܂��B
%
%      'alpha'    100(1-ALPHA)% �̐M����Ԃɑ΂��� ALPHA �̒l
%      'xname'    X �̕ϐ����̕����z��
%      'yname'    Y �̕ϐ���
%      'plotdata' �f�[�^���v���b�g����ɂ� 'on'�A�K���݂̂̏ꍇ�� 'off' 
%                 (�f�t�H���g)�B'on' �́A������ X �ϐ����󂯓���܂���B
%
%   ���F�̓_���̊�����h���b�O���邱�Ƃ��ł��A�h���b�O�Ɠ����ɗ\���l��
%   �X�V����܂��B�w�肵���ϐ����x�[�X���[�N�X�y�[�X�ɓ]������ɂ́A
%   Export �Ƃ������x���̕t�����v�b�V���{�^�����g�p���Ă��������B
%   �o�͂��ꂽ�W���́AX2FX �֐��Œ�`���ꂽ���Ɍ���܂��BExport �ƃ��x����
%   ����Ă���v�b�V���{�^�����g���āA��{�̃��[�N�X�y�[�X�ɐݒ肵���ϐ���
%   �n�����Ƃ��ł��܂��B�M����Ԃ̃^�C�v��ύX����ɂ́ABounds ���j���[��
%   �g�p���Ă��������B
%
%   ��
%   --
%   FUN �́A@ ���g���Ďw�肷�邱�Ƃ��ł��܂��B
%      nlintool(x, y, @myfun, b0)
%   �����ŁAMYFUN �͈ȉ��̂悤�� MATLAB �֐��ł��B
%      function yhat = myfun(beta, x)
%      b1 = beta(1);
%      b2 = beta(2);
%      yhat = 1 ./ (1 + exp(b1 + b2*x));
%
%   FUN �́A�����֐��ɂ��邱�Ƃ��ł��܂��B
%      fun = @(b,x) 1 ./ (1 + exp(b(1) + b(2)*x));
%      nlintool(x, y, fun, b0)
%
%   �Q�l NLINFIT, NLPARCI, NLPREDCI, NLMEFIT.


%   Copyright 1993-2009 The MathWorks, Inc.
