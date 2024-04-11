%% Gulf of Mexico open ocean Neural Network - Eqn4
% MATLAB version R2023b was used
% Requires MATLAB Deep Learning Toolbox

%% Read data
data = readtable('GOM_Eqn4_training_validation.xlsx','Sheet','Training');
CTDPRS = data.CTDPRS;
CTDTMP = data.CTDTMP;
CTDSAL = data.CTDSAL;
LATITUDE = data.LATITUDE;
LONGITUDE = data.LONGITUDE;
pH_insitu = data.pH_insitu;

%% Input & output data setup
inputs = [CTDPRS CTDTMP CTDSAL LATITUDE LONGITUDE];
inputs = inputs';
outputs = pH_insitu;
outputs = outputs';

%% Neural Network
% Create a Fitting Network
hiddenLayerSize = [5 5];  %two hidden layers with 5 neurons in each layer
net = fitnet(hiddenLayerSize);

% Set up Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
 
% Train the Network
[net,tr] = train(net,inputs,outputs);

%% Test the Network
predictions = net(inputs);
predictions = predictions';
errors = gsubtract(predictions,outputs);
performance = perform(net,outputs,predictions);

%% View the Network
view(net)

%% Save the Network
GOM_net_Eqn4 = net;
save GOM_net_Eqn4
