% NLPARCI 非線形モデルのパラメータの信頼区間
%
%   CI = NLPARCI(BETA,RESID,'covar',SIGMA) は、非線形最小二乗のパラメータ
%   推定 BETA に対する 95% の信頼区間 CI を返します。NLPARCI を呼び出す前に
%   非線形回帰モデルにフィットするために NLINFIT を使用し、係数推定値 BETA
%   と残差 RESID と推定された係数の共分散行列 SIGMA を得ます。
% 
%   CI = NLPARCI(BETA,RESID,'jacobian',J) も、95% の信頼区間を計算する
%   シンタックスです。J は、NLINFIT で計算されるヤコビアンです。
%   SIGMA パラメータはロバスト近似を考慮する必要があるため、NLINFIT で
%   ロバストオプションを使用する場合、'jacobian' の入力ではなく、'covar' 
%   の入力を使用する必要があります。
%
%   CI = NLPARCI(...,'alpha',ALPHA) は、100(1-ALPHA)% の信頼区間を返します。
%
%   NLPARCI は、欠損値として RESID、または J の NaN を扱い、対応する観測を
%   無視します。
%
%   信頼区間の計算は、RESID の長さが BETA の長さを超える場合に無効になり、
%   J はフルの列順位になります。J が条件数が悪い場合、信頼区間は不正確になる
%   可能性があります。
%
%   例：
%      load reaction;
%      [beta,resid,J,Sigma] = nlinfit(reactants,rate,@hougen,beta);
%      ci = nlparci(beta,resid,'covar',Sigma);
%
%   参考 NLINFIT, NLPREDCI, NLINTOOL.


%   Copyright 1993-2007 The MathWorks, Inc. 
