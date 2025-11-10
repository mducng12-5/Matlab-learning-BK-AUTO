%% BAI TAP MATLAB - CUOI KHOA
% WHO: NGUYEN MINH DUC - 20238346
% WHEN: 09/11/2025
% WHAT: MATLAB BASIC
% MATLAB VERSION: R2024a
%--------------------------------------------------------------------------

%% Bài 1

msgbox('please select the file for processing')

[filename, filepath] = uigetfile('.mat', 'Chọn 1 file');

fullpath = fullfile(filepath, filename);

data = load(fullpath);

numChannels = size(data.M1ccc, 2); 
numPoints = length(data.M1ccc{5, 1}); 


M = zeros(numPoints, numChannels);

for i = 1:numChannels
  
    dataRow = data.M1ccc{5, i};

    M(:, i) = dataRow';
    
end
M


    




