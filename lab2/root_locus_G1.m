% File: root_locus.m
clc; clear; close all;

num1 = 1;
den1 = conv([1 4 0], [1 4 20]);
G1 = tf(num1, den1);

% 绘制根轨迹
figure(1);
rlocus(G1);
title('G_1(s) 的根轨迹');
% axis([-8 2 -6 6]);
grid on;
saveas(gcf, 'locus_G1(s).png');

[k, poles] = rlocfind(G1);
disp('k = '); disp(k);
disp('poles = '); disp(poles);

% 绘制对应增益下的单位阶跃响应
figure(2);
step(feedback(k*G1, 1));
title('k = ' + string(k) + ' 时的单位阶跃响应');
grid on;
saveas(gcf, 'step_response_G1.png');

