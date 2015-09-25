classdef CompactTreeBagger
%COMPACTTREEBAGGER Compact ensemble of decision trees grown by bagging
%    The CompactTreeBagger object is a lightweight object that contains
%    the trees grown by TreeBagger.  CompactTreeBagger does not
%    preserve any information about how the decision trees were grown.
%    It does not contain the input data used for growing trees, nor
%    does it contain training parameters such as minimal leaf size or
%    number of variables sampled for each decision split at random.
%    The CompactTreeBagger object can only be used for predicting the
%    response of the trained ensemble given new data X, and other
%    related functions.
%
%    CompactTreeBagger lets you save the trained ensemble to disk, or use
%    it in any other way, while discarding  training data and various
%    parameters of the training configuration irrelevant for predicting
%    response of the fully grown ensemble.  This reduces storage and memory
%    requirements, especially for ensembles trained on large datasets.
%
%    When you use the TreeBagger constructor to grow trees, it creates a
%    CompactTreeBagger object. You can obtain the compact object from the
%    full TreeBagger object using TREEBAGGER/COMPACT method. You do not
%    create an instance of CompactTreeBagger directly.
%
%    CompactTreeBagger properties:
%      Trees         - Decision trees in the ensemble.
%      NTrees        - Number of decision trees in the ensemble.
%      ClassNames    - Names of classes.
%      VarNames      - Variable names.
%      Method        - Method used by trees (classification or regression).
%      DeltaCritDecisionSplit - Split criterion contributions for each predictor.
%      NVarSplit     - Number of decision splits on each predictor.
%      VarAssoc      - Variable associations.
%      DefaultYfit   - Default value returned by PREDICT.
%
%    CompactTreeBagger methods:
%      combine        - Combine two ensembles.
%      error          - Error (misclassification probability or MSE).
%      margin         - Classification margin.
%      mdsProx        - Multidimensional scaling of proximity matrix.
%      meanMargin     - Mean classification margin per tree.
%      outlierMeasure - Outlier measure for data.
%      predict        - Predict response.
%      proximity      - Proximity matrix for data.
%      setDefaultYfit - Set the default value for PREDICT.
%
%   See also TREEBAGGER, TREEBAGGER/TREEBAGGER, TREEBAGGER/COMPACT,
%   ClassificationTree, RegressionTree,
%   classreg.learning.classif.CompactClassificationTree,
%   classreg.learning.regr.CompactRegressionTree.
    
