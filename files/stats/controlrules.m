function [R,rules] = controlrules(rules,x,cl,se)
%CONTROLRULES Control rules (Western Electric or Nelson) for SPC data.
%   R=CONTROLRULES(RULES,X,CL,SIGMA) determines which points in the vector
%   X violate control rules.  CL is a vector of center-line values.  SIGMA
%   is a vector of sigma limits.  (Typically the control limits on a
%   control chart are at the values CL-3*SIGMA and CL+3*SIGMA.)  RULES is
%   the name of a control rule, or a cell array containing multiple control
%   rule names.  If X has N values and RULES contains M rules, then R is an
%   N-by-M matrix, with R(I,J) = true if point I violates rule J.
%
%   The following control rules are available:
%
%         'we1'   % 1 point above CL+3*SIGMA
%         'we2'   % 2 of 3 above CL+2*SIGMA
%         'we3'   % 4 of 5 above CL+SIGMA
%         'we4'   % 8 of 8 above CL
%         'we5'   % 1 below CL-3*SIGMA
%         'we6'   % 2 of 3 below CL-2*SIGMA
%         'we7'   % 4 of 5 below CL-SIGMA
%         'we8'   % 8 of 8 below CL
%         'we9'   % 15 of 15 between CL-SIGMA and CL+SIGMA
%         'we10'  % 8 of 8 below CL-SIGMA or above CL+SIGMA
%
%         'n1'   % 1 point below CL-3*SIGMA or above CL+3*SIGMA
%         'n2'   % 9 of 9 on the same side of CL
%         'n3'   % 6 of 6 increasing or decreasing
%         'n4'   % 14 alternating up/down
%         'n5'   % 2 of 3 below CL-2*SIGMA or above CL+2*SIGMA, same side
%         'n6'   % 4 of 5 below CL-SIGMA or above CL+SIGMA, same side
%         'n7'   % 15 of 15 between CL-SIGMA and CL+SIGMA
%         'n8'   % 8 of 8 below CL-SIGMA or above CL+SIGMA, either side
%
%         'we'   All rules we1-we10 (Western Electric rules)
%         'n'    All rules n1-n8 (Nelson rules)
%
%   [R,RULES]=CONTROLRULES(...) also returns RULES as a cell array of M
%   text strings listing the rules applied.
%
%   Any points with NaN as their X, CL, or SE values are not considered to
%   have violated rules, and are not counted in the rules for other points.
%   For multi-point rules, a rule violation at point I indicates that the
%   set of points ending at point I triggered the rule.  Point I is
%   considered to have violated the rule only if it is one of the points
%   violating the rule's condition.
%
%   See also CONTROLCHART.

%   Copyright 2006-2011 The MathWorks, Inc.


narginchk(4,4);
% Check control rules.  Expand 'we' to mean all Western Electric rules,
% and 'n' to mean all Nelson rules.
if ~isempty(rules)
    % Generate the we and n rule names automatically from the roots.
    % Make the roots variables for easy translation, if necessary
    weroot = getString(message('stats:controlrules:we'));
    nroot = getString(message('stats:controlrules:n'));
    allwe =  cellfun(@(c) [weroot num2str(c)], num2cell(1:10), 'UniformOutput', false);
    alln  =  cellfun(@(c) [nroot  num2str(c)], num2cell(1:8),  'UniformOutput', false);
    rules = internal.stats.getParamVal(rules, [{weroot nroot}, allwe, alln], 'RULES', true);

    k = find(strcmp(weroot,rules));
    for j=length(k):-1:1
        rules = [rules(1:k-1), allwe, rules(k+1:end)];
    end

    k = find(strcmp(nroot,rules));
    for j=length(k):-1:1
        rules = [rules(1:k-1), alln, rules(k+1:end)];
    end
end

% Check numeric inputs and expand if necessary
x = x(:);
cl = cl(:);
se = se(:);
n = numel(x);
if ~(isnumeric(x) && isnumeric(cl) && isnumeric(se) && ...
     isvector(x)  && isvector(cl)  && isvector(se))
    error(message('stats:controlrules:NumberRequired')); 
end
if isscalar(cl)
    cl = repmat(cl,n,1);
elseif numel(cl)~=n
    error(message('stats:controlrules:InputSizeMismatch', 'CL')); 
end
if isscalar(se)
    se = repmat(se,n,1);
