%% Publish all examples
% Clean up before start
clear; bdclose all; close all; clc
% Clean up the PUBLISH folder
pubdir = [pwd '\publish\'];
if exist('publish', 'dir')
    rmdir(pubdir,'s');
end
mkdir(pubdir);

%% Publish Example 2.1
disp('-->Publishing Example 2.1')
cpath = pwd; % Save the root level path
options = struct('outputDir',[cpath '\publish\Ch2Ex1\']);
cd('Chapter2_Example1')
publish('Ch2Ex1_main.m', options);
movefile([cpath '\publish\Ch2Ex1\Ch2Ex1_main.html'], [cpath '\publish\Ch2Ex1\index.html']);
cd(cpath)

%% Publish Example 2.2
disp('-->Publishing Example 2.2')
cpath = pwd; % Save the root level path
options = struct('outputDir',[cpath '\publish\Ch2Ex2\']);
cd('Chapter2_Example2')
publish('Ch2Ex2_main.m', options);
movefile([cpath '\publish\Ch2Ex2\Ch2Ex2_main.html'], [cpath '\publish\Ch2Ex2\index.html']);
cd(cpath)
clear; close all;  % clean up

%% Publish Example 3.1
disp('-->Publishing Example 3.1')
cpath = pwd; % Save the root level path
options = struct('outputDir',[cpath '\publish\Ch3Ex1\']);
cd('Chapter3_Example1')
publish('Ch3Ex1_main.m', options);
movefile([cpath '\publish\Ch3Ex1\Ch3Ex1_main.html'], [cpath '\publish\Ch3Ex1\index.html']);
cd(cpath)
clear; close all;  % clean up

%% Publish Example 4.2
% Setup CVX
% run('.\tools\cvx-w64\cvx\cvx_setup.m')
% run('.\tools\cvx-w64\cvx\cvx_startup.m')
disp('-->Publishing Example 4.2')
cpath = pwd; % Save the root level path
options = struct('outputDir',[cpath '\publish\Ch4Ex2\']);
cd('Chapter4_Example2')
publish('Ch4Ex2_main.m', options);
movefile([cpath '\publish\Ch4Ex2\Ch4Ex2_main.html'], [cpath '\publish\Ch4Ex2\index.html']);
cd(cpath)
clear; close all;  % clean up

%% Publish Example 4.4
% Setup CVX
disp('-->Publishing Example 4.4')
cpath = pwd; % Save the root level path
options = struct('outputDir',[cpath '\publish\Ch4Ex4\']);
cd('Chapter4_Example4')
publish('Ch4Ex4_main.m', options);
movefile([cpath '\publish\Ch4Ex4\Ch4Ex4_main.html'], [cpath '\publish\Ch4Ex4\index.html']);
cd(cpath)
clear; close all;  % clean up