function [pred,dlo,dhi] = mnrval(beta,x,varargin)
%MNRVAL Predict values for a nominal or ordinal multinomial regression model.
%   PHAT = MNRVAL(B,X) computes predicted probabilities for the nominal
%   multinomial logistic regression model with predictor values X.  B is the
%   intercept and coefficient estimates as returned by the MNRFIT function.  X
%   is an N-by-P design matrix with N observations on P predictor variables.
%   MNRVAL automatically includes intercept (constant) terms in the model; do
%   not enter a column of ones directly into X.  PHAT is an N-by-K matrix of
%   predicted probabilities for each multinomial category.
%
%   YHAT = MNRVAL(B,X,SSIZE) computes predicted category counts for sample
%   sizes SSIZE. SSIZE is an N element column vector of positive integers.
%
%   [... ,DLO,DHI] = MNRVAL(B,X, ... ,STATS) also computes 95% confidence
%   bounds on the predicted probabilities PHAT or counts YHAT.  STATS is the
%   stats structure returned by MNRFIT.  DLO and DHI define a lower confidence
%   bound of PHAT or YHAT minus DLO and an upper confidence bound of PHAT or
%   YHAT plus DHI.  Confidence bounds are non-simultaneous and they apply to
%   the fitted curve, not to a new observation.
%
%   [...] = MNRVAL(...,'PARAM1',val1,'PARAM2',val2,...) allows you to
%   specify optional parameter name/value pairs to control the predicted
%   values.  Parameters are:
%
%      'model' - the type of model that was fit by MNRFIT, one of the text
%         strings 'nominal' (the default), 'ordinal', or 'hierarchical'.
%
%      'interactions' - specifies whether the model that was fit by MNRFIT
%         included an interaction between the multinomial categories and the
%         coefficients. The default is 'off' for ordinal models, and 'on' for
%         nominal and hierarchical models.
%
%      'link' - the link function that was used by MNRFIT for ordinal and
%         hierarchical models.  Specify the link parameter value as one of the
%         text strings 'logit' (the default), 'probit', 'comploglog', or
%         'loglog'.  You may not specify the 'link' parameter for nominal
%         models; these always use a multivariate logistic link.
%
%      'type' - set to 'category' (the default) to return predictions and
%         confidence bounds for the probabilities (or counts) of the K
%         multinomial categories.  Set to 'cumulative' to return predictions
%         and confidence bounds for the cumulative probabilities (or counts)
%         of the first K-1 multinomial categories, as an N-by-(K-1) matrix.
%         The predicted cumulative probability for the K-th category is 1.
%         Set to 'conditional' to return predictions and confidence bounds in
%         terms of the first K-1 conditional category probabilities, i.e. the
%         probability for category J, given an outcome in category J or
%         higher.  When 'type' is 'conditional', and you supply the sample
%         size argument SSIZE, the predicted counts at each row of X are
%         conditioned on the corresponding element of SSIZE, across all
%         categories.
%
%      'confidence' - the confidence level for the confidence bounds, a value
%         between 0 and 1.  The default is .95.
%
%   Example:  Fit multinomial logistic regression models to data with one
%   predictor variable and three categories in the response variable.
%
%     x = [-3 -2 -1 0 1 2 3]';
%     Y = [1 11 13; 2 9 14; 6 14 5; 5 10 10; 5 14 6; 7 13 5; 8 11 6];
%     bar(x,Y,'stacked'); ylim([0 25]);
%
%     % Fit a nominal model for the individual response category probabilities,
%     % with separate slopes on the single predictor variable, x, for each
%     % category.  The first row of betaHatNom contains the intercept terms for
%     % the first two response categories.  The second row contains the slopes.
%     betaHatNom = mnrfit(x,Y,'model','nominal','interactions','on')
%
%     % Compute the predicted probabilities for the three response categories.
%     xx = linspace(-4,4)';
%     pHatNom = mnrval(betaHatNom,xx,'model','nominal','interactions','on');
%     line(xx,cumsum(25*pHatNom,2),'LineWidth',2);
%
%     % Fit a "parallel" ordinal model for the cumulative response category
%     % probabilities, with a common slope on the single predictor variable, x,
%     % across all categories.  The first two elements of betaHatOrd are the
%     % intercept terms for the first two response categories.  The last element
%     % of betaHatOrd is the common slope.
%     betaHatOrd = mnrfit(x,Y,'model','ordinal','interactions','off')
%
%     % Compute the predicted cumulative probabilities for the first two response
%     % categories.  The cumulative probability for the third category is always 1.
%     pHatOrd = mnrval(betaHatOrd,xx,'type','cumulative','model','ordinal','interactions','off');
%     bar(x,cumsum(Y,2),'grouped'); ylim([0 25]);
%     line(xx,25*pHatOrd,'LineWidth',2);
%
%   See also MNRFIT, GLMFIT, GLMVAL.

