%REGSTATS  ���`���f���ɑ΂����A�f�f
%
%   REGSTATS(RESPONSES,DATA,MODEL) �́A�����̐��`���f�����g�p���āA�s�� 
%   DATA �̒l�Ńx�N�g�� RESPONSES �̑���̉�A�����߂܂��B
%   �֐��́A���[�U�C���^�t�F�[�X���쐬���A�`�F�b�N�{�b�N�X�Q�ɐf�f���v�ʂ�
%   �\�����A�w�肵���ϐ����Ńx�[�X���[�N�X�y�[�X�ɕۑ����܂��BMODEL �́A
%   ��A���f���̎����𐧌䂵�܂��B�f�t�H���g�ł́AREGSTATS �́A�萔��������
%   ���`���Z���f���ɑ΂���݌v�s���Ԃ��܂��B
%
%   �I�v�V�����̓��� MODEL �́A�ǂ̌v��s��� DATA ����쐬���邩���w�肵�܂��B
%   �v��s��́A�e�ϑ��ɑ΂��鍀�̒l�̍s��ł��BMODEL �́A�ȉ��̕������
%   �����ꂩ�ɂȂ�܂��B
%
%     'linear'        �萔�Ɛ��`�� (�f�t�H���g)
%     'interaction'   �萔�A���`�A���ݍ�p��
%     'quadratic'     �萔�A���`�A���ݍ�p�A��捀
%     'purequadratic' �萔�A���`�A��捀
%
%   ����ɁAMODEL �́AX2FX �֐��ɓ��͂����悤�ȃ��f���̍��̍s��ł��B
%   ���̍s��̐����ƁA��������鏇�Ԃ̐����ɂ��ẮAX2FX ���Q�Ƃ��Ă��������B
%   �萔���̂Ȃ����̂��܂ޑ��̃��f�����w�肷��ɂ́A���̍s����g�p���邱�Ƃ�
%   �\�ł��B
%
%   STATS=REGSTATS(RESPONSES,DATA,MODEL,WHICHSTATS) �́AWHICHSTATS �Ƀ��X�g
%   ���ꂽ���v�ʂ��܂ޏo�͍\���� STATS ���쐬���܂��BWHICHSTATS �́A'leverage' ��
%   �悤�ȒP��̕�����A���邢�́A{'leverage' 'standres' 'studres'} �̂悤��
%   ������̃Z���z��̂����ꂩ�ɂȂ�܂��B�f�t�H���g�ł́AREGSTATS �͂��ׂĂ�
%   ���v�ʂ�Ԃ��܂��B�L���ȓ��v�ʂ̕�����͈ȉ��̂Ƃ���ł��B
%
%      ���O          �Ӗ�
%      'Q'           �v��s��� QR ��������� Q
%      'R'           �v��s��� QR ��������� R
%      'beta'        ��A�W��
%      'covb'        ��A�W���̋����U
%      'yhat'        �����f�[�^�̋ߎ������l
%      'r'           �c��
%      'mse'         ���ϓ��덷
%      'rsquare'     ����W���̓��v��
%      'adjrsquare'  ��������W���̓��v��
%      'leverage'    ���o���b�W
%      'hatmat'      Hat (�ˉe) �s��
%      's2_i'        Delete-1 ���U
%      'beta_i'      Delete-1 �W��
%      'standres'    �W�������ꂽ�c��
%      'studres'     �X�`���[�f���g�����ꂽ�c��
%      'dfbetas'     ��A�W���̃X�P�[�����ꂽ�ω�
%      'dffit'       �ߎ������l�ɂ�����ω�
%      'dffits'      �ߎ������l�ɂ�����X�P�[�����ꂽ�ω�
%      'covratio'    �����U�̕ω�
%      'cookd'       �N�b�N�̋���
%      'tstat'       �W���ɑ΂��� t ���v��
%      'fstat'       F ���v��
%      'dwstat'      �_�[�r��-���g�\�����v��
%      'all'         ��L�̓��v�ʂ����ׂĐ�������
%
%   ����: F ���v�ʂƂ��� p-�l�́A���f�����萔�����܂݁A�����͒萔�������Ȃ�
%   ���f���ɑ΂��Đ������Ȃ��Ƃ�������̉��Ōv�Z����܂��B����W���̒l�́A
%   �����a�ւ� 1 ������a�덷�����������̂ł��B���̒l�́A�f�[�^�ɑ΂���
%   �ߎ����s�Ȃ�Ȃ����f���������萔�������Ȃ����f���ɑ΂��ĕ��ɂȂ�܂��B
%
%   ��:Hald �f�[�^�ɑ΂���c���Ƌߎ������l���v���b�g���܂��B
%      load hald
%      s = regstats(heat,ingredients,'linear',{'yhat','r'});
%      scatter(s.yhat,s.r)
%      xlabel('Fitted Values'); ylabel('Residuals');
%
%   �Q�l X2FX, REGRESS, STEPWISE, LEVERAGE.


%   Copyright 1993-2008 The MathWorks, Inc.
