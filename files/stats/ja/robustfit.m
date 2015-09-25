%ROBUSTFIT  ���o�X�g���`��A
%
%   B = ROBUSTFIT(X,Y) �́A���`���f�� Y=Xb �𐄒肷�邽�߂Ƀ��o�X�g��A��
%   ���s���邱�Ƃœ���ꂽ��A�W���̃x�N�g�� B ��Ԃ��܂��BX �́A�\���ϐ��� 
%   n�~p �̍s��ŁAY �́An�~1 �̊ϑ��x�N�g���ł��B�A���S���Y���́Abisquare ��
%   �d�݊֐��ŌJ��Ԃ��d�݂�K�p�����ŏ������g�p���܂��B�f�t�H���g�ł́A
%   ROBUSTFIT �́AB �� 1 �Ԗڂ̗v�f�̒萔���ɑΉ����� 1 �̗�� X �ɒǉ����܂��B
%   1 �̗�� X �̍s��ɒ��ړ��͂��܂���B
%
%   B = ROBUSTFIT(X,Y,'WFUN',TUNE) �́A�d�݊֐� 'WFUN' �ƒ����萔 TUNE ��
%   �g�p���܂��B'WFUN' �́A'andrews', 'bisquare', 'cauchy', 'fair', 'huber', 
%   'logistic', 'talwar', 'welsch' �̂����ꂩ�ɂȂ�܂��B����ɁA'WFUN' �́A
%   ���͂Ƃ��Ďc���x�N�g����^���A�o�͂Ƃ��ďd�݃x�N�g���𐶐�����֐��ɂȂ�܂��B
%   �c���́A�d�݊֐����Ăяo���O�ɁA�����萔�ƌ덷�̕W���΍��ɂ���ăX�P�[��
%   ����܂��B'WFUN' �� (@myfun �̂悤��) @ ���g�p���ČĂяo�����Ƃ��ł��܂��B
%   TUNE �́A�d�݂��v�Z����O�ɁA�c���̃x�N�g���ŕ�������钲���萔�ŁA
%   'WFUN' ���֐��Ƃ��Ďw�肳���ꍇ�ɕK�v�ɂȂ�܂��B
%
%   B = ROBUSTFIT(X,Y,'WFUN',TUNE,'CONST') �́A���f�����萔�����܂ނ��ǂ�����
%   ���䂵�܂��B'CONST' �́A�萔�����܂ނɂ� 'on' (�f�t�H���g)�A���邢�́A
%   �ȗ�����ɂ� 'off' �ł��B
%
%   [B,STATS] = ROBUSTFIT(...) �́A�ȉ��̃t�B�[���h���܂� STATS �\���̂��Ԃ��܂��B
%       'ols_s'     �ŏ����ߎ������ sigma �]�� (rmse)
%       'robust_s'  sigma �̃��o�X�g����
%       'mad_s'     sigma �� MAD �]���B�����ߎ��̊ԁA�c�����X�P�[�����O����
%                   ���߂Ɏg�p����܂��B
%       's'         sigma �̍ŏI����l�Brobust_s �ƁAols_s �� robust_s ��
%                   �d�ݕt���̕��ς̂����傫���ق��̒l
%       'se'        �W���̐���l�̕W���덷
%       't'         stats.se �� b �̔�
%       'p'         stats.t �ɑ΂��� p-�l
%       'covb'      �W���̐���l�ɑ΂��鋤���U�s��̐���l
%       'coeffcorr' �W���̐���l�̑��ւ̐���l
%       'w'         ���o�X�g�ߎ��̏d�݃x�N�g��
%       'h'         �ŏ����ߎ��ɑ΂��郌�o���b�W�̃x�N�g��
%       'dfe'       �덷�̎��R�x
%       'R'         �s�� X �� QR ������ R ���q
%
%   ROBUSTFIT �֐��́A�W������̕��U-�����U�s��� V=inv(X'*X)*STATS.S^2 ��
%   ���肵�܂��B�W���덷�Ƒ��ւ́AV ���瓱����܂��B
%
%   ROBUSTFIT �́AX�A�܂��� Y �� NaN �������l�Ƃ��Ĉ����A�������폜���܂��B
%
%   ��:
%      x = (1:10)';
%      y = 10 - 2*x + randn(10,1); y(10) = 0;
%      bls = regress(y,[ones(10,1) x])
%      brob = robustfit(x,y)
%      scatter(x,y)
%      hold on
%      plot(x,brob(1)+brob(2)*x,'r-', x,bls(1)+bls(2)*x,'m:')
%
%   �Q�l REGRESS, ROBUSTDEMO.


%   Copyright 1993-2008 The MathWorks, Inc. 
