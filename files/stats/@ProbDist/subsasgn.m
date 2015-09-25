function [varargout] = subsasgn(varargin)
%SUBSASGN Subscripted reference for a PROBDIST object.
%   Subscript assignment is not allowed for a PROBDIST object.

%   Copyright 2010 The MathWorks, Inc.


error(message('stats:ProbDist:subsasgn:NotAllowed'))
