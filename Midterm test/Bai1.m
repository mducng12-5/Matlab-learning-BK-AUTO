%% Bài tập MATLAB giữa khóa
% WHO: NGUYEN MINH DUC - 20238346
% WHEN: 25/10/2025
% WHAT: MATLAB BASIC
% MATLAB VERSION: R2024a
%--------------------------------------------------------------------------

%% Bài 1
x = linspace(0, 1);
W_L = 4400./(1.425+x);

plot(W_L, x)

title('Đồ thị W_L') 
xlabel('W_L')
ylabel('x')
grid on


