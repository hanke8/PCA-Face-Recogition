function showEigenFace(eigenVector)  
%显示特征脸（变换空间中的基向量，即单位特征向量） 
%k 主成分的维数
for i=1:20
    img = reshape(eigenVector(:,i),46,46);
    subplot(4,5,i);
    imshow(img,[])
end 
end