%   References:
%      [1] McCullagh, P., and J.A. Nelder (1990) Generalized Linear
%          Models, 2nd edition, Chapman&Hall/CRC Press.

%   Copyright 2006-2011 The MathWorks, Inc.


narginchk(2,Inf);

if nargin == 2  % mnrval(b,x)
    m = [];
    stats = [];
else % nargin>2, mnrval(b,x,...)
    arg = varargin{1};
    if ischar(arg) && size(arg,1) == 1   % mnrval(b,x,'name',val,...)
        m = [];
        stats = [];
    elseif isstruct(arg)  % mnrval(b,x,stats,...)
        m = [];
        stats = varargin{1};
        varargin(1) = [];
    else  % mnrval(b,x,m,...)
        m = varargin{1};
        varargin(1) = [];
        if nargin > 3
            arg = varargin{1}; % already stripped off ssize
            if ischar(arg) && size(arg,1) == 1  % mnrval(b,x,m,'name',val,...)
                stats = [];
            else  % mnrval(b,x,m,stats,...)
                stats = varargin{1};
                varargin(1) = [];
            end
        end
    end
end

pnames = {  'model' 'interactions' 'link'      'type' 'confidence'};
dflts =  {'nominal'             []     []  'category'         0.95};
[model,interactions,link,type,clev] = ...
                               internal.stats.parseArgs(pnames, dflts, varargin{:});

model = internal.stats.getParamVal(model,{'nominal','ordinal','hierarchical'},'''model''');

if isempty(interactions)
    % Default is 'off' for ordinal models, 'on' for nominal or hierarchical
    parallel = strcmp(model,'ordinal');
elseif isequal(interactions,'on')
    parallel = false;
elseif isequal(interactions,'off')
    parallel = true;
elseif islogical(interactions)
    parallel = ~interactions;
else % ~islogical(interactions)
    error(message('stats:mnrfit:BadInteractions'));
end
if parallel && strcmp(model,'nominal')
    % A nominal model with no interactions is the same as having no
    % predictors, MNRFIT already warned about this.
    x = zeros(size(x,1),0,class(x));
end

dataClass = superiorfloat(x,m,beta);

if isempty(link)
    link = 'logit';
elseif ~isempty(link) && strcmp(model,'nominal')
    error(message('stats:mnrfit:LinkNotAllowed'));
else
    link = internal.stats.getParamVal(link,{'logit' 'probit' 'comploglog' 'loglog'},'''link''');
end
[~,dlink,ilink] = stattestlink(link,dataClass);

type = internal.stats.getParamVal(type,{'category','cumulative','conditional'},'''type''');

if ~isnumeric(clev) || ~(0<clev && clev<1)
    error(message('stats:mnrval:BadConfidence'));
end

