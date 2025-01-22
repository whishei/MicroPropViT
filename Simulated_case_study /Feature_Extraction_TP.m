
savefolder = '/MATLAB Drive/Digital_TP_NEW';

xx_data = load('/MATLAB Drive/xx_bin_TEST.mat');
xy_data = load('/MATLAB Drive/xy_bin_TEST.mat');
xz_data = load('/MATLAB Drive/xz_bin_TEST.mat');



xx = xx_data.xx;
xy = xy_data.xy;
xz = xz_data.xz;

y = xx_data.y;


function twopoint_stats = TPS(ar)

    shape = size (ar);


    % size(xy)
    % size(xz)

    twopoint_stats = [];

    count = 0;
    for i = 1:shape(1)

        img = squeeze(ar(i,:,:));

        A = img;
        % B = 1 - A;
        % 
        %A
        %B

        % figure;
        % imagesc(A);            % Display the matrix as an image
        % colormap(gray);        % Use a grayscale colormap
        % colorbar;              % Add a colorbar
        % axis equal;            % Equal axis scaling
        % title('Original Matrix');
        % xlabel('X Direction');
        % ylabel('Y Direction');
        % 
        % figure;
        % imagesc(B);            % Display the matrix as an image
        % colormap(gray);        % Use a grayscale colormap
        % colorbar;              % Add a colorbar
        % axis equal;            % Equal axis scaling
        % title('Original Matrix');
        % xlabel('X Direction');
        % ylabel('Y Direction');

        shape = size(img);
        shape;

        cut = floor(shape(1) / 2);

        cut;

        S2 = TwoPoint('auto',cut,'periodic',A);

        S2;

        % % Display the heatmap
        % figure;
        % imagesc(S2); % Show the heatmap
        % colormap(jet);          % Apply colormap
        % colorbar;               % Show colorbar
        % axis equal;             % Equal scaling
        % title('Two-Point Correlation Heatmap');
        % xlabel('X Direction');
        % ylabel('Y Direction');

        auto = reshape(S2, 1, []);

        twopoint_stats = [twopoint_stats; auto];

        size(twopoint_stats);

        count 

        count = count + 1;

    end

end
tic
xx_tps = TPS(xx);
newFileName = 'xx_tp_auto_periodic.mat';
savePath = fullfile(savefolder, newFileName);
save(savePath, 'xx_tps', 'y');
message = 'Done with xx';
disp(message);

xy_tps = TPS(xy);
newFileName = 'xy_tp_auto_periodic.mat';
savePath = fullfile(savefolder, newFileName);
save(savePath, 'xy_tps', 'y');
message = 'Done with xy';
disp(message);

xz_tps = TPS(xz);
newFileName = 'xz_tp_auto_periodic.mat';
savePath = fullfile(savefolder, newFileName);
save(savePath, 'xz_tps', 'y');
message = 'Done with xz';
disp(message);
toc
% 
