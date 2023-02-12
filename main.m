%% loads and plot the GHI and PV time-series
% DESL-EPFL
% Rahul Gupta


clear all
clc

unzip('DESL_GHI_PV-Power_2017-11-24_2023-01-22_5minutes.zip','myfolder')

PVData = importdata('myfolder/DESL_GHI_PV-Power_2017-11-24_2023-01-22_5minutes.csv');

figure
subplot(2,1,1)
plot(PVData.data(:,1))
ylabel('GHI (Watts/m2')
xlabel('time index')

subplot(2,1,2)

plot(PVData.data(:,2))
ylabel('PV generation (Watts')
xlabel('time index')
