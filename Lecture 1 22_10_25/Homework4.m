A = input("insert your matrix: ")

% Tổng từng cột
sum_col1 = 0;
sum_col2 = 0;
sum_col3 = 0;

for i = 1: size(A, 2)
    if i == 1
        for j = 1:size(A,1)
            sum_col1 = sum_col1 + A(j,i);
        end
    elseif i==2
           for j = 1:size(A,1)
            sum_col2 = sum_col2 + A(j,i);
           end 
    else 
        for j = 1:size(A,1)
            sum_col3 = sum_col3 + A(j,i);
        end
    end
   
end

sum_col1 
sum_col2 
sum_col3 

% Tích từng hàng
prod_row1 = 1;
prod_row2 = 1;
prod_row3 = 1;

for i = 1: size(A,1)
    if i == 1
        for j = 1 : size(A,2)
            prod_row1 = prod_row1 * A(i,j);
            
        end
    elseif i == 2
        for j = 1 : size(A,2)
            prod_row2 = prod_row2 * A(i,j);
            
        end
    else 
        for j = 1 : size(A,2)
            prod_row3 = prod_row3 * A(i,j);
            
        end
    end
end

prod_row1 
prod_row2 
prod_row3 

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
% 
% A =
% 
%      1     4     6
%      7     8     1
%     35    23    10
%      4     9     3
% 
% 
% sum_col1 =
% 
%     47
% 
% 
% sum_col2 =
% 
%     35
% 
% 
% sum_col3 =
% 
%     17
% 
% 
% prod_row1 =
% 
%     24
% 
% 
% prod_row2 =
% 
%     56
% 
% 
% prod_row3 =
% 
%       869400
% 
% 
% transpose_matrix =
% 
%      1     7    35     4
%      4     8    23     9
%      6     1    10     3
% 
% 
% new_mat =
% 
%      1     1     3     4     4     6     7     8     9    10    23    35


    
    
