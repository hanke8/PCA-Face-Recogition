function showScattePlot(X_train, eigenVector)
% %2D
% data = [];
% for i=1:40
%     point = X_train(i,:) * eigenVector(:,1:2);
%     data = [data; point];
% end
% x = data(:,1);
% y = data(:,2);
% scatter(x(1:8),y(1:8),'r');
% hold on;
% scatter(x(9:16),y(9:16),'g');
% hold on;
% scatter(x(17:24),y(17:24),'b');
% hold on;
% scatter(x(25:32),y(25:32),'black');
% hold on;
% scatter(x(33:40),y(33:40),'yellow');

% 3D
data = [];
for i=1:45
    point = X_train(i,:) * eigenVector(:,1:3);
    data = [data; point];
end
x = data(:,1);
y = data(:,2);
z = data(:,3);
scatter3(x(1:8),y(1:8),z(1:8),'r');
hold on;
scatter3(x(9:16),y(9:16),z(9:16),'g');
hold on;
scatter3(x(17:24),y(17:24),z(17:24),'b');
hold on;
scatter3(x(25:32),y(25:32),z(25:32),'black');
hold on;
scatter3(x(33:40),y(33:40),z(33:40),'yellow');

