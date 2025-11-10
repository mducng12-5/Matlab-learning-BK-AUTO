%% BAI TAP MATLAB - CUOI KHOA
% WHO: NGUYEN MINH DUC - 20238346
% WHEN: 09/11/2025
% WHAT: MATLAB BASIC
% MATLAB VERSION: R2024a
%--------------------------------------------------------------------------

%% Bài 2

[filename, filepath] = uigetfile('.mat', 'Chọn 1 file');

fullpath = fullfile(filepath, filename);

data = load(fullpath);




AllsteerAngle = data.M1ccc{5, 18};
Ay = data.M1ccc{5, 34};

filter = (AllsteerAngle ~= 0);

steerAngle = AllsteerAngle(filter);



figure;
plot(steerAngle, Ay)
title('Steering Angle [rad] corresponds to the value of the Ay [m/s^2] in the defined range')



xlabel('Ay [m/s^2]')
ylabel('Steering Angle [rad]')
grid on
hold on;

investige_range_steerAngle1 = input('Nhập giá trị steer angle 1 muốn khảo sát:')
investige_range_Ay1 = input('Nhập giá trị Ay 1 muốn khảo sát: ')

investige_range_steerAngle2 = input('Nhập giá trị steer angle 2 muốn khảo sát:')
investige_range_Ay2 = input('Nhập giá trị Ay 2 muốn khảo sát: ')

x1 = investige_range_Ay1;
y1 = investige_range_steerAngle1;
x2 = investige_range_Ay2;
y2 = investige_range_steerAngle2;
width_rec = x2 - x1;
height_rec = y2 - y1;


str_1 = ['the value of the Steering Angle corresponds to the value of the Ay'];
str_2 = ['the value of the Steering Angle in the defined range by user'];


legend(str_1, str_2, 'Location', 'northwest')

rectangle('Position', [x1, y1, width_rec, height_rec], 'EdgeColor', 'r', 'LineWidth', 1.5);

hold off;





 












