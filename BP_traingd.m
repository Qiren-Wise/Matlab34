clc;clear all
P = [-1 -1 2 2 4;0 5 0 5 7];
T = [-1 - 1 1 1 -1];
net = newff(minmax(P),[7,1],{'tansig','purelin'},'trainlm');
net.trainParam.show = 50;
net.trainParam.lr = 0.05;
net.trainParam.epochs = 1000;
net.trainParam.goal = 1e-5;
[net,tr] = train(net,P,T);
net.iw{1,1};
net.b{1};
net.iw{2,1};
net.b{2};
y3 = sim(net,P);
% 
% X = -1:0.1:1;
% D = [- 0.9602 -0.5770 -0.0729 0.3771 0.6405 0.6600 0.4609...
%     0.1336 -0.2013 -0.4344 -0.5000 -0.3930 -0.647 -0.0988....
%     0.3072 0.3960 0.3449 0.1716 -0.3120 -0.2189 -0.3201];
% figure;
% plot(X,D,'*');
% net = newff(minmax(X),[5,1],{'tansig','tansig'});
% net.trainParam.epochs = 100;
% net.trainParam.goal = 0.005;
% net = train(net,X,D);
% O = sim(net,X);
% figure;
% plot(X,D,X,O,'r');
% V = net.iw{1,1};
% theta1 = net.b{1};
% W = net.iw{2,1};
% theta2 = net.b{2};