% 1. Tạo ma trận ma phương cấp  5, tính tổng các đường chéo chính và phụ 
A = magic(5)
first_sum = A(1) + A(7)+ A(13) + A(19) + A(25)
second_sum = A(5) + A(9) + A(13) + A(17) + A(21)

% 2. Tạo ma trận tam giác trên cấp
B = zeros(4,4)

for i = 1:4
    for j = i:4
        B(i,j) = 1
        j = j+1;
    end
    i = i+1;
end

% 3. Tạo ma trận random 6x6 sau đó thay tất cả giá trị = 0
C = randn(6,6)
C(C < 0) = 0

% 4. Tạo ma trận Z từ hai ma trận
A1 = ones(3,3)*2
B1 = eye(3)
Z(1:3,:) = [A1 B1]
Z(4:6,:) = [B1 A1]



