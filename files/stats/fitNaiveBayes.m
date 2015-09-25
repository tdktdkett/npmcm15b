function model = fitNaiveBayes(training, group, varargin)
%FITNAIVEBAYES Create a Naive Bayes classifier object by fitting to data.
%   NB = FITNAIVEBAYES(TRAINING, C) builds a NaiveBayes classifier object
%   NB. TRAINING is an N-by-D numeric matrix of predictor data. Rows of
%   TRAINING correspond to observations; columns correspond to features. C
%   contains the known class labels for TRAINING, and it take one of K
%   possible levels. C is a grouping variable, i.e., it can be a
%   categorical, numeric, or logical vector; a cell vector of strings; or a
%   character matrix with each row representing a class label. Each element
%   of C defines which class the corresponding row of TRAINING belongs to.
%   TRAINING and C must have the same number of rows.
%
%   Type "help groupingvariable" for more information about grouping
%   variables.
%
%   NB = FITNAIVEBAYES(..., 'PARAM1',val1, 'PARAM2',val2, ...)
%   specifies one or more of the following name/value pairs:
%
%      'Distribution'  A string or a 1-by-D cell vector of strings,
%                      specifying which distributions FITNAIVEBAYES uses to
%                      model the data. If the value is a string,
%                      FITNAIVEBAYES models all the features using one type
%                      of distribution. FITNAIVEBAYES can also model
%                      different features using different types of
%                      distributions. If the value is a cell vector, its
%                      Jth element specifies the distribution FITNAIVEBAYES
%                      uses for the Jth feature.  The available types of
%                      distributions are:
%          'normal'  Normal (Gaussian) distribution (default).
%          'kernel'  Kernel smoothing density estimate.
%          'mvmn'    Multivariate multinomial distribution for discrete
%                    data. FITNAIVEBAYES assumes each individual feature
%                    follows a multinomial model within a class. The
%                    parameters for a feature include the probabilities of
%                    all possible values that the corresponding feature can
%                    take.
%          'mn'      Multinomial distribution for classifying the count-
%                    based data such as the bag-of-tokens model. In the
%                    bag-of-tokens model, the value of the Jth feature is
%                    the number of occurrences of the Jth token in this
%                    observation, so it must be a non-negative integer.
%                    When 'mn' is used, FITNAIVEBAYES considers each
%                    observation as multiple trials of a Multinomial
%                    distribution, and considers each occurrence of a token
%                    as one trial. The number of categories(bins) in this
%                    multinomial model is the number of distinct tokens,
%                    i.e., the number of columns of TRAINING.
%                
%      'Prior'       The prior probabilities for the classes, specified as
%                    one of the following:
%          'empirical'   (default) FITNAIVEBAYES estimates the prior
%                        probabilities from the relative frequencies of the
%                        classes in TRAINING.
%          'uniform'     The prior probabilities are equal for all classes.
%          vector        A numeric vector of length K specifying the prior
%                        probabilities of the K possible values of C, in
%                        the order described in 'help groupingvariable'.
%          structure     A structure S containing class levels and their
%                        prior probabilities.  S must have two fields:
%                  S.prob  A numeric vector of prior probabilities.
%                  S.group A vector of the same type as C, containing
%                          unique class levels indicating the class for the
%                          corresponding element of prob.
%                        S.group must contain all the K levels in C. It can
%                        also contain classes that do not appear in C. This
%                        can be useful if TRAINING is a subset of a larger
%                        training set. FITNAIVEBAYES ignores any classes
%                        that appear in S.group but not in C.
%      If the prior probabilities don't sum to one, they will be normalized.
%
%      'KSWidth'     The bandwidth of the kernel smoothing window.  The
%                    default is to select a default bandwidth automatically
%                    for each combination of feature and class, using a
%                    value that is optimal for a Gaussian distribution.
%                    The value can be specified as one of the following:
%          scalar         Width for all features in all classes.
%          row vector     1-by-D vector where the Jth element is the
%                         bandwidth for the Jth feature in all classes.
%          column vector  K-by-1 vector where the Ith element specifies the
%                         bandwidth for all features in the Ith class. K
%                         represents the number of class levels.
%          matrix         K-by-D matrix M where M(I,J) specifies the
%                         bandwidth for the Jth feature in the Ith class.
%          structure      A structure S containing class levels and their
%                         bandwidths.  S must have two fields:
%                  S.width A numeric array of bandwidths specified as a row
%                          vector, or a matrix with D columns.
%                  S.group A vector of the same type as C, containing
%                          unique class levels indicating the class for the
%                          corresponding row of width.
%
%      'KSSupport'   The regions where the density can be applied.  It can
%                    be a string, a two-element vector as shown below, or
%                    a 1-by-D cell array of these values:
%          'unbounded'    (default) The density can extend over the whole
%                         real line.
%          'positive'     The density is restricted to positive values.
%          [L,U]          A two-element vector specifying the finite lower
%                         bound L and upper bound U for the support of the
%                         density.
%
%      'KSType'      The type of kernel smoother to use. It can be a string
%                    or a 1-by-D cell array of strings.  Each string can be
%                    'normal' (default), 'box', 'triangle', or
%                    'epanechnikov'.
%
%  The 'KSWidth', 'KSSupport', and 'KSType' parameters are used only for
%  features with the 'kernel' distribution and are ignored for all others.
%
%  FITNAIVEBAYES treats NaNs, empty strings or 'undefined' values as
%  missing values. For missing values in C, FITNAIVEBAYES removes the
%  corresponding rows of TRAINING. For missing values in TRAINING, when
%  distribution 'mn' is used, FITNAIVEBAYES removes the corresponding rows
%  of TRAINING, otherwise, FITNAIVEBAYES only removes the missing values
%  and uses the values of other features in the corresponding rows of
%  TRAINING.
%
%  See also NAIVEBAYES, FITCDISCR, FITCKNN, FITCSVM.

model = NaiveBayes.fit(training, group,varargin{:});

end

