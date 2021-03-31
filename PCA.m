clear,clc;
disp("***导入数据中***");
load('ORL4646.mat');
disp("***成功导入数据***");
data = reshape(ORL4646,46*46,400)';
X_train = [];
X_test = [];

for i=0:39
    index = randperm(10);
    for j=1:10
        if j<=2
            X_test = [X_test; data(i*10+index(j),:)];
        else
            X_train = [X_train; data(i*10+index(j),:)];
        end
    end
end
disp("******人脸识别模型训练中******");
eigenVector = fit(X_train);
disp("******人脸识别模型训练完成******");