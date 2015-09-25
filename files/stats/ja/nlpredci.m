%NLPREDCI  非線形回帰の予測に対する信頼区間
%
%   [YPRED, DELTA] = NLPREDCI(MODELFUN,X,BETA,RESID,'covar',SIGMA) は、
%   予測値 (YPRED) と、入力値 X での MODELFUN で定義された非線形回帰モデルに
%   対する 95% の信頼区間の半値幅 (DELTA) を返します。MODELFUN は、2 つの引数、
%   係数ベクトルと配列 X を受け入れ、近似した Y のベクトルを返す @ で指定される
%   関数です。NLPREDCI を呼び出す前に、推定された係数値 BETA と、残差 RESID、
%   ヤコビアン J を取得し、非線形最小二乗で MODELFUN に近似するために、
%   NLINFIT を使用してください。
%
%   [YPRED, DELTA] = NLPREDCI(MODELFUN,X,BETA,RESID,'jacobian',J) は、95% の
%   信頼区間を計算する代替シンタックスです。J は、NLINFIT で計算されるヤコビアン
%   です。SIGMA パラメータはロバスト近似を考慮する必要があるため、NLINFIT で
%   ロバストオプションを使用する場合、'jacobian' の入力ではなく 'covar' の
%   入力を使用する必要があります。
%
%   [...] = NLPREDCI(...,'PARAM1',val1,'PARAM2',val2,...) は、以下のように
%   オプションパラメータの名前と値の組み合わせを指定することが可能です。
%
%      名前          値
%      'alpha'       100(1-ALPHA)% として信頼度を指定するための 0 と 1 の
%                    間の値です。デフォルトは 0.05 です。
%      'mse'         nlinfit で返される平均二乗誤差です。nlinfit でロバスト
%                    オプションを使用する場合は predict の新規の観測が必要です 
%                    ('predopt' を参照)。それ以外の場合は mse は残差から計算され、
%                    ロバスト近似を考慮しません。
%      'predopt'     X で推定される曲線 (関数値) に対する信頼区間を計算する
%                    場合は 'curve' (デフォルト)、X で新規の観測の予測区間を
%                    計算する場合は 'observation' です。nlinfit でロバスト
%                    オプションを使用した後、'observation' を指定した場合、
%                    平均二乗誤差のロバスト推定を指定するための 'mse' パラメータ
%                    も与えなければなりません。
%      'simopt'      同時区間に対して 'on'、非同時区間に対して 'off' 
%                    (デフォルト) のいずれかです。
%
%   NLPARCI は、RESID または J の NaN を欠損値として扱うため、対応する観測を
%   無視します。
%
%   信頼区間の計算は、RESID の長さが BETA の長さを超え、J が BETA でフル列
%   ランクを持つシステムに対して有効です。J が悪条件の場合、信頼区間は不正確に
%   なる可能性があります。
%
%   例:
%      load reaction;
%      [beta,resid,J,Sigma] = nlinfit(reactants,rate,@hougen,beta);
%      newX = reactants(1:2,:);
%      [ypred, delta] = nlpredci(@hougen,newX,beta,resid,'Covar',Sigma);
%
%   参考 NLINFIT, NLPARCI, NLINTOOL.


%   Copyright 1993-2009 The MathWorks, Inc.
