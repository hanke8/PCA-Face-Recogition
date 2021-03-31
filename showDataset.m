disp("**********人脸数据展示***********");
for i = 0:39
    disp(i+1);
    for j = 1:8
        img = reshape(X_train(i*8+j,:),46,46);
        imshow(imresize(img,[256,256]),[]);
    end
end