% SQUAREFORM   �����s��Ō`�������ꂽ����
%
%   Z = SQUAREFORM(Y) �́AY �� PDIST �֐��ō쐬���ꂽ�x�N�g���̏ꍇ�A
%   Z(i,j) ���A�I���W�i���f�[�^�� i �� j �I�u�W�F�N�g�Ԃ̋������`����
%   �悤�� Y ��Ώ̂ŁA�����Ȍ`���ɕϊ����܂��B
%
%   Y=SQUAREFORM(Z) �́AZ ���Ίp�� 0 �����Ώ̂̐����s��̏ꍇ�A�Ίp
%   �ȉ��� Z �̗v�f���܂ރx�N�g�� Y ���쐬���܂��BY �� PDIST �֐������
%   �o�͂Ɠ��������ɂȂ�܂��B
%
%   Z=SQUAREFORM(Y,'tovector') �́A�x�N�g���Ƃ��� Y ���������߂� 
%   SQUAREFORM ���g���܂��B
%   Y=SQUAREFORM(Z,'tomatrix') �́A�s��Ƃ��� Z ����舵�����߂� 
%   SQUAREFORM ���g���܂��B���͂��P��̗v�f�����ꍇ�A�����̏�����
%   �𗧂��܂��B���������āA�x�N�g���������s��̂ǂ��炩�ɂ��Ă�
%   �����܂��ł��B
%
%   ��:      Y = (1:6) �� X = [0  1  2  3
%                              1  0  4  5
%                              2  4  0  6
%                              3  5  6  0],
%            �̏ꍇ�Asquareform(Y) �� X �ŁAsquareform(X) �� Y �ł��B
%
%   �Q�l PDIST.


%   Copyright 1993-2007 The MathWorks, Inc. 
