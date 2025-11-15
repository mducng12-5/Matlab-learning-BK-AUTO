file_name_1 = 'C:\My project\Matlab learning bk auto\Final test\Matlab cuối khóa\pickoff_noido_30_03_23.003.tab';
opts_1 = detectImportOptions(file_name_1, 'FileType', 'text');
opts_1.VariableNamesLine = 10;
opts_1.VariableUnitsLine = 11; 
opts_1.DataLines = [12, Inf];   
data_table_1 = readtable(file_name_1, opts_1);


file_name_2 = 'C:\My project\Matlab learning bk auto\Final test\Matlab cuối khóa\pickoff_caotoc_01_04_23.001.tab';
opts_2 = detectImportOptions(file_name_2, 'FileType', 'text');
opts_2.VariableNamesLine = 10;
opts_2.VariableUnitsLine = 11; 
opts_2.DataLines = [12, Inf];   
data_table_2 = readtable(file_name_2, opts_2);

MatrixFuelVol_1 = [data_table_1.Vol];
MatrixFuelVol_2 = [data_table_2.Vol];

MatrixFuelVol_1(6)