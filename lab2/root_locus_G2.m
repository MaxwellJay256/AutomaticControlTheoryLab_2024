% File: root_locus.m
clc; clear; close all;

num2 = [1 5 5];
den2 = conv([1 1 0], [1 2 2]);
G2 = tf(num2, den2);

% 绘制根轨迹
figure(1);
rlocus(G2);
title('G_2(s) 的根轨迹');
axis([-4 1 -6 6]);
grid on;

[k, poles] = rlocfind(G2);
disp('k = '); disp(k);
disp('poles = '); disp(poles);
saveas(gcf, 'rlocfind_G2.png');

% 绘制对应增益下的单位阶跃响应
figure(2);
step(feedback(k*G2, 1));
title('k = ' + string(k) + ' 时的单位阶跃响应');
grid on;
saveas(gcf, 'step_response_G2.png');