% Validate the size of beta, and compute the linear predictors.
[n,p] = size(x);
pstar = size(beta,1);
if parallel
    if size(beta,2) ~= 1
        error(message('stats:mnrval:BNotColVec'));
    end
    if pstar <= p
        error(message('stats:mnrval:InputSizeMismatch'));
    end
    k = pstar - p + 1;
    if p > 0
        eta = repmat(beta(1:(k-1))',n,1) + repmat(x*beta(k:pstar),1,k-1);
    else
        eta = repmat(beta(1:(k-1))',n,1);
    end
else
    if pstar ~= 1 + p
        error(message('stats:mnrval:InputSizeMismatch'));
    end
    k = size(beta,2) + 1;
    if p > 0
        eta = repmat(beta(1,:),n,1) + x*beta(2:pstar,:);
    else
        eta = repmat(beta(1,:),n,1);
    end
end

returnCounts = ~isempty(m);
if returnCounts && (size(m,1) ~= n || size(m,2) ~= 1)
    error(message('stats:mnrval:SSizeSizeMismatch'));
end

% Compute the "natural" predictions, and other predictions as needed.
% category probabilities:     pi(1:k)        
% cumulative probabilities:   gamma(1:k-1) == cumsum(pi(1:k-1))
% "survival" probabilities:   lambda(1:k-1) ==  1 - [1 gamma(1:k-2)]
% conditional probabilities ("hazard rate"):
%                             rho == pi(1:k-1) ./ lambda
switch model
case 'nominal'
    pi = [exp(eta) ones(n,1,dataClass)];
    pi = pi ./ repmat(sum(pi,2),1,k);
    if ~strcmp(type,'category')
        gam = cumsum(pi(:,1:k-1),2);
    end
case 'ordinal'
    gam = ilink(eta);
    if ~strcmp(type,'cumulative')
        pi = [gam(:,1) diff(gam,[],2) 1-gam(:,k-1)];
    end
case 'hierarchical'
    rho = ilink(eta);
    pi = rho;
    gam = pi(:,1:k-1);
    for j = 2:k-1
        pi(:,j) = pi(:,j) .* (1-gam(:,j-1));
        gam(:,j) = gam(:,j-1) + pi(:,j);
    end
    pi(:,k) = 1 - gam(:,k-1);
end

% Compute the requested predicted probabilities.  If there were sample sizes,
% scale those to predicted counts.
switch type
case 'category'
    pred = pi;
case 'cumulative'
    pred = gam;
case 'conditional'
    lambda = [ones(n,1,dataClass) 1-gam(:,1:k-2)];
    if ~strcmp(model,'hierarchical') % 'nominal' || 'ordinal'
        rho = pi(:,1:k-1) ./ lambda;
    end
    pred = rho;
end
if returnCounts
    m = repmat(m,1,size(pred,2));
    pred = m .* pred; % Use unconditional sample sizes, even for 'cond'
end

if nargout > 1
    if isempty(stats)
        error(message('stats:mnrval:MissingOrBadStats'));
    end
    
    if ~isnan(stats.s) % dfe > 0 or estdisp == 'off'
        V = stats.coeffcorr .* (stats.se(:)*stats.se(:)');
        R = cholcov(V); % V = R'*R
        if stats.estdisp
            crit = tinv((1+clev)/2, stats.dfe);
        else
            crit = norminv((1+clev)/2);
        end
        
        ia = 1:k-1; ja = repmat(1:k-1,pstar,1);
        ib = ones(1,k-1); jb = repmat((1:pstar)',1,k-1);
        I = eye(k-1,dataClass);
                
        % For cases where we can, compute CIs on the linear predictor scale,
        % then transform to the response scale.
        if (strcmp(model,'ordinal') && strcmp(type,'cumulative')) || ...
           (strcmp(model,'hierarchical') && strcmp(type,'conditional'))
            % eta = Xstar * beta
            %     => cov(eta) = Xstar * cov(beta) * Xstar'
            if p > 0
                etavar = zeros(size(eta),dataClass);
                for i = 1:n
                    if parallel
                        Xstar = [I repmat(x(i,:),k-1,1)];
                    else
                        xstar = [1 x(i,:)];
                        Xstar = I(ia,ja).*xstar(ib,jb); % kron(I,xstar)
                    end
                    etavar(i,:) = sum((R * Xstar').^2,1);
                end
            else
                etavar = repmat(sum(R.^2,1),n,1); % Xstar_i = eye(k-1)
            end
            del = crit * sqrt(etavar);
            hilo = cat(3,ilink(eta-del),ilink(eta+del));
            if returnCounts
                hilo = repmat(m,[1,1,2]) .* hilo;
            end
            dlo = pred - min(hilo,[],3);
            dhi = max(hilo,[],3) - pred;
                
        % For remaining cases, use the delta method.
        else
            if strcmp(model,'ordinal')
                dgam = 1 ./ dlink(gam);
                varpred = zeros(size(pred),dataClass);
                catProbs = strcmp(type,'category');
                A = eye(k,k-1,dataClass); A(2:k+1:end) = -1; % d.pi/d.gam'
                for i = 1:n
                    if p > 0
                        if parallel
                            Xstar = [I repmat(x(i,:),k-1,1)];
                        else
                            xstar = [1 x(i,:)];
                            Xstar = I(ia,ja).*xstar(ib,jb); % kron(I,xstar)
                        end
                    else
                        Xstar = I;
                    end
                    B = diag(dgam(i,:)); % d.gam/d.eta'
                    if catProbs
                        % D == (d.pi/d.gam') * (d.gam/d.eta')
                        %   => cov(pi) ~ (D*Xstar) * cov(beta) * (Xstar'*D')
                        D = A*B;
                    else % condProbs
                        % D == (d.rho/d.gam') * (d.gam/d.eta')
                        %   => cov(rho) ~ (D*Xstar) * cov(beta) * (Xstar'*D')
                        A = diag(1./lambda(i,:)); % d.rho/d.gam'
                        A(2:k:end) = (gam(i,2:k-1) - 1) ./ (lambda(i,2:k-1).^2);
                        D = A*B;
                    end
                    varpred(i,:) = sum((R * Xstar'*D').^2,1);
                end

            elseif strcmp(model,'hierarchical')
                dpicond = 1 ./ dlink(rho);
                varpred = zeros(size(pred),dataClass);
                catProbs = strcmp(type,'category');
                for i = 1:n
                    if p > 0
                        if parallel
                            Xstar = [I repmat(x(i,:),k-1,1)];
                        else
                            xstar = [1 x(i,:)];
                            Xstar = I(ia,ja).*xstar(ib,jb); % kron(I,xstar)
                        end
                    else
                        Xstar = I;
                    end
                    B = diag(dpicond(i,:)); % d.rho/d.eta'
                    if catProbs
                        % D == (d.pi/d.rho') * (d.rho/d.eta')
                        %   => cov(pi) ~ (D*Xstar) * cov(beta) * (Xstar'*D')
                        A = diag(pi(i,1:k-1) ./ rho(i,1:k-1)); % d.pi/d.rho'
                        for jj = 2:k-1
                            A(jj,1:jj-1) = -rho(i,jj)*sum(A(1:jj-1,1:jj-1),1);
                        end
                        A(k,1:k-1) = -sum(A(1:k-1,1:k-1),1);
                        D = A*B;
                    else % cumProbs
                        % D == (d.gam/d.rho') * (d.rho/d.eta')
                        %   => cov(gam) ~ (D*Xstar) * cov(beta) * (Xstar'*D')
                        A = diag([1 1-gam(i,1:k-2)]); % d.gam/d.rho'
                        for jj = 2:k-1
                            A(jj,1:jj-1) = (1-rho(i,jj))*A(jj-1,1:jj-1);
                        end
                        D = A*B;
                    end
                    varpred(i,:) = sum((R * Xstar'*D').^2,1);
                end

            else % 'nominal'
                % eta = Xstar * beta, d.eta/d.beta' = Xstar,
                % pi  = expitMV(eta), d.pi/d.eta' = diag(pi)-pi'*pi == D
                varpred = zeros(size(pred),dataClass);
                catProbs = strcmp(type,'category');
                cumProbs = strcmp(type,'cumulative');
                A = tril(ones(k-1,k,dataClass)); % d.gam/d.pi'
                for i = 1:n
                    if p > 0
                        if parallel
                            Xstar = [I repmat(x(i,:),k-1,1)];
                        else
                            xstar = [1 x(i,:)];
                            Xstar = I(ia,ja).*xstar(ib,jb); % kron(I,xstar)
                        end
                    else
                        Xstar = I;
                    end
                    B = -pi(i,:)'*pi(i,1:k-1);
                    B(1:k+1:end) = B(1:k+1:end) + pi(i,1:k-1); % d.pi/d.eta'
                    if catProbs
                        % D == d.pi/d.eta'
                        %   => cov(pi) ~ (D*Xstar) * cov(beta) * (Xstar'*D')
                        D = B;
                    elseif cumProbs
                        % D == (d.gam/d.pi') * (d.pi/d.eta')
                        %   => cov(gam) ~ (D*Xstar) * cov(beta) * (Xstar'*D')
                        D = A*B;
                    else % condProbs
                        % D == (d.rho/d.pi') * (d.pi/d.eta')
                        %   => cov(rho) ~ (D*Xstar) * cov(beta) * (Xstar'*D')
                        A = tril(repmat(rho(i,:)'./lambda(i,:)',1,k)); % d.rho/d.pi'
                        A(1:k:end) = 1./lambda(i,:);
                        D = A*B;
                    end
                    varpred(i,:) = sum((R * Xstar'*D').^2,1);
                end
            end
            dlo = crit * sqrt(varpred);
            if returnCounts
                dlo = m .* dlo;
            end
            dhi = dlo;
        end
    else
        dlo = NaN(size(pred),dataClass);
        dhi = NaN(size(pred),dataClass);
    end
end
