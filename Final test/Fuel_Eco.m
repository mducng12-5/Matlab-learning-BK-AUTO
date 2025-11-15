function [Fuel_Consumption_Per_100km_1, Fuel_Consumption_Per_100km_2] = Fuel_Eco(distance1, distance2, MatrixFuelVol_1, MatrixFuelVol_2, n)

Fuel_Consumption_Per_100km_1 = (((MatrixFuelVol_1(n) - MatrixFuelVol_1(1)) / 1000) / distance1) * 100;
Fuel_Consumption_Per_100km_2 = (((MatrixFuelVol_2(n) - MatrixFuelVol_2(1)) / 1000) / distance2) * 100;

end