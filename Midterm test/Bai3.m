%% Bài tập MATLAB giữa khóa
% WHO: NGUYEN MINH DUC - 20238346
% WHEN: 25/10/2025
% WHAT: MATLAB BASIC
% MATLAB VERSION: R2024a
%--------------------------------------------------------------------------

%% Bài 3

while 1
    so_nuoc_di = 0;
    chess_coordinate = input('Nhap vao toa do quan co: ', "s")
    chess_col = chess_coordinate(1);
    chess_row = str2double(chess_coordinate(2:end));
    if chess_col == 'a'
        chess_col_alt = 1;
    elseif chess_col == 'b'
        chess_col_alt = 2;
    elseif chess_col == 'c'
        chess_col_alt = 3;
    elseif chess_col == 'd'
        chess_col_alt = 4;
    elseif chess_col == 'e'
        chess_col_alt = 5;
    elseif chess_col == 'f'
        chess_col_alt = 6;
    elseif chess_col == 'g'
        chess_col_alt = 7;
    elseif chess_col == 'h'
        chess_col_alt = 8;
    end

    chess_col_alt_1 = chess_col_alt + 1;
    chess_row_1 = chess_row + 2;

    chess_col_alt_2 = chess_col_alt - 1;
    chess_row_2 = chess_row + 2;

    chess_col_alt_3 = chess_col_alt - 1;
    chess_row_3 = chess_row - 2;

    chess_col_alt_4 = chess_col_alt + 1;
    chess_row_4 = chess_row - 2;

    chess_col_alt_5 = chess_col_alt + 2;
    chess_row_5 = chess_row + 1;

    chess_col_alt_6 = chess_col_alt - 2;
    chess_row_6 = chess_row + 1;

    chess_col_alt_7 = chess_col_alt - 2;
    chess_row_7 = chess_row - 1;

    chess_col_alt_8 = chess_col_alt + 2;
    chess_row_8 = chess_row - 1;

    if (chess_row < 1 || chess_row > 8) || (chess_col ~= 'a' && chess_col ~= 'b' && chess_col ~= 'c' && chess_col ~= 'd' && chess_col ~= 'e' && chess_col ~= 'f' && chess_col ~= 'g' && chess_col ~= 'h')
        fprintf('toa do khong hop le\n')
    else
        if chess_row_8 >= 1 && chess_row_8 <= 8 && chess_col_alt_8 >= 1 && chess_col_alt_8 <= 8
            so_nuoc_di = so_nuoc_di + 1;
        end
        if chess_row_7 >= 1 && chess_row_7 <= 8 && chess_col_alt_7 >= 1 && chess_col_alt_7 <= 8
            so_nuoc_di = so_nuoc_di + 1;
        end
        if chess_row_6 >= 1 && chess_row_6 <= 8 && chess_col_alt_6 >= 1 && chess_col_alt_6 <= 8
            so_nuoc_di = so_nuoc_di + 1;
        end
        if chess_row_5 >= 1 && chess_row_5 <= 8 && chess_col_alt_5 >= 1 && chess_col_alt_5 <= 8
            so_nuoc_di = so_nuoc_di + 1;
        end
        if chess_row_4 >= 1 && chess_row_4 <= 8 && chess_col_alt_4 >= 1 && chess_col_alt_4 <= 8
            so_nuoc_di = so_nuoc_di + 1;
        end
        if chess_row_3 >= 1 && chess_row_3 <= 8 && chess_col_alt_3 >= 1 && chess_col_alt_3 <= 8
            so_nuoc_di = so_nuoc_di + 1;
        end
        if chess_row_2 >= 1 && chess_row_2 <= 8 && chess_col_alt_2 >= 1 && chess_col_alt_2 <= 8
            so_nuoc_di = so_nuoc_di + 1;
        end
        if chess_row_1 >= 1 && chess_row_1 <= 8 && chess_col_alt_1 >= 1 && chess_col_alt_1 <= 8
            so_nuoc_di = so_nuoc_di + 1;
        end
        fprintf('So nuoc di hop le la: ')
        fprintf('%d\n',so_nuoc_di)

    end
end

 