elseif numel(se)~=n
    error(message('stats:controlrules:InputSizeMismatch', 'SE')); 
end


% Skip over points with NaN for X, CL, or SE
notnan = ~isnan(x) & ~isnan(cl) & ~isnan(se);
if ~all(notnan)
    x = x(notnan);
    cl = cl(notnan);
    se = se(notnan);
end

% Create matrix R(i,j), point i violates rule j
R = false(length(notnan),length(rules));

% Create a column indicating violations of each rule
for j = 1:numel(rules)
    switch(rules{j})
        % Western Electric rules
        case allwe{1}; % above 3 sigma
            c = (x > cl + 3*se);
        case allwe{2}   % 2 of 3 above 2 sigma
            hi = cl + 2*se;
            cnts = filter(ones(1,3),1, x > hi); % count from triple
            c = (cnts >= 2) & (x > hi);
        case allwe{3}   % 4 of 5 above 1 sigma
            hi = cl + se;
            cnts = filter(ones(1,5),1, x > hi);
            c = (cnts >= 4) & (x > hi);
        case allwe{4}   % 8 of 8 above cl
            cnts = filter(ones(1,8),1, x > cl);
            c = (cnts >= 8);
        case allwe{5}   % below 3 sigma
            c = (x < cl - 3*se);
        case allwe{6}   % 2 of 3 below 2 sigma
            lo = cl - 2*se;
            cnts = filter(ones(1,3),1, x < lo);
            c = (cnts >= 2) & (x < lo);
        case allwe{7}   % 4 of 5 below 1 sigma
            lo = cl - se;
            cnts = filter(ones(1,5),1, x < lo);
            c = (cnts >= 4) & (x < lo);
        case allwe{8}   % 8 of 8 below cl
            cnts = filter(ones(1,8),1, x < cl);
            c = (cnts >= 8);
        case allwe{9}   % 15 of 15 within 1 sigma
            cnts = filter(ones(1,15),1, x>cl-se & x<cl+se);
            c = (cnts >= 15);
        case allwe{10}   % 8 of 8 outside 1 sigma
            cnts = filter(ones(1,8),1, x<cl-se | x>cl+se);
            c = (cnts >= 8);
            
        % Nelson rules
        case alln{1}   % zone A or beyond (>3sigma from cl)
            c = (x > cl + 3*se) | (x < cl - 3*se);
        case alln{2}   % 9 of 9 above or below cl
            cnts1 = filter(ones(1,9),1, x > cl);
            cnts2 = filter(ones(1,9),1, x < cl);
            c = (cnts1 >= 9) | (cnts2 >= 9);
        case alln{3}   % 6 of 6 increasing or decreasing (5 diffs >0 or <0)
            diffx = [0; diff(x)];
            cnts1 = filter(ones(1,5),1, diffx>0);
            cnts2 = filter(ones(1,5),1, diffx<0);
            c = (cnts1 >= 5) | (cnts2 >= 5);
        case alln{4}   % 14 alternating up/down (13 diffs alternating sign)
            signs = ones(size(x));
            signs(2:2:end) = -1;
            diffx = [0; sign(diff(x))] .* signs;
            cnts = filter(ones(1,13),1, diffx);
            c = (cnts <= -13) | (cnts >= 13);
        case alln{5}   % 2 of 3 beyond 2 sigma on same side
            hi = cl + 2*se;
            lo = cl - 2*se;
            cnts1 = filter(ones(1,3),1, x > hi);
            cnts2 = filter(ones(1,3),1, x < lo);
            c = (cnts1 >= 2  &  x > hi)  |  (cnts2 >= 2  &  x < lo);
        case alln{6}   % 4 of 5 beyond 1 sigma, same side
            hi = cl + se;
            lo = cl - se;
            cnts1 = filter(ones(1,5),1, x > hi);
            cnts2 = filter(ones(1,5),1, x < lo);
            c = (cnts1 >= 4  &  x > hi)  |  (cnts2 >= 4  &  x < lo);
        case alln{7}   % 15 of 15 within 1 sigma
            cnts = filter(ones(1,15),1, x>cl-se & x<cl+se);
            c = (cnts >= 15);
        case alln{8}   % 8 of 8 beyond 1 sigma, either side
            cnts = filter(ones(1,8),1, x<cl-se | x>cl+se);
            c = (cnts >= 8);
    end
    
    % Insert column into matrix
    R(notnan,j) = c;
end
