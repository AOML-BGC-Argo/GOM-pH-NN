%% Apply Gulf of Mexico open ocean Neural Network - Eqn4
% MATLAB version R2023b was used

%% Read data
data = readtable('GOM_Eqn4_training_validation.xlsx','Sheet','Validation');
CTDPRS = data.CTDPRS;
CTDTMP = data.CTDTMP;
CTDSAL = data.CTDSAL;
LATITUDE = data.LATITUDE;
LONGITUDE = data.LONGITUDE;

%% Load Neural Network - Eqn4
load GOM_net_Eqn4

%% Apply Neural Network - Eqn4
inputs = [CTDPRS CTDTMP CTDSAL LATITUDE LONGITUDE];
inputs = inputs';
predictions = net(inputs);
predictions = predictions';
