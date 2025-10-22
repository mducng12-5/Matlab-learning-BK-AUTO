A = [2 4 6 8; 1 3 5 7; 9 11 13 15; 10 12 14 16]
% 1. Trích 2 hàng đầu và 3 cột đầu
B = A(1:2, 1:3)
% 2. Đổi cột 2 và cột 4 
 temp = A(1:4, 2)
 A(1:4, 2) = A(1:4, 4)
 A(1:4, 4) = temp
 C = A
% 3. Xóa hàng thứ 3
 A(3, :) = []
 D = A

% lấy tất cả phần tử chẵn
% Cách 1
% i = 1;
% while (i<17)
%     if(mod(A(i), 2) == 0)
%         fprintf('%d ', A(i))
%     end
%     i = i+1;
% end

% Cách 2
even = A(mod(A,2)==0)




