clc
clear

V1 = [];
V2 = [];

load(sprintf('data_part_%1d.mat',1));

for f = 1:5
    S = load(sprintf('data_part_%1d.mat',f));
    V1(:,S.idx) = S.V1_part;
    V2(:,S.idx) = S.V2_part;
end

save('trainingSet_new.mat', 'V1','V2','random_I','random_P','-v7');