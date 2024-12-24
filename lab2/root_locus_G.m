% File: root_locus.m
clc; clear; close all;

num = [1 2 4];
den = conv(conv([1 4 0], [1 6]), [1 1.4 1]);
G = tf(num, den);

% 绘制根轨迹
figure(1);
rlocus(G);
title('G(s) 的根轨迹');
axis([-8 2 -6 6]);
grid on;
saveas(gcf, 'locus_G(s).png');

[k, poles] = rlocfind(G);
disp('k = '); disp(k);
disp('poles = '); disp(poles);

% 绘制对应增益下的单位阶跃响应
figure(2);
step(feedback(k*G, 1));
title('k = ' + string(k) + ' 时的单位阶跃响应');
grid on;
saveas(gcf, 'step_response_G.png');

