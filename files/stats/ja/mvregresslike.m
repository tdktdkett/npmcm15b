%MVREGRESSLIKE  ���ϗʉ�A�ɑ΂��镉�̑ΐ��ޓx
%
%   NLOGL=MVREGRESSLIKE(X,Y,BETA,SIGMA,ALG) �́AX ���̗\���ϐ��ɂ��Ă� 
%   N�~D �s��� Y ���̑��ϗʊϑ��̑��ϗʉ�A�ɑ΂��镉�̑ΐ��ޓx�֐� NLOGL ��
%   �v�Z���A�W������l�� P�~1 �̗�x�N�g�� BETA �� Y �̍s�̋����U���w�肷�� 
%   D�~D �̍s�� SIGMA �ɑ΂��ĕ]������܂��BALG �́A��A�̋ߎ��Ŏg�p�����
%   �A���S���Y�����w�肵�܂� (�ȉ����Q��)�BX �܂��� Y �� NaN �l�́A�����l
%   �Ƃ��Ď󂯓���܂��BX �� �����l�����ϑ��l�͖�������܂��BY ���̌����l��
%   �����́A�A���S���Y���Ɉˑ����܂��B
%
%   Y �́AD-�����̑��ϗʊϑ��� N�~D �̍s��ł��BX �́A�s�񂩃Z���z��̂����ꂩ
%   �ɂȂ�܂��BD=1 �̏ꍇ�AX �́A�\���ϐ��� N�~P �̌v��s��ɂȂ�܂��B
%   D �̔C�ӂ̒l�ɂ����āAX �́A�e�Z���� 1 �̑��ϗʊϑ��ɑ΂��� D�~P ��
%   �v��s����܂ޒ��� N �̃Z���z��ɂ��Ȃ�܂��B���ׂĂ̊ϑ������� D�~P ��
%   �v��s��̏ꍇ�AX �͒P��̃Z���ɂȂ�܂��B
%
%   ALG �́A�W������l BETA �𓾂邽�߂� MVREGRESS �Ŏg�p�����A���S���Y����
%   ��v����K�v������A�ȉ��̒l�̂����ꂩ�łȂ���΂Ȃ�܂���B
%         'ecm'    ECM �A���S���Y��
%         'cwls'   �����t�� SIGMA �ɂ���ďd�ݕt�������ŏ����
%         'mvn'    Y ���Ɍ����l�����s���ȗ�������Ōv�Z����鑽�ϗʐ��K��
%                  �����
%
%   [NLOGL,VARPARAM]=MVREGRESSLIKE(...) �́A�p�����[�^���� BETA �̐��肳�ꂽ
%   �����U�s����Ԃ��܂��B
%
%   [NLOGL,VARPARAM]=MVREGRESSLIKE(...,VARTYPE,VARFORMAT) �́AVARPARAM ��
%   �^�C�v�ƌ`�����w�肵�܂��BVARTYPE �́A�w�V�A�����ϑ������g�p����ꍇ�� 
%   'hessian' (�f�t�H���g) �ŁA�t�B�b�V���[���\�����ꂽ�����g�p����ꍇ�� 
%   'fisher' �̂����ꂩ�ł��BVARFORMAT �́ABETA �����ɑ΂��� VARPARAM ��
%   �v�Z����ꍇ�� 'beta' (�f�t�H���g) �ŁABETA �� SIGMA �̗����ɑ΂��� 
%   VARPARAM ���v�Z����ꍇ�� 'full' �̂����ꂩ�ł��B'hessian' ���\�b�h�́A
%   �����f�[�^�̂��߂ɑ��������s�m�������l�����܂��B'fisher' ���\�b�h�́A
%   ���S�ȃf�[�^�̗\�����ꂽ�����g�p���A�����f�[�^�̂��߂̕s�m������
%   �܂݂܂���B
%
%   �Q�l MVREGRESS, REGSTATS, MANOVA1.


%    Copyright 2006-2008 The MathWorks, Inc.
