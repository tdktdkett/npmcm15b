% Statistics Toolbox
% Version 9.0 (R2014a) 11-Dec-2013
%
% ���z
% �p�����[�^����
%   betafit     - �x�[�^���z�p�����[�^����
%   binofit     - �񍀕��z�p�����[�^����
%   dfittool    - ���z�̃t�B�b�e�B���O�c�[��
%   evfit       - �ɒl���z�p�����[�^����
%   expfit      - �w�����z�p�����[�^����
%   fitdist     - ���z�̋ߎ�
%   gamfit      - �K���}���z�p�����[�^����
%   gevfit      - ��ʉ��ɒl�̃p�����[�^����
%   gmdistribution - �K�E�X�������z�N���X
%   gpfit       - ��ʉ��p���[�g�̃p�����[�^����
%   lognfit     - �ΐ����K���z�p�����[�^����
%   mle         - �Ŗސ��� (MLE) �@
%   mlecov      - MLE �̑Q�ߓI�ȋ����U�s��
%   nbinfit     - ���̓񍀕��z�p�����[�^����
%   normfit     - ���K���z�p�����[�^����
%   paretotails - ��ʉ��p���[�g�̐������o���ݐϕ��z
%   poissfit    - �|�A�\�����z�p�����[�^����
%   raylfit     - ���C���[�p�����[�^����
%   unifit      - ��l���z�p�����[�^����
%   wblfit      - ���C�u�����z�p�����[�^����
%
% �m�����x�֐� (pdf)
%   betapdf     - �x�[�^���x
%   binopdf     - �񍀖��x
%   chi2pdf     - �J�C��斧�x
%   evpdf       - �ɒl���x
%   exppdf      - �w�����x
%   fpdf        - F ���x
%   gampdf      - �K���}���x
%   geopdf      - �􉽖��x
%   gevpdf      - ��ʉ��ɒl�̖��x
%   gppdf       - ��ʉ��p���[�g���x
%   hygepdf     - ���􉽖��x
%   lognpdf     - �ΐ����K���x
%   mnpdf       - �������z�m���֐�
%   mvnpdf      - ���ϗʐ��K���z���x
%   mvtpdf      - ���ϗ� t ���x
%   nbinpdf     - ���񍀖��x
%   ncfpdf      - ��S F ���x
%   nctpdf      - ��S t ���x
%   ncx2pdf     - ��S�J�C��斧�x
%   normpdf     - ���K (�K�E�X) ���x
%   pdf         - �w�肵�����z�ɑ΂���m�����x�֐�
%   poisspdf    - �|�A�\�����x
%   raylpdf     - ���C���[���x
%   tpdf        - T ���x
%   unidpdf     - ���U��l���x
%   unifpdf     - ��l���x
%   wblpdf      - ���C�u�����x
% 
% �ݐϕ��z�֐� (cdf)
%   betacdf     - �x�[�^�ݐϕ��z�֐�
%   binocdf     - �񍀗ݐϕ��z�֐�
%   cdf         - �w�肵���ݐϕ��z�֐�
%   chi2cdf     - �J�C���ݐϕ��z�֐�
%   ecdf        - �o���ݐϕ��z�֐� (�J�v�����E�}�C���[����l)
%   evcdf       - �ɒl�ݐϕ��z�֐�
%   expcdf      - �w���ݐϕ��z�֐�
%   fcdf        - F �ݐϕ��z�֐�
%   gamcdf      - �K���}�ݐϕ��z�֐�
%   geocdf      - �􉽗ݐϕ��z�֐�
%   gevcdf      - ��ʉ��ɒl�̗ݐϕ��z�֐�
%   gpcdf       - ��ʉ��p���[�g�̗ݐϕ��z�֐�
%   hygecdf     - ���􉽗ݐϕ��z�֐�
%   logncdf     - �ΐ����K�ݐϕ��z�֐�
%   mvncdf      - ���ϗʐ��K�ݐϕ��z�֐�
%   mvtcdf      - ���ϗ� t �ݐϕ��z�֐�
%   nbincdf     - ���񍀗ݐϕ��z�֐�
%   ncfcdf      - ��S F �ݐϕ��z�֐�
%   nctcdf      - ��S t �ݐϕ��z�֐�
%   ncx2cdf     - ��S�J�C���ݐϕ��z�֐�
%   normcdf     - ���K (�K�E�X) �ݐϕ��z�֐�
%   poisscdf    - �|�A�\���ݐϕ��z�֐�
%   raylcdf     - ���C���[�ݐϕ��z�֐�
%   tcdf        - T �ݐϕ��z�֐�
%   unidcdf     - ���U��l�ݐϕ��z�֐�
%   unifcdf     - ��l�ݐϕ��z�֐�
%   wblcdf      - ���C�u���ݐϕ��z�֐�
% 
% ���z�֐��̊��p���E
%   betainv     - �x�[�^�t�ݐϕ��z�֐�
%   binoinv     - �񍀋t�ݐϕ��z�֐�
%   chi2inv     - �J�C���t�ݐϕ��z�֐�
%   evinv       - �ɒl�t�ݐϕ��z�֐�
%   expinv      - �w���t�ݐϕ��z�֐�
%   finv        - F �t�ݐϕ��z�֐�
%   gaminv      - �K���}�t�ݐϕ��z�֐�
%   geoinv      - �􉽋t�ݐϕ��z�֐�
%   gevinv      - ��ʉ��ɒl�̋t�ݐϕ��z�֐�
%   gpinv       - ��ʉ��p���[�g�̋t�ݐϕ��z�֐�
%   hygeinv     - ���􉽋t�ݐϕ��z�֐�
%   icdf        - �w�肵���t�ݐϕ��z�֐�
%   logninv     - �ΐ����K�t�ݐϕ��z�֐�
%   nbininv     - ���񍀋t�ݐϕ��z�֐�
%   ncfinv      - ��S F �t�ݐϕ��z�֐�
%   nctinv      - ��S t �t�ݐϕ��z�֐�
%   ncx2inv     - ��S�J�C���t�ݐϕ��z�֐�
%   norminv     - ���K (�K�E�X) �t�ݐϕ��z�֐�
%   poissinv    - �|�A�\���t�ݐϕ��z�֐�
%   raylinv     - ���C���[�t�ݐϕ��z�֐�
%   tinv        - T �t�ݐϕ��z�֐�
%   unidinv     - ���U��l�t�ݐϕ��z�֐�
%   unifinv     - ��l�t�ݐϕ��z�֐�
%   wblinv      - ���C�u���t�ݐϕ��z�֐�
%
% �����̔���
%   betarnd     - �x�[�^���z����
%   binornd     - �񍀕��z����
%   chi2rnd     - �J�C��敪�z����
%   evrnd       - �ɒl���z����
%   exprnd      - �w�����z����
%   frnd        - F ���z����
%   gamrnd      - �K���}���z����
%   geornd      - �􉽕��z����
%   gevrnd      - ��ʉ��ɒl�̗���
%   gprnd       - ��ʉ��p���[�g�̗���
%   hygernd     - ���􉽕��z����
%   iwishrnd    - �E�B�b�V���[�g�����t�s��
%   johnsrnd    - ���z�̃W�����\���V�X�e������̗���
%   lognrnd     - �ΐ����K���z����
%   mhsample    - ���g���|���X-�w�C�X�e�B���O�X�@
%   mnrnd       - �������z�̗����x�N�g��
%   mvnrnd      - ���ϗʂɂ�鐳�K���z����
%   mvtrnd      - ���ϗ� t ���z����
%   nbinrnd     - ���񍀕��z����
%   ncfrnd      - ��S F ���z����
%   nctrnd      - ��S t ���z����
%   ncx2rnd     - ��S�J�C��敪�z����
%   normrnd     - ���K (�K�E�X) ���z����
%   pearsrnd    - ���z�̃s�A�\���V�X�e������̗���
%   poissrnd    - �|�A�\�����z����
%   randg       - �K���}���z���� (�P�ʃX�P�[��)
%   random      - �w�肵�����z�����闐��
%   randsample  - �L����W�c����̖���וW�{
%   raylrnd     - ���C���[���z����
%   slicesample - �X���C�X�T���v�����O�@
%   trnd        - T ���z����
%   unidrnd     - ���U��l���z����
%   unifrnd     - ��l���z����
%   wblrnd      - ���C�u�����z����
%   wishrnd     - �E�B�b�V���[�g�����_���s��
%
%  ������������
%   haltonset   - �n���g�� (Halton) �_��W��
%   qrandstream - �������̃X�g���[��
%   sobolset    - �\�{�� (Sobol) �_��W��
%
% ���v��
%   betastat    - �x�[�^���z�̕��ϒl�ƕ��U
%   binostat    - �񍀕��z�̕��ϒl�ƕ��U
%   chi2stat    - �J�C��敪�z�̕��ϒl�ƕ��U
%   evstat      - �ɒl���z�̕��ϒl�ƕ��U
%   expstat     - �w�����z�̕��ϒl�ƕ��U
%   fstat       - F ���z�̕��ϒl�ƕ��U
%   gamstat     - �K���}���z�̕��ϒl�ƕ��U
%   geostat     - �􉽕��z�̕��ϒl�ƕ��U
%   gevstat     - ��ʉ��ɒl�̕��ϒl�ƕ��U
%   gpstat      - ��ʉ��p���[�g�̕��ϒl�ƕ��U
%   hygestat    - ���􉽕��z�̕��ϒl�ƕ��U
%   lognstat    - �ΐ����K���z�̕��ϒl�ƕ��U
%   nbinstat    - ���̓񍀕��z�̕��ϒl�ƕ��U
%   ncfstat     - ��S F ���z�̕��ϒl�ƕ��U
%   nctstat     - ��S t ���z�̕��ϒl�ƕ��U
%   ncx2stat    - ��S�J�C��敪�z�̕��ϒl�ƕ��U
%   normstat    - ���K (�K�E�X) ���z�̕��ϒl�ƕ��U
%   poisstat    - �|�A�\�����z�̕��ϒl�ƕ��U
%   raylstat    - ���C���[���z�̕��ϒl�ƕ��U
%   tstat       - T ���z�̕��ϒl�ƕ��U
%   unidstat    - ���U��l���z�̕��ϒl�ƕ��U
%   unifstat    - ��l���z�̕��ϒl�ƕ��U
%   wblstat     - ���C�u�����z�̕��ϒl�ƕ��U
%
%  �ޓx�֐�
%   betalike    - ���̃x�[�^�ΐ��ޓx
%   evlike      - ���̋ɒl�ΐ��ޓx
%   explike     - ���̎w���ΐ��ޓx
%   gamlike     - ���̃K���}�ΐ��ޓx
%   gevlike     - ���̈�ʉ��ɒl�̑ΐ��ޓx
%   gplike      - ���̈�ʉ��p���[�g�̑ΐ��ޓx
%   lognlike    - ���̑ΐ����K�ΐ��ޓx
%   nbinlike    - ���̓񍀑ΐ��ޓx
%   normlike    - ���̐��K�ΐ��ޓx
%   wbllike     - ���̃��C�u���ΐ��ޓx
%
%  �m�����z�I�u�W�F�N�g
%   ProbDistUnivKernel - 1 �ϗʃJ�[�l�����������z
%   ProbDistUnivParam  - 1 �ϗʃp�����g���b�N���z
%
% �L�q�I���v��
%   bootci      - �u�[�g�X�g���b�v�M�����
%   bootstrp    - �u�[�g�X�g���b�v���v��
%   corr        - ���`�A�܂��͏��ʑ��֌W��
%   corrcoef    - ���`���֌W�� (MATLAB �c�[���{�b�N�X)
%   cov         - �����U (MATLAB �c�[���{�b�N�X)
%   crosstab    - �x�N�g���̃N���X�\
%   geomean     - �􉽕���
%   grpstats    - �O���[�v���̓��v��
%   harmmean    - ���a����
%   iqr         - �W�{�̎l���ʃ����W
%   jackknife   - �W���b�N�i�C�t���v��
%   kurtosis    - �W�{��x
%   mad         - �f�[�^�W�{�̕��ϐ�Ε΍�
%   mean        - �W�{���� (MATLAB �c�[���{�b�N�X)
%   median      - �W�{�� 50 �Ԗڂ̕S���ʐ� (MATLAB �c�[���{�b�N�X)
%   mode        - �W�{���̃��[�h�܂��͍ł��p�x�̍����l (MATLAB �c�[���{�b�N�X)
%   moment      - ����W�{�̃��[�����g
%   nancov      - NaN �𖳎����������U�s��
%   nanmax      - NaN �𖳎������ő�l
%   nanmean     - NaN �𖳎��������ϒl
%   nanmedian   - NaN �𖳎����������l
%   nanmin      - NaN �𖳎������ŏ��l
%   nanstd      - NaN �𖳎������W���΍�
%   nansum      - NaN �𖳎������a
%   nanvar      - NaN �𖳎��������U
%   partialcorr - ���`�A�܂��͏��ʕ������֌W��
%   prctile     - �W�{�̕S���ʐ�
%   quantile    - �l����
%   range       - �͈�
%   skewness    - �W�{�c�x
%   std         - �W���΍� (MATLAB �c�[���{�b�N�X)
%   tabulate    - �p�x�\
%   trimmean    - �ُ�l�����������f�[�^�W�{�̕���
%   var         - ���U (MATLAB �c�[���{�b�N�X)
% 
% ���`���f��
%   addedvarplot - �X�e�b�v���C�Y��A�̂��߂̒ǉ����ꂽ�ϐ��v���b�g�̍쐬
%   anova1      - ��v�����U����
%   anova2      - ��v�����U����
%   anovan      - n-�v�����U����
%   aoctool     - �����U�̉�͂̂��߂̑Θb�`���̃c�[��
%   dummyvar    - 0 �� 1 �̃_�~�[�ϐ��s��
%   friedman    - �t���[�h�}������ (�m���p�����g���b�N��v�����U����)
%   glmfit      - ��ʉ����`���f���̃t�B�b�e�B���O
%   glmval      - ��ʉ����`���f���̗\���l�̌v�Z
%   invpred     - �P���Ȑ��`��A�̋t�\��
%   kruskalwallis - �N���X�J��-�����X���� (�m���p�����g���b�N��v�����U����)
%   leverage    - ��A�f�f
%   lscov       - �ʏ�̏d�ݕt�����ꂽ�A�܂��͈�ʉ��ŏ���� (MATLAB �c�[���{�b�N�X)
%   lsqnonneg   - �񕉂̍ŏ���� (MATLAB �c�[���{�b�N�X)
%   manova1     - ��v�����U���ϗʉ��
%   manovacluster - manova1 �ɑ΂���O���[�v���ς̃N���X�^�̐}��
%   mnrfit      - ���`�܂��͏����̑������z��A���f���̃t�B�b�e�B���O
%   mnrval      - ���`�܂��͏����̑������z��A�̗\���l
%   multcompare - ���ϒl�A���̐���l�̑��d��r����
%   mvregress   - �����l�������ϗʉ�A
%   mvregresslike - ���ϗʉ�A�ɑ΂��镉�̑ΐ��ޓx
%   polyconf    - �������v�Z�ƐM����Ԃ̎Z�o
%   polyfit     - �ŏ����@���g�����������ߎ� (MATLAB �c�[���{�b�N�X)
%   polyval     - �������֐����g�����\���l (MATLAB �c�[���{�b�N�X)
%   rcoplot     - �P�[�X���̎c���\��
%   regress     - �ŏ������g�������d���`��A
%   regstats    - ��A�f�f�������O���t�B�J�����[�U�C���^�t�F�[�X
%   ridge       - ���b�W��A�̃p�����[�^����
%   robustfit   - ���o�X�g��A���f���t�B�b�e���O
%   rstool      - �����������T�[�t�F�X�̉����̉����c�[�� (RSM)
%   stepwise    - �X�e�b�v���C�Y��A�̑Θb�^�c�[��
%   stepwisefit - �Θb�^�ł͂Ȃ��X�e�b�v���C�Y��A
%   x2fx        - �\���q���v��s��ɕϊ�
%
% ����`���f��
%   coxphfit    - �R�b�N�X���n�U�[�h��A
%   nlinfit     - �j���[�g���@���g��������`�ŏ����@�ɂ��f�[�^�t�B�b�e�B���O
%   nlintool    - ����`���f���̗\���ɑ΂���Θb�^�O���t�B�b�N�X�c�[��
%   nlmefit     - ����`�������ʃf�[�^�ߎ�
%   nlpredci    - �\���ɑ΂���M�����
%   nlparci     - �p�����[�^�ɑ΂���M�����
%
% �����v��@(DOE)
%   bbdesign    - Box-Behnken �v��
%   candexch    - D-�œK�v�� (���W���ɑ΂���s�����A���S���Y��)�B
%   candgen     - D-�œK���v��쐬�̂��߂̌��W��
%   ccdesign    - ���S�����v��
%   cordexch    - D-�œK�v��@ (���W�����A���S���C�Y��)
%   daugment    - �g�� D-�œK�v��@
%   dcovary     - �C�������U������ D-�œK�v��@
%   fracfactgen - �ꕔ���{�v���v��@�̐����q
%   ff2n        - 2 ���x���̊��S���{�v��
%   fracfact    - 2 ���x���ꕔ���{�v���v��@
%   fullfact    - �������x���̊��S���{�v��
%   hadamard    - �A�_�}�[���s�� (����z��) (MATLAB �c�[���{�b�N�X)
%   lhsdesign   - ���e�������i�̕W�{���쐬
%   lhsnorm     - ���ϗʐ��K���z�������e�������i�W�{
%   rowexch     - D-�œK�v��@ (�s�����A���S���Y��)
%
% ���v�I�H���Ǘ� (SPC)
%   capability  - �H���\�͎w��
%   capaplot    - �H���\�̓v���b�g
%   controlchart - �V���[�n�[�g�Ǘ��}
%   controlrules - SPC �f�[�^�ɑ΂���Ǘ����[�� (Western Electric �܂��� Nelson)
%   gagerr      - �Q�[�W�̔������ƍČ��� (R&R) ����
%   histfit     - �q�X�g�O�����Ɛ��K���x�Ȑ�
%   normspec    - �ݒ肵���͈͊Ԃł̐��K���z���x�̃v���b�g
%   runstest    - ����א��̌�������s
%
% ���ϗʓ��v��
%  �N���X�^����
%   cophenet    - �R�[�t�F�����֌W�����Z�o
%   cluster     - LINKAGE �o�͂���̃N���X�^�̍쐬
%   clusterdata - �f�[�^����N���X�^�̍쐬
%   dendrogram  - ���`�̍쐬
%   gmdistribution - �K�E�X�̍������f���̐���
%   inconsistent- �N���X�^�c���[�̐������̂Ȃ��l
%   kmeans      - K ���σN���X�^�����O
%   linkage     - �K�w�I�ȃN���X�^�̏��̎擾
%   pdist       - �ϑ��Ԃ̋����̎Z�o
%   silhouette  - �N���X�^�f�[�^�̗֊s���v���b�g
%   squareform  - �����s��`���ŋ�����\��
%
%  ����
%   classify    - ���`���ʕ���
%   NaiveBayes  - �P���ȃx�C�Y����
%
% �����팸��@
%   factoran    - �v������
%   nnmf        - �񕉂̍s��̈��q����
%   pcacov      - �����U�s��ɂ��听������
%   pcares      - �听�����͂���̎c��
%   princomp    - ���f�[�^�s��ɂ��听������
%   rotatefactors - FA �܂��� PCA �̉׏d��]
%
% �R�s���� (�A��)
%   copulacdf   - �R�s�����̗ݐϊm���֐�
%   copulafit   - �p�����g���b�N�ȃR�s�������f�[�^�ɋߎ�
%   copulaparam - ���ʑ��ւ̊֐��Ƃ��ẴR�s�����̃p�����[�^
%   copulapdf   - �R�s�����̊m�����x�֐�
%   copularnd   - �R�s�����̗����x�N�g��
%   copulastat  - �R�s�����̏��ʑ���
%
% �v���b�g
%   andrewsplot - ���ϗʃf�[�^�ɑ΂��� Andrews �v���b�g
%   biplot      - �ϐ�/�v���̌W���ƃX�R�A�̃o�C�v���b�g
%   interactionplot - �v�����ʂ̑��ݍ�p�v���b�g
%   maineffectsplot - �v�����ʂ̎���ʃv���b�g
%   glyphplot   - ���ϗʃf�[�^�ɑ΂���X�^�[�v���b�g�܂��� Chernoff �̊�O���t�̃v���b�g
%   gplotmatrix - ���ʕϐ��ŃO���[�v�����ꂽ�U�z�}�v���b�g�s��
%   multivarichart - �v�����ʂ̑��ϗʊǗ��}
%   parallelcoords - ���ϐ��f�[�^�ɑ΂��镽�s���W�v���b�g
%
% ���̑��ϗʎ�@
%   barttest    - �����Ɋւ���o�[�g���b�g����
%   canoncorr   - �������֕���
%   cmdscale    - �ÓT�I�������ړx�\���@
%   mahal       - �}�n���m�r�X�̋���
%   manova1     - ��v�����U���ϗʉ��
%   mdscale     - �m�����g���b�N����у��g���b�N�������X�P�[�����O
%   mvregress   - �����f�[�^�������ϗʉ�A
%   plsregress  - �����ŏ�����A
%   procrustes  - �v���N���X�e�X����
%
% ����؎�@
%   classregtree - ���ނ܂��͉�A��
%   TreeBagger   - �܂Ƃ܂�������؂̏W��
%   CompactTreeBagger - �܂Ƃ܂�������؂̌y�ʂȏW��
%
% ��������
%   ansaribradley - �����ȕ��U�ɑ΂���A���T��-�u���b�h���[�� 2 �W�{����
%   dwtest      - ���`��A�̎��ȑ��ւɑ΂���_�[�r��-���g�\������
%   linhyptest  - �p�����[�^����ɂ�������`��������
%   ranksum     - �E�B���R�N�\���̏��ʘa���� (�Ɨ��ȕW�{)
%   runstest    - ����א��ɑ΂��錟��̎��s
%   sampsizepwr - ��������̕W�{�T�C�Y�Əo�͌v�Z
%   signrank    - �E�B���R�N�\�����������ʘa���� (�ΕW�{)
%   signtest    - ���������� (�ΕW�{)
%   ttest       - 1 �W�{ t ����
%   ttest2      - 2 �W�{ t ����
%   vartest     - ���U�� 1 �W�{����
%   vartest2    - �����ȕ��U�� 2 �W�{ F ����
%   vartestn    - �����̃O���[�v�ɂ܂����铙���ȕ��U�̌���
%   ztest       - Z ����
%
% ���z�e�X�g
%   chi2gof     - �J�C���K��������
%   jbtest      - ���K���� Jarque-Bera ����
%   kstest      - 1 �W�{�ɑ΂���R�����S���t-�X�~���m�t����
%   kstest2     - 2 �W�{�ɑ΂���R�����S���t-�X�~���m�t����
%   lillietest  - ���K���̃����[�t�H�[�X����
%
% �m���p�����g���b�N�֐�
%   friedman    - �t���[�h�}������ (�m���p�����g���b�N�j�v�����U����)
%   kruskalwallis - �N���X�J��-�����X���� (�m���p�����g���b�N��v�����U����)
%   ksdensity   - �J�[�l�����������x�̐���
%   ranksum     - �E�B���R�N�\���̏��ʘa���� (�Ɨ��ȕW�{)
%   signrank    - �E�B���R�N�\�����������ʘa���� (�ΕW�{)
%   signtest    - ���������� (�ΕW�{)
%
% �B��}���R�t���f��
%   hmmdecode   - HMM �̌���̏�Ԋm�����v�Z
%   hmmestimate - ��ԏ���^����ꂽHMM�p�����[�^����
%   hmmgenerate - HMM �ɑ΂��郉���_���Ȍn��̐���
%   hmmtrain    - HMM �p�����[�^�ɑ΂���Ŗސ���l�̌v�Z
%   hmmviterbi  - HMM �̌n��ɑ΂��čł��N���肤���ԃp�X���v�Z
%
% ���f���]��
%   confusionmat - ���ރA���S���Y���ɑ΂��鍬���s��
%   crossval    - ����������g������������
%   cvpartition - ��������̋敪
%   perfcurve   - ROC �ƕ��ރA���S���Y���ɑ΂��鑼�̐��\�̎ړx
%
% ���f���I��
%   sequentialfs - �A�������@�\�I��
%   stepwise    - �X�e�b�v���C�Y��A�ɑ΂���Θb�^�c�[��
%   stepwisefit - ��Θb�^�̃X�e�b�v���C�Y��A
%
% ���v���L�̃v���b�g�֐�
%   andrewsplot - ���ϗʃf�[�^�ɑ΂��� Andrews �v���b�g
%   biplot      - �ϐ�/�v���̌W���ƃX�R�A�̃o�C�v���b�g
%   boxplot     - �f�[�^�s��̃{�b�N�X�v���b�g (��P��)
%   cdfplot     - �o���ݐϕ��z�֐��̃v���b�g
%   ecdf        - �o���I�ݐϕ��z�֐� (�J�v����-�}�C���[����l)
%   ecdfhist    - �o���I�ݐϕ��z�֐�����v�Z���ꂽ�q�X�g�O����
%   fsurfht     - ����֐��̑Θb�^�ɂ��R���^�[�v���b�g
%   gline       - �}�̒��ɑΘb�`���Œ�����`��
%   glyphplot   - ���ϗʃf�[�^�ɑ΂���X�^�[�v���b�g�܂��� Chernoff �̊�O���t�̃v���b�g
%   gname       - �Θb�^�œ_�̃��x���\��
%   gplotmatrix - ���ʕϐ����g���ăO���[�v�����ꂽ�U�z�}�v���b�g�̍s��
%   gscatter    - �O���[�v�����ꂽ�ϐ��̎U�z�}���쐬
%   hist        - �q�X�g�O���� (MATLAB �c�[���{�b�N�X)
%   hist3       - 2 �ϐ��f�[�^�� 3 �����q�X�g�O����
%   ksdensity   - �J�[�l�����������x����
%   lsline      - �U�z�}�ɍŏ����ߎ��������d�˕\��
%   normplot    - ���K�m�����z�̃v���b�g
%   parallelcoords - ���ϐ��f�[�^�ɑ΂��镽�s���W�v���b�g
%   probplot    - �m���v���b�g
%   qqplot      - �l���ʃv���b�g
%   refcurve    - ��������̃v���b�g
%   refline     - ����C��
%   scatterhist - ���Ӄq�X�g�O���������� 2D �U�z�}
%   surfht      - �f�[�^�O���b�h�̑Θb�^�R���^�[�v���b�g
%   wblplot     - ���C�u���m���̃v���b�g
%
% �f�[�^�I�u�W�F�N�g
%   dataset     - ���[�N�X�y�[�X�ϐ��܂��̓t�@�C������f�[�^�Z�b�g���쐬
%   nominal     - ���`�ړx�f�[�^�̔z����쐬
%   ordinal     - �����ړx�f�[�^�̔z����쐬
%
% ���v�f��
%   aoctool     - �����U�̉�͂ɑ΂���Θb�`���̃c�[��
%   disttool    - �m�����z�֐��𒲂ׂ� GUI �c�[��
%   polytool    - �ߎ��������̗\���Ɋւ���Θb�^�̃O���t�B�b�N�X�c�[��
%   randtool    - ���������p�� GUI �c�[��
%   rsmdemo     - �����v��ƋȐ��ߎ��̃f�����X�g���[�V����
%   robustdemo  - ���o�X�g��A�ƍŏ����t�B�b�e�B���O���r����Θb�`���̃c�[��
%
% �t�@�C���� I/O �֘A
%   tblread     - �t�@�C���V�X�e������\�ɂ����f�[�^����荞��
%   tblwrite    - �t�@�C���V�X�e���ɕ\�ɂ����f�[�^����������
%   tdfread     - �^�u��؂�̃t�@�C������e�L�X�g�Ɛ��l�f�[�^�̓ǂݍ���
%   caseread    - �t�@�C������P�[�X����ǂݍ���
%   casewrite   - �t�@�C���ɃP�[�X������������
%
% ���[�e�B���e�B�֐�
%   cholcov     - �����U�s��ɑ΂���R���X�L�[���C�N�ȕ���
%   combnk      - n �I�u�W�F�N�g�� k �𓯎��Ɏ��o�����ׂĂ̑g�ݍ��킹
%   corrcov     - �����U�s�񂩂瑊�֍s����v�Z
%   grp2idx     - �O���[�v���ϐ����C���f�b�N�X�Ɩ��O�̔z��ɕϊ�
%   hougen      - Hougen ���f�� (����`�̗�) �ɑ΂���\���֐�
%   statget     - STATS �I�v�V�����p�����[�^�l�̎擾
%   statset     - STATS �I�v�V�����p�����[�^�l�̐ݒ�
%   tiedrank    - �����ʂɑ΂��Ē������ꂽ�W�{�̏��ʂ��v�Z
%   zscore      - �e�񂪕��ϒl 0�A���U 1 �̗�ƂȂ�W�����s��

% Copyright 1993-2013 The MathWorks, Inc.