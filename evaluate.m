function evaluate(X_train, X_test, eigenVector)
x = [];
y = [];
for j = 1:160
    x = [x j];
    right = 0;
    eigen_vector = eigenVector(:,1:j);
    train_project = X_train * eigen_vector;
    for i = 1:size(X_test,1)
        test_project = X_test(i,:) * eigen_vector;
        %求欧氏距离,并筛选出距离最小的样本图片
        index = -1;
        min = Inf;
        for j = 1:size(train_project,1)
            distance = norm(test_project-train_project(j,:));
            if min>distance
                index = j;
                min = distance;
            end
        end

        if ceil(index/8) == ceil(i/2) 
            right = right+1;
        end
    %     if ceil(index/9) == i 
    %         right = right+1;
    %     end
    end
    rate = right/size(X_test,1);
    y = [y rate];
end
plot(x,y);
title("不同维度的识别率")
