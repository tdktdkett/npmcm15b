function result = iscontinuous(hFit)
%ISCONTINUOUS Is this distribution continuous?


%   Copyright 2003-2004 The MathWorks, Inc.

% Smooth fits are always continuous
if isequal(hFit.fittype, 'smooth')
   result = true;
else
   result = hFit.distspec.iscontinuous;
end
