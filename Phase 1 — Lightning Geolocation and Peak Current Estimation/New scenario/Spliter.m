chunk = 400;  % columns per file (tune until each file <25MB)
n = size(V1,2);
counter = 0;

for k = 1:chunk:n
    counter = counter + 1;
    idx = k:min(k+chunk-1,n);
    V1_part = V1(:,idx);
    V2_part = V2(:,idx);
    
    if counter==1
        save('data_part_1.mat', 'idx','V1_part','V2_part','meas','random_I','random_P','random_x','random_y','-v7');
    else
        save(sprintf('data_part_%1d.mat',counter), 'idx','V1_part','V2_part','-v7');
    end

end

