%SCATTERHIST  ���Ӄq�X�g�O���������� 2D �U�z�}
%
%   SCATTERHIST(X,Y) �́A�x�N�g�� X �� Y �̃f�[�^�� 2D �U�z�}���쐬���A
%   �v���b�g�̐��������Ɛ��������� Axes ��Ɉ�ϐ��̃q�X�g�O������z�u���܂��B
%   X �� Y �͓��������łȂ���΂Ȃ�܂���B
%
%   SCATTERHIST(X,Y,NBINS) �́AX �� Y �̃q�X�g�O�����ɑ΂���r�������w�肷�� 
%   2 �v�f�x�N�g�����^���܂��B�f�t�H���g�́A�W�{�̕W���΍��Ɋ�Â� Scott ��
%   ���[�����g���ăr�������v�Z����܂��B
%
%   X �܂��� Y �̂����ꂩ�ɂ��� NaN �̒l�́A�����l�Ƃ��Ĉ����AX �� Y ��
%   ��������폜����܂��B���̂��߁A�v���b�g�ɂ� X �� Y �̗����Ō����l��
%   �Ȃ��_�����f����܂��B
%
%   �v���b�g���琳�m�Ȓl�Ɗϑ������m�F����ɂ́A�f�[�^�J�[�\�����g�p���Ă��������B
%
%   H = SCATTERHIST(...) �́A�U�z�}�A�����������̃q�X�g�O�����A������������
%   �q�X�g�O�����̂��ꂼ��ɑ΂��� 3 �� Axes �n���h���̃x�N�g����Ԃ��܂��B
%
%   ��:
%      �Ɨ��Ȑ��K���z�Ƒΐ����K���z�̖���וW�{
%         x = randn(1000,1);
%         y = exp(.5*randn(1000,1));
%         scatterhist(x,y)
%      �Ɨ��łȂ���l�Ȏ��ӕ��z�̕W�{
%         u = copularnd('Gaussian',.8,1000);
%         scatterhist(u(:,1),u(:,2))
%      ���݂������U�ƘA���f�[�^
%         cars = load('carsmall');
%         scatterhist(cars.Weight,cars.Cylinders,[10 3])


%   Copyright 2006-2009 The MathWorks, Inc.
