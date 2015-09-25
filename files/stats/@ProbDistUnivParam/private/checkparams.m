function checkparams(spec,params)
%CHECKPARAMS Check that the parameter vector is valid.

%   Copyright 2008-2011 The MathWorks, Inc.


if isempty(params)
    error(message('stats:ProbDistUnivParam:checkparams:EmptyParams'));
elseif ~isvector(params) || ~isnumeric(params)
    error(message('stats:ProbDistUnivParam:checkparams:NonVector'));
elseif numel(params) ~= numel(spec.pnames)
    error(message('stats:ProbDistUnivParam:checkparams:WrongSize', numel( spec.pnames )));
elseif any(isnan(params))
    % ok, can use to create empty object
elseif isfield(spec,'checkparam') && ~isempty(spec.checkparam) ...
                                  && ~spec.checkparam(params)
    error(message('stats:ProbDistUnivParam:checkparams:InvalidValues'));
end
