%% Apply Gulf of Mexico open ocean Neural Network - Eqn2
% MATLAB version R2023b was used

%% Read data
data = readtable('GOM_Eqn2_training_validation.xlsx','Sheet','Validation');
CTDPRS = data.CTDPRS;
CTDTMP = data.CTDTMP;
CTDSAL = data.CTDSAL;
OXYGEN = data.OXYGEN;
LATITUDE = data.LATITUDE;
LONGITUDE = data.LONGITUDE;

%% Load Neural Network - Eqn2
load GOM_net_Eqn2

%% Apply Neural Network - Eqn2
inputs = [CTDPRS CTDTMP CTDSAL OXYGEN LATITUDE LONGITUDE];
inputs = inputs';
predictions = net(inputs);
predictions = predictions';
