function [tr,E] = hmmestimate(seq,states,varargin)
%HMMESTIMATE estimates the parameters for an HMM given state information.
%   [TR, E] = HMMESTIMATE(SEQ,STATES) calculates the maximum likelihood
%   estimate of the transition, TR, and emission, E, probabilities of an
%   HMM for sequence, SEQ, with known states, STATES.  
%
%   HMMESTIMATE(...,'SYMBOLS',SYMBOLS) allows you to specify the symbols
%   that are emitted. SYMBOLS can be a numeric array or a cell array of the
%   names of the symbols.  The default symbols are integers 1 through N,
%   where N is the number of possible emissions.
%
%   HMMESTIMATE(...,'STATENAMES',STATENAMES) allows you to specify the
%   names of the states. STATENAMES can be a numeric array or a cell array
%   of the names of the states. The default statenames are 1 through M,
%   where M is the number of states.
%
%   HMMESTIMATE(...,'PSEUDOEMISSIONS',PSEUDOE) allows you to specify
%   pseudocount emission values. These should be used to avoid zero
%   probability estimates for emission with very low probability that may
%   not be represented in the sample sequence. PSEUDOE should be a matrix
%   of size M x N, where M is the number of states in the HMM and N is the
%   number of possible emissions. 
%
%   HMMESTIMATE(...,'PSEUDOTRANSITIONS',PSEUDOTR) allows you to specify
%   pseudocount transition values. These should be used to avoid zero
%   probability estimates for emission with very low probability that may
%   not be represented in the sample sequence. PSEUDOTR should be a matrix
%   of size M x M, where M is the number of states in the HMM. 
%
%   If the states are not known then use HMMTRAIN to estimate the model
%   parameters. 
%
%   This function always starts the model in state 1 and then makes a
%   transition to the first step using the probabilities in the first row
%   of the transition matrix. So in the example given below, the first
%   element of the output states will be 1 with probability 0.95 and 2 with
%   probability .05.
%
%   Examples:
%
% 		tr = [0.95,0.05;
%             0.10,0.90];
%           
% 		e = [1/6,  1/6,  1/6,  1/6,  1/6,  1/6;
%            1/10, 1/10, 1/10, 1/10, 1/10, 1/2;];
%
%       [seq, states] = hmmgenerate(1000,tr,e);
%       [estimateTR, estimateE] = hmmestimate(seq,states);
%
%
%   See also  HMMGENERATE, HMMDECODE, HMMVITERBI, HMMTRAIN.

%   Reference: Biological Sequence Analysis, Durbin, Eddy, Krogh, and
%   Mitchison, Cambridge University Press, 1998.  

%   Copyright 1993-2011 The MathWorks, Inc.


pseudoEcounts = false;
pseudoTRcounts = false;
tr = [];
E = [];
seqLen = length(seq);
if length(states) ~= seqLen
    error(message('stats:hmmestimate:InputSizeMismatch'));
end
uniqueSymbols = unique(seq);
uniqueStates = unique(states);

if isempty(uniqueSymbols) 
    warning(message('stats:hmmestimate:EmptySequence'));
    return
end
if isempty(uniqueStates)
    warning(message('stats:hmmestimate:EmptyState'));
    return
end    

% If seq is numeric, assume that the number of symbols is the largest
% number in seq. Otherwise, assume it's the number of unique symbols in
% seq. Use the same logic for the number of states.
if isnumeric(seq) 
    numSymbols = max(uniqueSymbols); 
else 
    numSymbols = length(uniqueSymbols); 
end 
if isnumeric(states) 
    numStates = max(uniqueStates); 
else 
    numStates = length(uniqueStates); 
end 

if nargin > 2
    okargs = {'symbols','statenames','pseudoemissions','pseudotransitions'};
    [symbols,statenames,pseudoE,pseudoTR,setflag] = ...
        internal.stats.parseArgs(okargs, {[] [] [] []}, varargin{:});
    
    if setflag.symbols
        numSymbols = numel(symbols);
        if length(symbols) ~= numSymbols
            error(message('stats:hmmestimate:BadSymbols'));
        end
        [~, seq]  = ismember(seq,symbols);
        if any(seq == 0)
            error(message('stats:hmmestimate:SymbolNotInSymbolNames'));
        end
    end
    if setflag.statenames
        numStates = numel(statenames);
        if length(statenames) ~= numStates
            error(message('stats:hmmestimate:BadStateNames'));
        end
        [~, states]  = ismember(states,statenames);
        if any(states == 0)
            error(message('stats:hmmestimate:StateNotInStateNames'));
        end
    end
    if setflag.pseudoemissions
        [rows, cols] = size(pseudoE);
        if  rows < numStates
            error(message('stats:hmmestimate:StatesPseudoMismatch'));
        end
        if  cols < numSymbols
            error(message('stats:hmmestimate:SeqPseudoMismatch'));
        end
        numStates = rows;
        numSymbols = cols;
        pseudoEcounts = true;
    end
    if setflag.pseudotransitions
        [rows, cols] = size(pseudoTR);
        if rows ~= cols
            error(message('stats:hmmestimate:BadTransitions'));
        end
        if  rows < numStates
            error(message('stats:hmmestimate:StatesPseudoMismatch'));
        end
        numStates = rows;
        pseudoTRcounts = true;
    end
end


tr = zeros(numStates);
E = zeros(numStates, numSymbols);
% count up the transitions from the state path
for count = 1:seqLen-1
    tr(states(count),states(count+1)) = tr(states(count),states(count+1)) + 1;
end
% and count up the emissions for each state
for count = 1:seqLen
    E(states(count),seq(count)) = E(states(count),seq(count)) + 1;
end

% add pseudo counts if necessart
if pseudoEcounts
    E = E + pseudoE;
end

if pseudoTRcounts
    tr = tr + pseudoTR;
end

trRowSum = sum(tr,2);
ERowSum = sum(E,2);

% if we don't have any values then report zeros instead of NaNs.
trRowSum(trRowSum == 0) = -inf;
ERowSum(ERowSum == 0) = -inf;

% normalize to give frequency estimate.
tr = tr./repmat(trRowSum,1,numStates);
E = E./repmat(ERowSum,1,numSymbols);
