# DESL-Photovoltaic-timeseries
This repository provides time-series of global horizontal irradiance (GHI) and PV production measurements of solar panels at the EPFL's Distributed Electrical Systems Laboratory, Switzerland.

The time-series is recorded over last 5-years. The GHI is measured via a pyranometer installed on the roof-top of the DESL building. The specification of pyranometer are detailed in [1].
The PV power production is measured on the AC side. During the course of last five years, several instances might have missing data due to reasons related to maintenance etc. of the sensors. Addionally, it contains 1-seconds resolution data for June, July, Dec 2021 and Jan 2022.

The PV production is associated to the plant with following configuration: 

Location.latitude = 46.518397;
Location.longitude = 6.565229;
Location.altitude = 200;

tilt  = 20;
azimuth = 180;
coordinate = Location;
power_capacity_in_kWp = 13;

Here is the list of the files. 

[main.m] Matlab code sample to extract the time-series and plot for last few days.
[DESL_GHI_PV-Power_2017-11-24_2023-01-22_1minutes.zip] Data sampled at 1-minute time-resolution
[DESL_GHI_PV-Power_2017-11-24_2023-01-22_5minutes.zip] Data sampled at 5-minutes time-resolution

Simulation notes:
Run main.m to plot GHI and PV generation

Use case: The GHI measurements can be used to estimate the PV production for a specific plant using model presented in [2].

References: 

[1] Scolari, Enrica. Modelling and Forecasting of Photovoltaic Generation for Microgrid Applications: from Theory to Validation. No. THESIS. EPFL, 2019

[2] Sossan, F., Scolari, E., Gupta, R. and Paolone, M., 2019. Solar irradiance estimations for modeling the variability of photovoltaic generation and assessing violations of grid constraints: A comparison between satellite and pyranometers measurements with load flow simulations. Journal of Renewable and Sustainable Energy, 11(5), p.056103.
