%% loads and plot the GHI and PV time-series
% DESL-EPFL
% Rahul Gupta


clear all
clc

unzip('DESL_GHI_PV-Power_2017-11-24_2023-01-22_5minutes.zip','myfolder')

PVData = importdata('myfolder/DESL_GHI_PV-Power_2017-11-24_2023-01-22_5minutes.csv');

%% plotting last week days data (sample)
plot_days = 7;

timesteps_per_day = 288; % for 5 minutes resolution
data_length = size(PVData.textdata,1);
%no_days = floor(data_length/timesteps_per_day);

index_to_plot = data_length - timesteps_per_day*plot_days:data_length;

for i = index_to_plot

DateVector(:,i) = datetime(PVData.textdata{i}(1:end-6), 'Format', 'yyyy-MM-dd HH:mm:ss');

end
figure
plot(DateVector(index_to_plot), PVData.data(index_to_plot-1,1))
ylabel('GHI (Watts/m2')
xlabel('date')

figure
plot(DateVector(index_to_plot), PVData.data(index_to_plot-1,2))

ylabel('PV generation (Watts')
xlabel('date')

