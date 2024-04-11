%% Apply Gulf of Mexico open ocean Neural Network - Eqn3
% MATLAB version R2023b was used

%% Read data
data = readtable('GOM_Eqn3_training_validation.xlsx','Sheet','Validation');
CTDPRS = data.CTDPRS;
CTDTMP = data.CTDTMP;
CTDSAL = data.CTDSAL;
NITRAT = data.NITRAT;
LATITUDE = data.LATITUDE;
LONGITUDE = data.LONGITUDE;

%% Load Neural Network - Eqn3
load GOM_net_Eqn3

%% Apply Neural Network - Eqn3
inputs = [CTDPRS CTDTMP CTDSAL NITRAT LATITUDE LONGITUDE];
inputs = inputs';
predictions = net(inputs);
predictions = predictions';
