function [varargout] = subsasgn(varargin)
%SUBSASGN Subscripted reference for a PIECEWISEDISTRIBUTION object.
%   Subscript assignment is not allowed for a PIECEWISEDISTRIBUTION object.

%   Copyright 2006-2007 The MathWorks, Inc.


error(message('stats:piecewisedistribution:subsasgn:NotAllowed'))
