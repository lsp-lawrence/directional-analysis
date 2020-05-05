%% Clear
clc
clear all

%% Directories and file name
data_dir = '/Users/liam/Documents/research/long_dwi/data';
adc_table_file_name = 'sub-M003_adc_timeseries_table_20200501.csv';
session_fraction_file_name = 'subject_session_date_fraction_20200501.csv';

%% Load ADC table
adc_table_file = fullfile(data_dir,adc_table_file_name);
opts = detectImportOptions(adc_table_file);
opts.VariableTypes = {'categorical','categorical','categorical','categorical','double','uint16'};
adc_table = readtable(adc_table_file,opts);

%% Load session-fraction table
session_fraction_table_file = fullfile(data_dir,session_fraction_file_name);
opts = detectImportOptions(session_fraction_table_file);
opts.VariableTypes = {'categorical','categorical','uint64','uint16'};
session_fraction_table = readtable(session_fraction_table_file,opts);