%   Copyright 2008-2013 The MathWorks, Inc.

    properties(SetAccess=protected,GetAccess=public)
        %TREES Decision trees in the ensemble.
        %   The Trees property is a cell array of size NTrees-by-1 containing the
        %   trees in the ensemble.
        %
        %   See also COMPACTTREEBAGGER, NTREES.
        Trees;
        
        %NTREES Number of decision trees in the ensemble.
        %   The NTrees property is a scalar equal to the number of decision trees
        %   in the ensemble.
        %
        %   See also COMPACTTREEBAGGER, TREES.
        NTrees;
        
        %CLASSNAMES Names of classes.
        %   The ClassNames property is a cell array containing the class names for
        %   the response variable Y that was supplied to TreeBagger.  This property
        %   is empty for regression trees.
        %
        %   See also COMPACTTREEBAGGER.
        ClassNames;

        %VARNAMES Variable names.
        %   The VarNames property is a cell array containing the names of the
        %   predictor variables (features).  These names are taken from the
        %   optional 'names' parameter that was supplied to TreeBagger.  The
        %   default names are 'x1', 'x2', etc.
        %
        %   See also COMPACTTREEBAGGER.
        VarNames;

        %DEFAULTYFIT Default value returned by PREDICT.
        %   The DefaultYfit property controls what predicted value is returned when
        %   no prediction is possible, for example when the PREDICT method needs to
        %   predict for an observation which has only false values in the matrix
        %   supplied through 'useifort' argument.  For classification, you can set
        %   this property to either '' or 'MostPopular'.  If you choose
        %   'MostPopular' (default), the property value becomes the name of the
        %   most probable class in the training data. For regression, you can set
        %   this property to any numeric scalar.  The default is the mean of the
        %   response for the training data.
        %
        %   See also COMPACTTREEBAGGER, PREDICT, SETDEFAULTYFIT.
        DefaultYfit;
    end
    
    properties(SetAccess=protected,GetAccess=public,Dependent=true)
        %METHOD Method used by trees (classification or regression).
        %   The Method property is 'classification' for classification ensembles
        %   and 'regression' for regression ensembles.
        %
        %   See also COMPACTTREEBAGGER.
        Method;

        %DELTACRITDECISIONSPLIT Split criterion contributions for each predictor.
        %   The DeltaCritDecisionSplit property is a numeric array of size
        %   1-by-Nvars of changes in the split criterion summed over splits on each
        %   variable, averaged across the entire ensemble of grown trees.
        %
        % See also COMPACTTREEBAGGER, ClassificationTree/predictorImportance,
        % RegressionTree/predictorImportance.
        DeltaCritDecisionSplit;
        
        %NVARSPLIT Number of decision splits for each predictor.
        %   The NVarSplit property is a numeric array of size 1-by-Nvars, where
        %   every element gives a number of splits on this predictor summed over
        %   all trees.
        %
        %   See also COMPACTTREEBAGGER.
        NVarSplit;
        
        %VARASSOC Variable associations.
        %   The VarAssoc property is a matrix of size Nvars-by-Nvars with
        %   predictive measures of variable association, averaged across the entire
        %   ensemble of grown trees. If you grew the ensemble setting 'surrogate'
        %   to 'on', this matrix for each tree is filled with predictive measures
        %   of association averaged over the surrogate splits. If you grew the
        %   ensemble setting 'surrogate' to 'off' (default), VarAssoc is diagonal.
        %
        % See also COMPACTTREEBAGGER, ClassificationTree/meanSurrVarAssoc,
        % RegressionTree/meanSurrVarAssoc.
        VarAssoc;
    end
    
    properties(SetAccess=public,GetAccess=public,Hidden=true)
        ClassProb;
        DefaultScore;
    end
    
    methods
        function meth = get.Method(bagger)
            if isempty(bagger.ClassNames)
                meth = 'regression';
            else
                meth = 'classification';
            end
        end

        function deltacrit = get.DeltaCritDecisionSplit(bagger)
            nvar = length(bagger.VarNames);
            deltacrit = zeros(1,nvar);
            nTrees = bagger.NTrees;
            if nTrees==0
                return;
            end
            if isa(bagger.Trees{1},'classregtree')
                for it=1:nTrees
                    deltacrit = deltacrit + varimportance(bagger.Trees{it});
                end
            else
                for it=1:nTrees
                    deltacrit = deltacrit + predictorImportance(bagger.Trees{it});
                end
            end
            deltacrit = deltacrit/nTrees;
        end
        
        function nsplit = get.NVarSplit(bagger)
            nvar = length(bagger.VarNames);
            nsplit = zeros(1,nvar);
            nTrees = bagger.NTrees;
            if nTrees==0
                return;
            end
            if isa(bagger.Trees{1},'classregtree')
                if isempty(bagger.Trees{1}.nvarsplit)
                    nsplit = [];
                else
                    for it=1:nTrees
                        nsplit = nsplit + bagger.Trees{it}.nvarsplit;
                    end
                end
            else
                for it=1:nTrees
                    [~,nsplitOneTree] = predictorImportance(bagger.Trees{it}.Impl);
                    nsplit = nsplit + nsplitOneTree;
                end
            end
        end
        
        function assoc = get.VarAssoc(bagger)
            nvar = length(bagger.VarNames);
            assoc = zeros(nvar);
            nTrees = bagger.NTrees;
            if nTrees==0
                return;
            end
            if isa(bagger.Trees{1},'classregtree')
                for it=1:nTrees
                    assoc = assoc + meansurrvarassoc(bagger.Trees{it});
                end
            else
                for it=1:nTrees
                    assoc = assoc + meanSurrVarAssoc(bagger.Trees{it});
                end
            end
            assoc = assoc/nTrees;
        end

        function bagger = set.DefaultScore(bagger,score)
            if ~isnumeric(score)
                error(message('stats:CompactTreeBagger:DefaultScore:NotNumeric'));
            end
            if     bagger.Method(1)=='c' && ...
                    length(score)~=length(bagger.ClassNames)
                error(message('stats:CompactTreeBagger:DefaultScore:SizeMismatch'));
            elseif bagger.Method(1)=='r' && ~isscalar(score)
                error(message('stats:CompactTreeBagger:DefaultScore:MustBeScalarForRegr'));
            end
            if size(score,1)~=1
                score = score';
            end
            bagger.DefaultScore = score;
        end
    end
       
    methods
        function [yfit,scores,stdevs] = predict(bagger,X,varargin)
            %PREDICT Predict response.
            %   YFIT = PREDICT(B,X) computes the predicted response of the trained
            %   ensemble B for predictors X.  By default, PREDICT takes a democratic
            %   (non-weighted) average vote from all trees in the ensemble.  In X, rows
            %   represent observations and columns represent variables. YFIT is a cell
            %   array of strings for classification and a numeric array for regression.
            %
            %   For regression, [YFIT,STDEVS] = PREDICT(B,X) also returns standard
            %   deviations of the computed responses over the ensemble of the grown
            %   trees.
            %
            %   For classification, [YFIT,SCORES] = PREDICT(B,X) returns scores for all
            %   classes. SCORES is a matrix with one row per observation and one column
            %   per class. The order of the columns is given by ClassNames property. For
            %   each observation and each class, the score generated by each tree is
            %   the probability of this observation originating from this class
            %   computed as the fraction of observations of this class in a tree leaf.
            %   These scores are averaged over all trees in the ensemble.
            %
            %   [YFIT,SCORES,STDEVS] = PREDICT(B,X) also returns standard deviations of
            %   the computed scores for classification. STDEVS is a matrix with one row
            %   per observation and one column per class, with standard deviations
            %   taken over the ensemble of the grown trees.
            %
            %   Y = PREDICT(B,X,'PARAM1',val1,'PARAM2',val2,...) specifies optional
            %   parameter name/value pairs:
            %
            %      'trees'     Array of tree indices to use for computation of
            %                  responses.  Default is 'all'.
            %      'treeweights'  Array of NTrees weights for weighting votes from the
            %                  specified trees.
            %      'useifort'  Logical matrix of size Nobs-by-NTrees indicating which
            %                  trees should be used to make predictions for each
            %                  observation.  By default all trees are used for all
            %                  observations. If no trees are used for an observation
            %                  (the row of the matrix has no true values), PREDICT
            %                  returns the default prediction, most popular class for
            %                  classification or sample mean for regression. The
            %                  default prediction can be changed using DefaultYfit.
            %                  property.
            %
            %   See also COMPACTTREEBAGGER, CLASSNAMES, ClassificationTree/predict,
            %   RegressionTree/predict, DEFAULTYFIT, SETDEFAULTYFIT.

            % Process inputs
            args = {'useifort' 'trees' 'treeweights'};
            defs = {     'all'   'all'            []};
            [useIforT,useTrees,treeWeights] = ...
                internal.stats.parseArgs(args,defs,varargin{:});
            
            % Compute response
            if nargout>2 || (bagger.Method(1)=='r' && nargout>1)
                [yfit,scores,stdevs,scoreweights] = ...
                    predictAccum(bagger,X,'useifort',useIforT,...
                    'trees',useTrees,'treeweights',treeWeights);
                stdevs = bsxfun(@rdivide,stdevs,scoreweights);
                stdevs = sqrt(max(stdevs,0));
                if bagger.Method(1)=='r'
                    scores = stdevs;
                end
            else
                [yfit,scores] = ...
                    predictAccum(bagger,X,'useifort',useIforT,...
                    'trees',useTrees,'treeweights',treeWeights);
            end
        end
        
        function err = error(bagger,X,Y,varargin)
            %ERROR Error (misclassification probability or MSE).
            %   ERR = ERROR(B,X,Y) computes the misclassification probability (for
            %   classification trees) or mean squared error (MSE, for regression trees)
            %   for each tree, for predictors X given true response Y. For
            %   classification, Y can be either a numeric vector, character matrix,
            %   cell array of strings, categorical vector or logical vector. For
            %   regression, Y must be a numeric vector.  ERR is a vector with one error
            %   measure for each of the NTrees trees in the ensemble B.
            %
            %   ERR = ERROR(B,X,Y,'PARAM1',val1,'PARAM2',val2,...) specifies optional
            %   parameter name/value pairs.
            %
            %     'mode'     String indicating how errors are computed. If set to
            %                'cumulative' (default), cumulative errors are computed and
            %                ERR is a vector of length NTrees, where the 1st element
            %                gives error from tree 1, 2nd element gives error from
            %                trees 1:2 etc, up to 1:NTrees. If set to 'individual', ERR
            %                is a vector of length NTrees, where each element is an
            %                error from each tree in the ensemble. If set to
            %                'ensemble', ERR is a scalar showing the cumulative error
            %                for the entire ensemble.
            %     'weights'  Vector of observation weights to use for error
            %                averaging. By default the weight of every observation
            %                is set to 1. The length of this vector must be equal
            %                to the number of rows in X.
            %     'trees'    Vector of indices indicating what trees to include
            %                in this calculation. By default, this argument is set to
            %                'all' and ERROR uses all trees. If 'trees' is a numeric
            %                vector, the method returns a vector of length NTrees for
            %                'cumulative' and 'individual' modes, where NTrees is the
            %                number of elements in the input vector, and a scalar for
            %                'ensemble' mode. For example, in the 'cumulative' mode,
            %                the 1st element gives an error from trees(1), the 2nd
            %                element gives an error from trees(1:2) etc.
            %     'treeweights' Vector of tree weights. This vector must have the same
            %                length as the 'trees' vector. ERROR uses these weights to
            %                combine output from the specified trees by taking a
            %                weighted average instead of the simple non-weighted
            %                majority vote. You cannot use this argument in the
            %                'individual' mode.
            %     'useifort' Logical matrix of size Nobs-by-NTrees indicating which
            %                trees ERROR should use to make predictions for each
            %                observation.  By default the method uses all trees for all
            %                observations.
            %
            % See also COMPACTTREEBAGGER, PREDICT.
            
            % Process inputs
            args = {      'mode' 'weights' 'useifort' 'trees' 'treeweights'};
            defs = {'cumulative'        []      'all'   'all'            []};
            [mode,W,useIforT,useTrees,treeWeights] = ...
                internal.stats.parseArgs(args,defs,varargin{:});

            % Process mode
            if ~ischar(mode) || ...
                    ~any(strncmpi(mode,{'cumulative' 'individual' 'ensemble'},length(mode)))
                error(message('stats:CompactTreeBagger:error:BadMode'));
            end
            
            % Check observation weights
            N = size(X,1);
            if isempty(W)
                W = ones(N,1);
            end
            if ~isnumeric(W) || length(W)~=N || any(W<0) || all(W==0)
                error(message('stats:CompactTreeBagger:predictAccum:BadW', N));
            end

            % Convert logical to double
            if islogical(Y)
                Y = double(Y);
            end
            
            % For classification, convert labels to strings
            if bagger.Method(1)=='c' && ~iscellstr(Y)
                Y = cellstr(classreg.learning.internal.ClassLabel(Y));
            end
            
            % Check trees
            if ~strcmpi(useTrees,'all') && ~isnumeric(useTrees)
                error(message('stats:CompactTreeBagger:error:BadUseTrees'));
            end
            
            % How many trees?
            if ischar(useTrees)
                useTrees = 1:bagger.NTrees;
            end
            nTrees = length(useTrees);
            if strncmpi(mode,'ensemble',length(mode))
                nTrees = 1;
            end

            % Process weights
            if isempty(treeWeights)
                treeWeights = ones(length(useTrees),1);
            else
                if strncmpi(mode,'individual',length(mode))
                    warning(message('stats:CompactTreeBagger:error:TreeWeightsNotAllowedForIndivMode'));
                end
                if ~isnumeric(treeWeights)
                    error(message('stats:CompactTreeBagger:error:TreeWeightsNotNumeric'));
                end
            end

            % Init
            nCols = max(length(bagger.ClassNames),1);
            sfit = NaN(N,nCols);
            stdfit = NaN(N,nCols);
            wfit = zeros(N,1);

            % Init errors
            err = NaN(nTrees,1);

            % Compute
            if     strncmpi(mode,'individual',length(mode))
                for it=1:nTrees
                    yfit = predict(bagger,X,'useifort',useIforT,'trees',useTrees(it));
                    if bagger.Method(1)=='c' % classification
                        filled = ~cellfun(@isempty,yfit);
                        Wtot = sum(W(filled));
                        if Wtot>0
                            err(it) = dot(W(filled),~strcmp(Y(filled),yfit(filled)))/Wtot;
                        end
                    else
                        filled = ~arrayfun(@isnan,yfit);
                        Wtot = sum(W(filled));
                        if Wtot>0
                            err(it) = dot(W(filled),(Y(filled)-yfit(filled)).^2)/Wtot;
                        end
                    end
                end
            elseif strncmpi(mode,'cumulative',length(mode))
                for it=1:nTrees
                    [yfit,sfit,stdfit,wfit] = ...
                        predictAccum(bagger,X,'useifort',useIforT,...
                        'trees',useTrees(it),'treeweights',treeWeights(it),...
                        'scores',sfit,'stdevs',stdfit,'scoreweights',wfit);
                    if bagger.Method(1)=='c' % classification
                        filled = ~cellfun(@isempty,yfit);
                        Wtot = sum(W(filled));
                        if Wtot>0
                            err(it) = dot(W(filled),~strcmp(Y(filled),yfit(filled)))/Wtot;
                        end
                    else
                        filled = ~arrayfun(@isnan,yfit);
                        Wtot = sum(W(filled));
                        if Wtot>0
                            err(it) = dot(W(filled),(Y(filled)-yfit(filled)).^2)/Wtot;
                        end
                    end
                end
            elseif strncmpi(mode,'ensemble',length(mode))
                yfit = predict(bagger,X,'useifort',useIforT,...
                    'trees',useTrees,'treeweights',treeWeights);
                if bagger.Method(1)=='c' % classification
                    filled = ~cellfun(@isempty,yfit);
                    Wtot = sum(W(filled));
                    if Wtot>0
                        err = dot(W(filled),~strcmp(Y(filled),yfit(filled)))/Wtot;
                    end
                else
                    filled = ~arrayfun(@isnan,yfit);
                    Wtot = sum(W(filled));
                    if Wtot>0
                        err = dot(W(filled),(Y(filled)-yfit(filled)).^2)/Wtot;
                    end
                end
            end
        end
        
        function mar = margin(bagger,X,Y,varargin)
            %MARGIN Classification margin.
            %   MAR = MARGIN(B,X,Y) computes the classification margins for predictors
            %   X given true response Y. The Y can be either a numeric vector,
            %   character matrix, cell array of strings, categorical vector or logical
            %   vector (see help for groupingvariable).  MAR is a numeric array of size
            %   Nobs-by-NTrees, where Nobs is the number of rows of X and Y, and NTrees
            %   is the number of trees in the ensemble B.  For observation I and tree
            %   J, MAR(I,J) is the difference between the score for the true class and
            %   the largest score for other classes.  This method is available for
            %   classification ensembles only.
            %
            %   MAR = MARGIN(B,X,Y,'PARAM1',val1,'PARAM2',val2,...) specifies optional
            %   parameter name/value pairs.
            %
            %     'mode'     String indicating how MARGIN computes errors. If set to
            %                'cumulative' (default), the method computes cumulative
            %                margins and MAR is an Nobs-by-NTrees matrix, where the 1st
            %                column gives margins from tree 1, 2nd column gives margins
            %                from trees 1:2 etc, up to 1:NTrees. If set to
            %                'individual', MAR is an Nobs-by-NTrees matrix, where each
            %                column gives margins from each tree in the ensemble. If
            %                set to 'ensemble', MAR is a single column of length Nobs
            %                showing the cumulative margins for the entire ensemble.
            %     'trees'    Vector of indices indicating what trees to include
            %                in this calculation. By default, this argument is set to
            %                'all' and MARGIN uses all trees. If 'trees' is a numeric
            %                vector, the method returns an Nobs-by-NTrees matrix for
            %                'cumulative' and 'individual' modes, where NTrees is the
            %                number of elements in the input vector, and a single
            %                column for 'ensemble' mode. For example, in the
            %                'cumulative' mode, the 1st column gives margins from
            %                trees(1), the 2nd column gives margins from trees(1:2)
            %                etc.
            %     'treeweights' Vector of tree weights. This vector must have the same
            %                length as the 'trees' vector. MARGIN uses these weights to
            %                combine output from the specified trees by taking a
            %                weighted average instead of the simple non-weighted
            %                majority vote. This argument cannot be used in the
            %                'individual' mode.
            %     'useifort' Logical matrix of size Nobs-by-NTrees indicating which
            %                trees should be used to make predictions for each
            %                observation.  By default all trees are used for all
            %                observations.
            %
            % See also COMPACTTREEBAGGER, PREDICT, GROUPINGVARIABLE.

            % Process inputs
            args = {      'mode' 'useifort' 'trees' 'treeweights'};
            defs = {'cumulative'      'all'   'all'            []};
            [mode,useIforT,useTrees,treeWeights] = ...
                internal.stats.parseArgs(args,defs,varargin{:});
            
            % Process mode
            if ~ischar(mode) || ...
                    ~any(strncmpi(mode,{'cumulative' 'individual' 'ensemble'},length(mode)))
                error(message('stats:CompactTreeBagger:margin:BadMode'));
            end
            
            % This Method is valid for classification only
            if bagger.Method(1)=='r'
                error(message('stats:CompactTreeBagger:margin:InvalidOperation'));
            end
            
            % For classification, convert labels to strings
            if islogical(Y)
                Y = double(Y);
            end
            Y = cellstr(classreg.learning.internal.ClassLabel(Y));
            
            % Check trees
            if ~strcmpi(useTrees,'all') && ~isnumeric(useTrees)
                error(message('stats:CompactTreeBagger:margin:BadUseTrees'));
            end
            
            % How many trees?
            if ischar(useTrees)
                useTrees = 1:bagger.NTrees;
            end
            nTrees = length(useTrees);
            if strncmpi(mode,'ensemble',length(mode))
                nTrees = 1;
            end

            % Process weights
            if isempty(treeWeights)
                treeWeights = ones(length(useTrees),1);
            else
                if strncmpi(mode,'individual',length(mode))
                    warning(message('stats:CompactTreeBagger:margin:TreeWeightsForIndivModeNotAllowed'));
                end
                if ~isnumeric(treeWeights)
                    error(message('stats:CompactTreeBagger:margin:TreeWeightsNotNumeric'));
                end
            end

            % Init
            N = size(X,1);
            nCols = length(bagger.ClassNames);
            sfit = NaN(N,nCols);
            stdfit = NaN(N,nCols);
            wfit = zeros(N,1);
            
            % Init margin
            mar = NaN(N,nTrees);
            
            % Get positions of true classes in the scores matrix
            [tf,truepos] = ismember(Y,bagger.ClassNames);
            if any(~tf)
                error(message('stats:CompactTreeBagger:margin:BadLabels'));
            end
            
            % Compute
            if     strncmpi(mode,'individual',length(mode))
                for it=1:nTrees
                    [yfit,sfit] = predict(bagger,X,...
                        'useifort',useIforT,'trees',useTrees(it));
                    filled = ~cellfun(@isempty,yfit);
                    idx = (1:N)';
                    idx = idx(filled);
                    mar(:,it) = CompactTreeBagger.getmargin(idx,sfit,truepos);
                end
            elseif strncmpi(mode,'cumulative',length(mode))
                for it=1:nTrees
                    [yfit,sfit,stdfit,wfit] = ...
                        predictAccum(bagger,X,'useifort',useIforT,...
                        'trees',useTrees(it),'treeweights',treeWeights(it),...
                        'scores',sfit,'stdevs',stdfit,'scoreweights',wfit);
                    filled = ~cellfun(@isempty,yfit);
                    idx = (1:N)';
                    idx = idx(filled);
                    mar(:,it) = CompactTreeBagger.getmargin(idx,sfit,truepos);
                end
            elseif strncmpi(mode,'ensemble',length(mode))
                 [yfit,sfit] = predict(bagger,X,'useifort',useIforT,...
                    'trees',useTrees,'treeweights',treeWeights);
                filled = ~cellfun(@isempty,yfit);
                idx = (1:N)';
                idx = idx(filled);
                mar = CompactTreeBagger.getmargin(idx,sfit,truepos);
            end
        end
        
        function mar = meanMargin(bagger,X,Y,varargin)
            %MEANMARGIN Mean classification margin.
            %   MAR = MEANMARGIN(B,X,Y) computes average classification margins for
            %   predictors X given true response Y. The Y can be either a numeric
            %   vector, character matrix, cell array of strings, categorical vector or
            %   logical vector. The method averages the margins over all observations
            %   (rows) in X for each tree.  MAR is a matrix of size 1-by-NTrees, where
            %   NTrees is the number of trees in the ensemble B. This method is
            %   available for classification ensembles only.
            %
            %   MAR = MEANMARGIN(B,X,Y,'PARAM1',val1,'PARAM2',val2,...) specifies
            %   optional parameter name/value pairs.
            %
            %     'mode'     String indicating how MEANMARGIN computes errors. If set
            %                to 'cumulative' (default), the method computes cumulative
            %                errors and MAR is a vector of length NTrees, where the 1st
            %                element gives mean margin from tree 1, 2nd element gives
            %                mean margin from trees 1:2 etc, up to 1:NTrees. If set to
            %                'individual', MAR is a vector of length NTrees, where each
            %                element is a mean margin from each tree in the ensemble.
            %                If set to 'ensemble', MAR is a scalar showing the
            %                cumulative mean margin for the entire ensemble.
            %     'weights'  Vector of observation weights to use for margin
            %                averaging. By default the weight of every observation
            %                is set to 1. The length of this vector must be equal
            %                to the number of rows in X.
            %     'trees'    Vector of indices indicating what trees to include
            %                in this calculation. By default, this argument is set to
            %                'all' and all trees are used. If 'trees' is a numeric
            %                vector, the method returns a vector of length NTrees for
            %                'cumulative' and 'individual' modes, where NTrees is the
            %                number of elements in the input vector, and a scalar for
            %                'ensemble' mode. For example, in the 'cumulative' mode,
            %                the 1st element gives mean margin from tree trees(1), the
            %                2nd element gives mean margin from trees trees(1:2) etc.
            %     'treeweights' Vector of tree weights. This vector must have the same
            %                length as the 'trees' vector. These weights are used to
            %                combine output from the specified trees by taking a
            %                weighted average instead of the simple non-weighted
            %                majority vote. This argument cannot be used in the
            %                'individual' mode.
            %     'useifort' Logical matrix of size Nobs-by-NTrees indicating which
            %                trees should be used to make predictions for each
            %                observation.  By default all trees are used for all
            %                observations.
            %
            %   See also COMPACTTREEBAGGER, PREDICT.
            
            % Process inputs
            args = {'weights'};
            defs = {       []};
            [W,~,extraArgs] = ...
                internal.stats.parseArgs(args,defs,varargin{:});
            
            % Check observation weights
            N = size(X,1);
            if isempty(W)
                W = ones(N,1);
            end
            if ~isnumeric(W) || length(W)~=N || any(W<0) || all(W==0)
                error(message('stats:CompactTreeBagger:meanMargin:BadW', N));
            end
            
            % Compute mean margins
            m = margin(bagger,X,Y,extraArgs{:});
            Ncol = size(m,2);
            mar = NaN(1,Ncol);
            for ncol=1:Ncol
                tf = ~isnan(m(:,ncol));
                Wtot = sum(W(tf));
                if Wtot>0
                    mar(ncol) = dot(W(tf),m(tf,ncol))/Wtot;
                end
            end
        end

        function prox = proximity(bagger,X,varargin)
            %PROXIMITY Proximity matrix for data.
            %   PROX = PROXIMITY(B,X) computes a numeric matrix of size Nobs-by-Nobs of
            %   proximities for data X, where Nobs is the number of observations (rows)
            %   in X.  Proximity between any two observations in the input data is
            %   defined as a fraction of trees in the ensemble B for which these two
            %   observations land on the same leaf.  This is a symmetric matrix with
            %   1's on the diagonal and off-diagonal elements ranging from 0 to 1.
            %
            %   See also COMPACTTREEBAGGER.
            
            prox = squareform(flatprox(bagger,X,varargin{:}));
            N = size(X,1);
            prox(1:N+1:end) = 1;
        end
        
        function outlier = outlierMeasure(bagger,data,varargin)
            %OUTLIERMEASURE Outlier measure for data.
            %   OUT = OUTLIERMEASURE(B,X) computes outlier measures for predictors X
            %   using trees in the ensemble B.  The method computes the outlier measure
            %   for a given observation by taking an inverse of the average squared
            %   proximity between this observation and other observations.
            %   OUTLIERMEASURE then normalizes these outlier measures by subtracting
            %   the median of their distribution, taking the absolute value of this
            %   difference, and dividing by the median absolute deviation. A high
            %   value of the outlier measure indicates that this observation is an
            %   outlier.
            %
            %   You can supply the proximity matrix directly by using the 'data'
            %   parameter.
            %
            %   OUT = OUTLIERMEASURE(B,X,'PARAM1',val1,'PARAM2',val2,...) specifies
            %   optional parameter name/value pairs:
            %
            %     'data'     Flag indicating how to treat the X input argument.  If
            %                set to 'predictors' (default), the method assumes X is a
            %                matrix of predictors and uses it for computation of the
            %                proximity matrix. If set to 'proximity', the method treats
            %                X as a proximity matrix returned by the PROXIMITY method.
            %                If you do not supply the proximity matrix, OUTLIERMEASURE
            %                computes it internally.  If you use the PROXIMITY method
            %                to compute a proximity matrix, supplying it as input to
            %                OUTLIERMEASURE reduces computing time.
            %     'labels'   Vector of true class labels for a classification
            %                ensemble. True class labels can be either a numeric
            %                vector, character matrix, cell array of strings,
            %                categorical vector or logical vector (see help for
            %                groupingvariable). When you supply this parameter, the
            %                method performs the outlier calculation for any
            %                observations using only other observations from the same
            %                class.  This parameter must specify one label for each
            %                observation (row) in X.
            %
            %   See also COMPACTTREEBAGGER, PROXIMITY, GROUPINGVARIABLE.
            
            % Process inputs
            args = {      'data' 'labels'};
            defs = {'predictors'       []};
            [datatype,Y] = internal.stats.parseArgs(args,defs,varargin{:});

            % Check if Y input is used for regression
            if bagger.Method(1)=='r' && ~isempty(Y)
                error(message('stats:CompactTreeBagger:outlierMeasure:LabelsForRegressionNotAllowed'));
            end
            
            % Check the type of input data
            if ~ischar(datatype) || ...
                    ~any(strncmpi(datatype,{'predictors' 'proximity'},length(datatype)))
                error(message('stats:CompactTreeBagger:outlierMeasure:BadDataArg'));
            end

            % Get proximity and predictors
            prox = [];
            X = [];
            if strncmpi(datatype,'predictors',length(datatype))
                X = data;
                N = size(X,1);
            end
            if strncmpi(datatype,'proximity',length(datatype))
                prox = data;
                [n1,n2] = size(prox);
                if n1~=n2
                    error(message('stats:CompactTreeBagger:outlierMeasure:ProxNotSquare'));
                end
                N = n1;
            end
            
            % For classification, convert labels to strings
            if islogical(Y)
                Y = double(Y);
            end
            if bagger.Method(1)=='c' && ~isempty(Y) && ~iscellstr(Y)
                Y = cellstr(classreg.learning.internal.ClassLabel(Y));
            end
            
            % Init
            outlier = zeros(N,1);

            % Check size
            if bagger.Method(1)=='c' && ~isempty(Y) && N~=length(Y)
                error(message('stats:CompactTreeBagger:outlierMeasure:XYSizeMismatch'));
            end
            
            % Split into classes
            if bagger.Method(1)=='c' && ~isempty(Y)
                [tf,truepos] = ismember(Y,bagger.ClassNames);
                if any(~tf)
                    error(message('stats:CompactTreeBagger:outlierMeasure:BadLabels'));
                end
            else
                truepos = ones(N,1);
            end
            nclass = max(truepos);
            
            % Process input proximity matrix if any was supplied
            if ~isempty(prox)
                [n1,n2] = size(prox);
                if n1~=n2 || n1~=N
                    error(message('stats:CompactTreeBagger:outlierMeasure:ProxSizeMismatch', N, N));
                end
            end
            
            % Compute proximities if they were not supplied
            if isempty(prox)
                prox = proximity(bagger,X);
            end

            % Process proximities for each class separately
            for c=1:nclass
                isc = truepos==c;
                nobs = sum(isc);
                if nobs>2 % Can't compute outliers for two or less distances
                    outlier(isc) = nobs./sum(prox(isc,isc).^2,2);
                    m = median(outlier(isc));
                    madm = mad(outlier(isc),1);% median abs dev
                    if madm>0
                        outlier(isc) = abs(outlier(isc)-m)/madm;
                    end
                end
            end
        end
        
        function [sc,eigen] = mdsProx(bagger,data,varargin)
            %MDSPROX Multidimensional scaling of proximity matrix.
            %   [SC,EIGEN] = MDSPROX(B,X) applies classical multidimensional scaling to
            %   the proximity matrix computed for the data in the matrix X, and returns
            %   scaled coordinates SC and eigenvalues EIGEN of the scaling
            %   transformation. The method applies multidimensional scaling to the
            %   matrix of distances defined as 1-PROX, where PROX is the proximity
            %   matrix returned by the PROXIMITY method.
            %
            %   You can supply the proximity matrix directly by using the 'data'
            %   parameter.
            %
            %   [SC,EIGEN] = MDSPROX(B,X,'PARAM1',val1,'PARAM2',val2,...) specifies
            %   optional parameter name/value pairs:
            %
            %     'data'   Flag indicating how the method treats the X input argument.
            %              If set to 'predictors' (default), MDSPROX assumes X to be a
            %              matrix of predictors and used for computation of the
            %              proximity matrix. If set to 'proximity', the method treats X
            %              as a proximity matrix returned by the PROXIMITY method.
            %     'colors' If you supply this argument, MDSPROX makes overlaid scatter
            %              plots of two scaled coordinates using specified colors for
            %              different classes. You must supply the colors  as a string
            %              with one character for each color.  If there are more
            %              classes in the data than characters in the supplied string,
            %              MDSPROX only plots the first C classes, where C is the
            %              length of the string. For regression or if you do not
            %              provide the vector of true class labels, MDSPROX uses the
            %              first color for all observations in X.
            %     'labels' Vector of true class labels for a classification
            %              ensemble. True class labels can be either a numeric vector,
            %              character matrix, cell array of strings, categorical vector
            %              or logical vector (see help for groupingvariable). If
            %              supplied, this vector must have as many elements as there
            %              are observations (rows) in X. This argument has no effect
            %              unless 'colors' argument is supplied.
            %     'mdscoords' Indices of the two or three scaled coordinates to be
            %              plotted. By default, MDSPROX makes a scatter plot of the 1st
            %              and 2nd scaled coordinates which correspond to the two
            %              largest eigenvalues.  You can specify any other two or three
            %              indices not exceeding the dimensionality of the scaled data.
            %              This argument has no effect unless you also supply the
            %              'colors' argument.
            %
            %   See also COMPACTTREEBAGGER, PROXIMITY, CMDSCALE, GROUPINGVARIABLE.
            
            % Process inputs
            args = {      'data' 'colors' 'labels' 'mdscoords'};
            defs = {'predictors'       []       []       [1 2]};
            [datatype,plotColor,Y,axes] = ...
                internal.stats.parseArgs(args,defs,varargin{:});

            % Check status and inputs
            if ~isempty(plotColor) && ~ischar(plotColor)
                error(message('stats:CompactTreeBagger:mdsProx:BadColor'));
            end
            
            % Check the type of input data
            if ~ischar(datatype) || ...
                    ~any(strncmpi(datatype,{'predictors' 'proximity'},length(datatype)))
                error(message('stats:CompactTreeBagger:mdsProx:BadDataArg'));
            end

            % Get proximity and predictors
            prox = [];
            X = [];
            if strncmpi(datatype,'predictors',length(datatype))
                X = data;
                N = size(X,1);
            end
            if strncmpi(datatype,'proximity',length(datatype))
                prox = data;
                [n1,n2] = size(prox);
                if n1~=n2
                    error(message('stats:CompactTreeBagger:mdsProx:InputSizeMismatch'));
                end
                N = n1;
            end
            
            % Check input labels
            if islogical(Y)
                Y = double(Y);
            end
            if bagger.Method(1)=='c' && ~isempty(Y)
                if ~iscellstr(Y)
                    Y = cellstr(classreg.learning.internal.ClassLabel(Y));
                end
                if length(Y)~=N
                    error(message('stats:CompactTreeBagger:mdsProx:XYSizeMismatch'));
                end
            end
            
            % Check axes
            if ~isnumeric(axes) || any(axes<1)
                error(message('stats:CompactTreeBagger:mdsProx:AxesNotIntegers'));
            end
            if numel(axes)<2 || numel(axes)>3
                error(message('stats:CompactTreeBagger:mdsProx:BadNumAxes'));
            end
            
            % Compute proximities if they were not supplied
            if isempty(prox)
                prox = proximity(bagger,X);
            end
            
            % Apply classical multi-D scaling
            dist = 1 - prox;
            [sc,eigen] = cmdscale(dist);

            % Check axes again
            if any(axes>size(sc,2))
                error(message('stats:CompactTreeBagger:mdsProx:BadAxisIndex'));
            end
            
            % Plot the scaling coordinates
            if ~isempty(plotColor)
                if bagger.Method(1)=='c' && ~isempty(Y)
                    [tf,truepos] = ismember(Y,bagger.ClassNames);
                    if any(~tf)
                        error(message('stats:CompactTreeBagger:mdsProx:BadLabels'));
                    end
                    nclass = max(truepos);
                    nclass = min(nclass,length(plotColor));
                    C = false(N,nclass);
                    for c=1:nclass
                        C(:,c) = truepos==c;
                    end
                else
                    C = true(N,1);
                    nclass = 1;
                end
                if numel(axes)==2
                    for c=1:nclass
                        scatter(sc(C(:,c),axes(1)),sc(C(:,c),axes(2)),plotColor(c));
                        hold on;
                    end
                else
                    for c=1:nclass
                        scatter3(sc(C(:,c),axes(1)),sc(C(:,c),axes(2)),...
                            sc(C(:,c),axes(3)),plotColor(c));
                        hold on;
                    end
                end
                if nclass>1
                    legend(bagger.ClassNames(1:nclass));
                end
                hold off;
            end
        end
                
        function b1 = combine(b1,b2)
            %COMBINE Combine two ensembles.
            %   B1 = COMBINE(B1,B2) appends decision trees from ensemble B2 to those
            %   stored in B1 and returns ensemble B1. This method requires that the
            %   class and variable names be identical in both ensembles.
            %
            %   See also COMPACTTREEBAGGER.
            
            % Check classes
            if length(b1.ClassNames)~=length(b2.ClassNames) ...
                    || any(~strcmpi(b1.ClassNames,b2.ClassNames))
                error(message('stats:CompactTreeBagger:combine:IncompatibleClasses'));
            end
            
            % Check vars
            if length(b1.VarNames)~=length(b2.VarNames) ...
                    || any(~strcmpi(b1.VarNames,b2.VarNames))
                error(message('stats:CompactTreeBagger:combine:IncompatibleVarNames'));
            end

            % Add trees
            b1 = addTrees(b1,b2.Trees);
        end
        
        function bagger = setDefaultYfit(bagger,yfit)
            %SETDEFAULTYFIT Set the default value for PREDICT.
            %   B = SETDEFAULTYFIT(B,YFIT) sets the default prediction for ensemble B
            %   to YFIT. The default prediction must be a character variable for
            %   classification or a numeric scalar for regression. This setting
            %   controls what predicted value is returned when no prediction is
            %   possible, for example when the PREDICT method needs to predict for an
            %   observation which has only false values in the matrix supplied through
            %   'useifort' argument.
            %
            %   See also COMPACTTREEBAGGER, PREDICT, DEFAULTYFIT.
            
            if     bagger.Method(1)=='c'
                if ~ischar(yfit) || ...
                        ~ismember(lower(yfit),{'' 'mostpopular'})
                    error(message('stats:CompactTreeBagger:setDefaultYfit:InvalidSetting'));
                end
                if strcmpi(yfit,'')
                    bagger.DefaultYfit = '';
                    bagger.DefaultScore = NaN(1,length(bagger.ClassNames));
                else
                    [~,i] = max(bagger.ClassProb);
                    bagger.DefaultYfit = bagger.ClassNames{i};
                    bagger.DefaultScore = bagger.ClassProb;
                end
            elseif bagger.Method(1)=='r'
                bagger.DefaultYfit = yfit;
                bagger.DefaultScore = yfit;
            end
        end
    end
    
    
    methods(Hidden=true,Static=true)
        function a = empty(varargin),      throwUndefinedError(); end
    end
    
    
    methods(Hidden=true)
        function a = ctranspose(varargin), throwUndefinedError(); end
        function a = transpose(varargin),  throwUndefinedError(); end
        function a = permute(varargin),    throwUndefinedError(); end
        function a = reshape(varargin),    throwUndefinedError(); end
        function a = cat(varargin),        throwUndefinedError(); end
        function a = horzcat(varargin),    throwUndefinedError(); end
        function a = vertcat(varargin),    throwUndefinedError(); end

        function bagger = CompactTreeBagger(trees,classNames,varNames)
            bagger.Trees = trees;
            bagger.NTrees = length(trees);
            bagger.ClassNames = classNames;
            if isempty(varNames)
                error(message('stats:CompactTreeBagger:CompactTreeBagger:InvalidInput'));
            end
            bagger.VarNames = varNames;            
        end
        
        function bagger = addTrees(bagger,trees)
            if ~iscell(trees)
                error(message('stats:CompactTreeBagger:addTrees:InvalidInput'));
            end
            nTrees = length(trees);
            bagger.Trees(end+1:end+nTrees) = trees;
            bagger.NTrees = bagger.NTrees + nTrees;
        end
        
        function [varargout] = subsref(bagger,s)
            % Dispatch
            if strcmp(s(1).type,'()')
                error(message('stats:CompactTreeBagger:subsref:InvalidOperation'));
            else
                % Return default subsref to this object
                [varargout{1:nargout}] = builtin('subsref',bagger,s);
            end
        end
        
        function [varargout] = subsasgn(bagger,s,data)
            % List of protected properties
            privProps = {'Trees' 'NTrees' 'ClassNames' 'VarNames' 'DefaultYfit'};

            % Dispatch
            if strcmp(s(1).type,'()')
                error(message('stats:CompactTreeBagger:subsasgn:ParenNotAllowed'));
            elseif strcmp(s(1).type,'.') && ismember(s(1).subs,privProps)
                error(message('stats:CompactTreeBagger:subsasgn:PrivProp'));
            else
                % Return default subsasgn to this object
                [varargout{1:nargout}] = builtin('subsasgn',bagger,s,data);
            end
        end
        
        function disp(obj)
            internal.stats.displayClassName(obj);

            % Display body
            fprintf(1,'%s\n',getString(message('stats:TreeBagger:DispHeader',obj.NTrees)));
            fprintf(1,'%20s: %20s\n','Method',obj.Method);
            fprintf(1,'%20s: %20i\n','Nvars',length(obj.VarNames));
            if obj.Method(1)=='c'
                fprintf(1,'%20s:','ClassNames');
                for i=1:length(obj.ClassNames)
                    fprintf(1,' %s',['''' obj.ClassNames{i} '''']);
                end
                fprintf(1,'\n');
            end
            
            internal.stats.displayMethodsProperties(obj);
        end
        
        function [scores,nodes,labels] = treeEval(bagger,treeInd,x,doclassregtree)
            % Get the tree and classes
            tree = bagger.Trees{treeInd};
            if doclassregtree
                cTreeNames = tree.classname;
            else
                if strcmp(bagger.Method(1),'c')
                    cTreeNames = tree.ClassNames;
                else
                    cTreeNames = {};
                end
            end
            Nclasses = length(bagger.ClassNames);
            
            % Empty data?
            if isempty(x)
                scores = NaN(0,max(Nclasses,1));
                nodes = zeros(0,1);
                if Nclasses==0
                    labels = scores;
                else
                    labels = repmat(bagger.ClassNames{1},0,1);
                end
                return;
            end
                
            % Compute responses
            if Nclasses==0
                % For regression, get Yfit values
                if doclassregtree
                    [scores,nodes] = eval(tree,x);
                else
                    [scores,nodes] = predict(tree,x);
                end
                labels = scores;
            else
                % For classification, get class probabilities
                if doclassregtree
                    [labels,nodes] = eval(tree,x);
                    unmapped = classprob(tree,nodes);
                else
                    [labels,~,nodes] = predict(tree,x);
                    unmapped = tree.ClassProb(nodes,:);
                end
                                
                % Map classregtree classes onto bagger classes
                cFullNames = bagger.ClassNames;
                nFullClasses = length(cFullNames);
                N = size(x,1);
                scores = zeros(N,nFullClasses);
                [~,pos] = ismember(cTreeNames,cFullNames);
                scores(:,pos) = unmapped;
            end
        end
        
        function prox = flatprox(bagger,X,varargin)
            % Process inputs
            args = {'trees' 'nprint'};
            defs = {  'all'        0};
            [useTrees,nprint] = internal.stats.parseArgs(args,defs,varargin{:});
            
            % Check print-out frequency
            if isempty(nprint) || ~isnumeric(nprint) || numel(nprint)~=1 || nprint<0
                warning(message('stats:CompactTreeBagger:flatprox:BadPrintoutFreq'));
            end
            
            % How many trees to use?
            nHaveTrees = bagger.NTrees;
            if strcmpi(useTrees,'all')
                useTrees = 1:nHaveTrees;
            end
            
            % Any trees specified?
            if isempty(useTrees)
                error(message('stats:CompactTreeBagger:flatprox:EmptyUseTrees'));
            end
            
            % Correct type?
            if ~isnumeric(useTrees)
                error(message('stats:CompactTreeBagger:flatprox:UseTreesNotNumeric'));
            end
                
            % Invalid tree indices?
            if any(useTrees<1 | useTrees>nHaveTrees)
                error(message('stats:CompactTreeBagger:flatprox:BadUseTreesIndices', nHaveTrees));
            end
            
            % How many trees?
            nUseTrees = length(useTrees);

            % Init
            N = size(X,1);
            prox = zeros(1,N*(N-1)/2);
            
            % Is this old classregtree object?
            doclassregtree = isa(bagger.Trees{1},'classregtree');
            
            % Loop over trees
            for it=1:nUseTrees
                % Get the tree index
                itb = useTrees(it);
                
                % Get leaves on which training instances fall
                [~,nodes] = treeEval(bagger,itb,X,doclassregtree);
                
                % Get 1-proximities for this tree
                thisprox = pdist(nodes,'hamming');
                
                % Update proximities
                prox = prox + thisprox;
                
                % Report progress
                if nprint>0 && floor(it/nprint)*nprint==it
                    fprintf(1,'%s\n',getString(message('stats:TreeBagger:TreesDone',it)));
                end
            end
            
            % Normalize by the number of trees
            prox = 1 - prox/nUseTrees;
        end
    end
    
    
    methods(Access=protected)
        function [useTrees,treeWeights,useIforT] = ...
                checkTreeArgs(bagger,N,useTrees,treeWeights,useIforT)
            % How many trees to use?
            nHaveTrees = bagger.NTrees;
            if strcmpi(useTrees,'all')
                useTrees = 1:nHaveTrees;
            end
            
            % Any trees specified?
            if isempty(useTrees)
                error(message('stats:CompactTreeBagger:checkTreeArgs:EmptyUseTrees'));
            end
            
            % Correct type?
            if ~isnumeric(useTrees)
                error(message('stats:CompactTreeBagger:checkTreeArgs:UseTreesNotNumeric'));
            end
                
            % Invalid tree indices?
            if any(useTrees<1 | useTrees>nHaveTrees)
                error(message('stats:CompactTreeBagger:checkTreeArgs:UseTreesOutOfRange', nHaveTrees));
            end
            
            % How many trees?
            nUseTrees = length(useTrees);
                
            % Check tree weights
            if isempty(treeWeights)
                treeWeights = ones(nUseTrees,1);
            else
                if length(treeWeights)~=nUseTrees
                    error(message('stats:CompactTreeBagger:checkTreeArgs:TreeWeightsIndicesSizeMismatch'));
                end
            end
            
            % Are tree-instance indices supplied?
            if strcmpi(useIforT,'all')
                useIforT = true(N,nHaveTrees);
            else
                % Filled?
                if isempty(useIforT)
                    error(message('stats:CompactTreeBagger:checkTreeArgs:EmptyUseIforT'));
                end
               
                % Logical?
                if ~islogical(useIforT)
                    error(message('stats:CompactTreeBagger:checkTreeArgs:NotLogicalUseIforT'));
                end
                
                % Check size
                [n1,n2] = size(useIforT);
                if n1~=N || n2~=nHaveTrees
                    error(message('stats:CompactTreeBagger:checkTreeArgs:UseIforTSizeMismatch'));
                end
            end
        end
    end
       
    methods(Access=public,Hidden=true)
        function [labels,scores,stdevs,scoreWeights] = ...
                predictAccum(bagger,X,varargin)
            % Process inputs
            args = {'useifort' 'trees' 'scores' 'stdevs' 'scoreweights' 'treeweights'};
            defs = {     'all'   'all'       []       []             []            []};
            [useIforT,useTrees,scores,stdevs,scoreWeights,treeWeights] = ...
                internal.stats.parseArgs(args,defs,varargin{:});
            
            % Check input data
            if ~isnumeric(X)
                 error(message('stats:CompactTreeBagger:predictAccum:XNotNumeric'));
            end
            if size(X,2)~=length(bagger.VarNames)
                 error(message('stats:CompactTreeBagger:predictAccum:XVarNamesSizeMismatch'));
            end
            
            % Get data size.
            N = size(X,1);
            
            % Check score weights.
            if isempty(scoreWeights)
                scoreWeights = zeros(N,1);
            end
            if ~isnumeric(scoreWeights)
                error(message('stats:CompactTreeBagger:predictAccum:ScoreWeightsNotNumeric'));
            end
            if N~=length(scoreWeights)
                error(message('stats:CompactTreeBagger:predictAccum:ScoreWeightsSizeMismatch'));
            end
            
            % How many classes and columns in the score matrix?
            Nclasses = length(bagger.ClassNames);
            nCols = max(Nclasses,1);
                        
            % Check scores.
            if isempty(scores)
                scores = NaN(N,nCols);
            end
            if ~isnumeric(scores)
                error(message('stats:CompactTreeBagger:predictAccum:ScoresNotNumeric'));
            end
            if size(scores,1)~=N || size(scores,2)~=nCols
                error(message('stats:CompactTreeBagger:predictAccum:ScoresSizeMismatch'));
            end

            % Check standard deviations.
            if isempty(stdevs)
                stdevs = NaN(N,nCols);
            end
            if ~isnumeric(stdevs)
                error(message('stats:CompactTreeBagger:predictAccum:StdevsNotNumeric'));
            end
            if size(stdevs,1)~=N || size(stdevs,2)~=nCols
                error(message('stats:CompactTreeBagger:predictAccum:StdevsSizeMismatch'));
            end

            % Check input tree arguments
            [useTrees,treeWeights,useIforT] = ...
                checkTreeArgs(bagger,N,useTrees,treeWeights,useIforT);
            
            % Is this an old classregtree object?
            doclassregtree = isa(bagger.Trees{1},'classregtree');
            
            % Update mean scores and cumulative standard deviations looping
            % over trees
            nUseTrees = length(useTrees);
            for iuse=1:nUseTrees
                % Get the tree index in the full list
                it = useTrees(iuse);
                
                % Which observations can be processed by this tree?
                tf = useIforT(:,it);

                % If there are NaN rows in input scores, treat them as
                % "no observations" and reset to 0
                nanscore = all(isnan(scores),2) & tf;
                scores(nanscore,:) = 0;
                if nargout>2
                    stdevs(nanscore,:) = 0;
                end
            
                % Get data, weights and scores for this tree
                thisX = X(tf,:);
                thisW = treeWeights(iuse);
                thisR = treeEval(bagger,it,thisX,doclassregtree);
                
                % Get new weights
                newScoreWeights = scoreWeights(tf) + thisW;
                
                % Update means
                delta = thisR - scores(tf,:);
                gamma = bsxfun(@rdivide,delta*thisW,newScoreWeights);
                scores(tf,:) = scores(tf,:) + gamma;
                
                % Update standard deviations
                if nargout>2
                    stdevs(tf,:) = stdevs(tf,:) + ...
                        bsxfun(@times,delta.*gamma,scoreWeights(tf));
                end
                
                % Update weights
                scoreWeights(tf) = newScoreWeights;
            end
            
            % Find class with max probability for classification
            isNaN = all(isnan(scores),2);
            if ~all(isnan(bagger.DefaultScore))
                scores(isNaN,:) = repmat(bagger.DefaultScore,sum(isNaN),1);
            end
            if bagger.Method(1)=='c' % classification
                % Init
                labels = cell(N,1);
                
                % Check if default scores are NaN's
                if all(isnan(bagger.DefaultScore))
                    notNaN = ~isNaN;
                    labels(:) = cellstr('');
                else
                    notNaN = (1:N)';
                end
                
                % Find class with max prob
                [~,classNum] = max(scores(notNaN,:),[],2);
                labels(notNaN) = bagger.ClassNames(classNum);
            else % regression
                labels = scores;
            end
        end
    end
    
    
    methods(Hidden=true,Static=true)
        function mar = getmargin(idx,sfit,truepos)
            % If only one class, margins are undefined
            if iscolumn(sfit)
                mar = NaN(size(sfit));
                return;
            end
            
            % Check sizes
            N = size(sfit,1);
            if length(truepos)~=N
                error(message('stats:CompactTreeBagger:getmargin:TrueposSizeMismatch'));
            end
            if any(idx<1 | idx>N)
                error(message('stats:CompactTreeBagger:getmargin:IndexOutOfRange', N));
            end
            
            % Compute margins
            mar = NaN(N,1);
            for i=1:length(idx)
                n = idx(i);
                sfitfalse = sfit(n,:);
                sfitfalse(truepos(n)) = [];
                mar(n) = sfit(n,truepos(n)) - max(sfitfalse);
            end
        end
    end

end

function throwUndefinedError()
error(message('stats:CompactTreeBagger:UndefinedFunction'));
end
