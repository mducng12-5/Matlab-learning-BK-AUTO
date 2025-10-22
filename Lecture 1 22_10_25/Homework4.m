% A = input("insert your matrix: ")
A = [ 1 4 6; 7 8 1; 35 23 10; 4 9 3]
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
           for j = 1:3
            sum_col2 = sum_col2 + A(j,i);
           end 
    else 
        for j = 1:3
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

C = zeros(num_cols,num_rows);

for a = 1:size(A,1)
        for b = 1 : size(A,2)
            C(b,a) = A(a,b);
        end
end
 
C

% Sắp xếp toàn bộ phần tự theo thứ tự tăng dần



    
    
