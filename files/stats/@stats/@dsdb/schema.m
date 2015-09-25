function schema
%

% Copyright 2003-2013 The MathWorks, Inc.
mlock
pk = findpackage('stats');

% Create a new class
c = schema.class(pk, 'dsdb');
schema.prop(c, 'current', 'string');
p=schema.prop(c, 'listeners', 'MATLAB array');
p.AccessFlags.Serialize = 'off';
