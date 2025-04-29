## Gulf open ocean pH Neural Network 
This is a collection of NN algorithms trained using CTD and bottle data from NOAA’s Gulf of Mexico and East Coast Carbon Cruise (GOMECC) cruises to estimate pH values in the Gulf.

Please refer to this manuscript for more information
https://doi.org/10.3389/fmars.2024.1468909

**Description**
The files in this package include training data for developing the neural networks; independent validation data for the validation of the neural networks; MATLAB scripts for neural network training and applications; and trained/saved neural networks ready for applications. Each category contains files for four equations containing various combinations of input predictors: 
1. Eqn1 – Latitude, Longitude, Pressure, Temperature, Salinity, Oxygen, Nitrate;
2. Eqn2 – Latitude, Longitude, Pressure, Temperature, Salinity, Oxygen;
3. Eqn3 – Latitude, Longitude, Pressure, Temperature, Salinity, Nitrate;
4. Eqn4 – Latitude, Longitude, Pressure, Temperature, Salinity.

The units for the input parameters are as follows:
: Latitude (decimal degrees, e.g. 26.0°),
: Longitude (decimal degrees, e.g. -86.0°)
: Pressure (dbar), Temperature (°C)
: Salinity (PSU)
: Oxygen (mmol/kg)
: Nitrate (mmol/kg).


**Below is a brief description of each file:**
- `GOM_Eqn1_training_validation.xlsx` – training and independent validation data using Eqn1;
- `GOM_Eqn2_training_validation.xlsx` – training and independent validation data using Eqn2;
- `GOM_Eqn3_training_validation.xlsx` – training and independent validation data using Eqn3;
- `GOM_Eqn4_training_validation.xlsx` – training and independent validation data using Eqn4;
- `GOM_net_Eqn1.mat` – Eqn1 neural network ready for applications with Eqn1 inputs;
- `GOM_net_Eqn2.mat` – Eqn1 neural network ready for applications with Eqn2 inputs;
- `GOM_net_Eqn3.mat` – Eqn1 neural network ready for applications with Eqn3 inputs;
- `GOM_net_Eqn4.mat` – Eqn1 neural network ready for applications with Eqn4 inputs;
- `GOM_NN_Eqn1_training.m` – codes for neural network development with Eqn1 inputs;
- `GOM_NN_Eqn2_training.m` – codes for neural network development with Eqn2 inputs;
- `GOM_NN_Eqn3_training.m` – codes for neural network development with Eqn3 inputs;
- `GOM_NN_Eqn4_training.m` – codes for neural network development with Eqn4 inputs;
- `GOM_NN_Eqn1_application.m` – codes for neural network application with Eqn1 inputs;
- `GOM_NN_Eqn2_application.m` – codes for neural network application with Eqn2 inputs;
- `GOM_NN_Eqn3_application.m` – codes for neural network application with Eqn3 inputs;
- `GOM_NN_Eqn4_application.m` – codes for neural network application with Eqn4 inputs;

**Code was developed using**<br>
: MATLAB v.R2023b<br>
: MATLAB Deep Learning Toolbox<br>

 **POCs**<br>
  Yuanyuan Xu yyx at udel.edu<br>
  Madison Soden madison.soden at noaa.gov<br>
   


