%% Apply Gulf of Mexico open ocean Neural Network - Eqn1
% MATLAB version R2023b was used

%% Read data
data = readtable('GOM_Eqn1_training_validation.xlsx','Sheet','Validation');
CTDPRS = data.CTDPRS;
CTDTMP = data.CTDTMP;
CTDSAL = data.CTDSAL;
OXYGEN = data.OXYGEN;
NITRAT = data.NITRAT;
LATITUDE = data.LATITUDE;
LONGITUDE = data.LONGITUDE;

%% Load Neural Network - Eqn1
load GOM_net_Eqn1

%% Apply Neural Network - Eqn1
inputs = [CTDPRS CTDTMP CTDSAL OXYGEN NITRAT LATITUDE LONGITUDE];
inputs = inputs';
predictions = net(inputs);
predictions = predictions';
