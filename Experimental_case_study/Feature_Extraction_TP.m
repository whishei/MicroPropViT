
% Specify the folder containing .mat files
folderPath = 'Binary_Images'; % Update with your folder path

savefolder = 'Features_TP';

% Get a list of all .mat files in the folder
matFiles = dir(fullfile(folderPath, '*.mat'));

min = 159;
count = 1;

% Loop through each file
for i = 1:length(matFiles)
    % Load only the variable 'a' from the .mat file
    filePath = fullfile(folderPath, matFiles(i).name);
    
    [~, fileNameWithoutExt, ~] = fileparts(matFiles(i).name);
    
    data = load(filePath, 'a');

    data.a(data.a == 255) = 1;
    
    A = data.a;
    B = 1 - A;

    % figure;
    % imagesc(A);            % Display the matrix as an image
    % colormap(gray);        % Use a grayscale colormap
    % colorbar;              % Add a colorbar
    % axis equal;            % Equal axis scaling
    % title('Original Matrix');
    % xlabel('X Direction');
    % ylabel('Y Direction');
    
    addpath('/MATLAB Drive/FileExchange/Image Correlation and Convolution for Large Data-1.0.0.0');
    savepath; % Save the path for future MATLAB sessions
    
    
    shape1 = size(A);

    shape1;

    min_2 = 10000;

    if shape1(1) <= shape1(2)
        min_2 = shape1(1);

    else
        min_2 = shape1(2);

    end
    
    cut = floor(min_2 / 2);

    S2 = TwoPoint('cross',cut,'nonperiodic',A,B);
    
    S2;
    
    % Display the heatmap
    % figure;
    % imagesc(S2); % Show the heatmap
    % colormap(jet);          % Apply colormap
    % colorbar;               % Show colorbar
    % axis equal;             % Equal scaling
    % title('Two-Point Correlation Heatmap');
    % xlabel('X Direction');
    % ylabel('Y Direction');
    
    shape = size(S2);
    x = shape(1);
    y = shape(2);

    start_x = floor((x - min) / 2); % Use floor for integer division
    start_y = floor((y - min) / 2);

    % Slice the array
    cross = S2(start_x + 1:start_x + min, start_y + 1:start_y + min);

    cross = reshape(cross, 1, []);

    size(cross);

    newFileName = strcat(fileNameWithoutExt, '_tp.mat');

    savePath = fullfile(savefolder, newFileName);

    save(savePath, 'cross');

    count 

    count = count + 1;

    % figure;
    % imagesc(cross); % Show the heatmap
    % colormap(jet);          % Apply colormap
    % colorbar;               % Show colorbar
    % axis equal;             % Equal scaling
    % title('Two-Point Correlation Heatmap');
    % xlabel('X Direction');
    % ylabel('Y Direction');


    % shape
    % 
    % min_2 = 10000;
    % 
    % if shape(1) <= shape(2)
    %     min_2 = shape(1);
    % 
    % else
    %     min_2 = shape(2);
    % 
    % end 
    % 
    % if min_2 < min 
    %     min = min_2;
    % 
    % end
    % 
    % min
        
    % Optional: Pause to view each file's output
    % pause; % Press any key to continue to the next file
end
