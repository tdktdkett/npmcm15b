function display(a)
%PIECEWISEDISTRIBUTION/DISPLAY Display a piecewisedistribution object.
%   DISPLAY(A) prints a text representation of the piecewisedistribution
%   object A.  DISPLAY is called when a semicolon is not used to
%   terminate a statement.
%
%   See also PIECEWISEDISTRIBUTION.

%   Copyright 2006-2007 The MathWorks, Inc. 


isLoose = strcmp(get(0,'FormatSpacing'),'loose');

objectname = inputname(1);
if isempty(objectname)
    objectname = 'ans';
end

if (isLoose)
    fprintf('\n');
end
fprintf('%s = \n', objectname);
disp(a)

if (isLoose)
   fprintf('\n');
end
