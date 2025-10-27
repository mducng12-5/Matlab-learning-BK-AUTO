%% Bài tập MATLAB giữa khóa
% WHO: NGUYEN MINH DUC - 20238346
% WHEN: 25/10/2025
% WHAT: MATLAB BASIC
% MATLAB VERSION: R2024a
%--------------------------------------------------------------------------

%% Bài 2

n = input("nhap kich thuoc (nxn): ")
if mod(n,2) == 0
    n = n+1;
end

for i = 1:n
    for j = 1:n
        if(i == j || i + j == n+1 || i == (n+1)/2 || j == (n+1)/2 )
            fprintf('o')
        else
            fprintf(' ')
        end
    end
    fprintf('\n')
end