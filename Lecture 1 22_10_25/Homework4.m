A = input("insert your matrix: ")

% Tổng từng cột
sum_col = 0;

result_col = 0;

for i = 1: size(A, 2)
    for j = 1:size(A,1)
            sum_col = sum_col + A(j,i);
    end
    result_col = sum_col
    sum_col = 0;
    
   
end


% Tích từng hàng
prod_row = 1;
result_rows = 0;


for i = 1: size(A,1)
    for j = 1 : size(A,2)
            prod_row = prod_row * A(i,j);
            
    end
        result_rows = prod_row
        prod_row = 1;
end
% Ma trận chuyển vị

num_rows = size(A,1);
num_cols = size(A,2);

transpose_matrix = zeros(num_cols,num_rows);

for a = 1:size(A,1)
        for b = 1 : size(A,2)
            transpose_matrix(b,a) = A(a,b);
        end
end
 
transpose_matrix

% Sắp xếp toàn bộ phần tự theo thứ tự tăng dần
new_mat_dim = size(1, num_rows*num_cols);
new_mat = zeros(1, new_mat_dim);

for z = 1 : num_cols*num_rows
    new_mat(z) = A(z);
end
new_mat;

for z = 1 : (num_cols*num_rows-1)
    for k = 1 : (num_cols*num_rows-1)
        if new_mat(k) > new_mat(k+1)
            temp = new_mat(k);
            new_mat(k) = new_mat(k+1);
            new_mat(k+1) = temp;
        end
    end
end

new_mat

% Kết quả HW 4
% insert your matrix: [ 3 1 2; 4 6 5]
% 
% A =
% 
%      3     1     2
%      4     6     5
% 
% 
% result_col =
% 
%      7
% 
% 
% result_col =
% 
%      7
% 
% 
% result_col =
% 
%      7
% 
% 
% result_rows =
% 
%      6
% 
% 
% result_rows =
% 
%    120
% 
% 
% transpose_matrix =
% 
%      3     4
%      1     6
%      2     5
% 
% 
% new_mat =
% 
%      1     2     3     4     5     6