n = input('Nhập n vào: ')
[Matrix_GPS_Longtitude_1, Matrix_GPS_Lattitude_1, Matrix_GPS_Longtitude_2, Matrix_GPS_Lattitude_2] = FileHandling_FindDistance();
[distance1, distance2] = Find_distance(Matrix_GPS_Longtitude_1, Matrix_GPS_Lattitude_1, Matrix_GPS_Longtitude_2, Matrix_GPS_Lattitude_2, n);
fprintf("distance 1: %f km\n", distance1)
fprintf("distance 2: %f km\n", distance2)

[MatrixFuelVol_1, MatrixFuelVol_2] = FileHandling_FuelEco();
[Fuel_Consumption_Per_100km_1, Fuel_Consumption_Per_100km_2] = Fuel_Eco(distance1, distance2, MatrixFuelVol_1, MatrixFuelVol_2, n);

fprintf("Fuel Consumption Per 100km 1: %f l/100km\n", Fuel_Consumption_Per_100km_1)
fprintf("Fuel Consumption Per 100km 2: %f l/100km\n", Fuel_Consumption_Per_100km_2)