function [distance1, distance2] = Find_distance(Matrix_GPS_Longtitude_1, Matrix_GPS_Lattitude_1, Matrix_GPS_Longtitude_2, Matrix_GPS_Lattitude_2, n)
    distance1 = 0;
    distance2 = 0;
    R = 6371; % Bán kính Trái Đất

    for i = 1:(n-1)
        
      
        lat1_rad = deg2rad(Matrix_GPS_Lattitude_1(i));
        lon1_rad = deg2rad(Matrix_GPS_Longtitude_1(i));
        lat2_rad = deg2rad(Matrix_GPS_Lattitude_1(i+1));
        lon2_rad = deg2rad(Matrix_GPS_Longtitude_1(i+1));
        
        dLat1 = lat2_rad - lat1_rad;
        dLon1 = lon2_rad - lon1_rad;
    
        a1 = sin(dLat1/2)^2 + cos(lat1_rad) * cos(lat2_rad) * sin(dLon1/2)^2;
        c1 = 2 * atan2(sqrt(a1), sqrt(1-a1));
        d1 = R * c1; 
        
        distance1 = distance1 + d1; 
        
       
        lat1_rad_2 = deg2rad(Matrix_GPS_Lattitude_2(i));
        lon1_rad_2 = deg2rad(Matrix_GPS_Longtitude_2(i));
        lat2_rad_2 = deg2rad(Matrix_GPS_Lattitude_2(i+1));
        lon2_rad_2 = deg2rad(Matrix_GPS_Longtitude_2(i+1));
        
        dLat2 = lat2_rad_2 - lat1_rad_2;
        dLon2 = lon2_rad_2 - lon1_rad_2;
        
        a2 = sin(dLat2/2)^2 + cos(lat1_rad_2) * cos(lat2_rad_2) * sin(dLon2/2)^2;
        c2 = 2 * atan2(sqrt(a2), sqrt(1-a2));
        d2 = R * c2;
        
        distance2 = distance2 + d2;
    end
 
end