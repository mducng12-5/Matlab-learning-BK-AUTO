n = input('Nhập n vào: ')
[Matrix_GPS_Longtitude_1, Matrix_GPS_Lattitude_1, Matrix_GPS_Longtitude_2, Matrix_GPS_Lattitude_2] = FileHandling_FindDistance();
[distance1, distance2] = Find_distance(Matrix_GPS_Longtitude_1, Matrix_GPS_Lattitude_1, Matrix_GPS_Longtitude_2, Matrix_GPS_Lattitude_2, n);
fprintf("distance 1: %f km\n", distance1)
fprintf("distance 2: %f km\n", distance2)