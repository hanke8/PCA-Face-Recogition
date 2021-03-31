function [eigenVector] = fit(X_train)
%X_train 的每一行是一张图片
Xmean = mean(X_train,1);
A = X_train-repmat(Xmean, size(X_train,1), 1);  %中心化

meanFace = reshape(Xmean,46,46);
%展示平均脸
figure(1)
imshow(imresize(meanFace,[256,256]),[]);
title('平均脸')

%特殊求法
% [U, sigma] = eig(A*A');
% [sigma,index] = sort(diag(sigma),'descend');
% eigenVector = A'*U;
% eigenVector = eigenVector(:,index);

%常规求法
%按重要程度重排投影矩阵
[U, sigma] = eig(A'*A);
[sigma,index] = sort(diag(sigma),'descend');
eigenVector = U(:,index);
