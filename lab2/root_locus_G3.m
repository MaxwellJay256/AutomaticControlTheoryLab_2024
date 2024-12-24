% File: root_locus_G3.m
clc; clear; close all;

num3 = 1;
den3 = [1 2 2 0];
G3 = tf(num3, den3);

% 不含开环零点的 G_3(s) 根轨迹
figure(1);
rlocus(G3);
title('不含开环零点的 G_3(s) 根轨迹');
axis([-8 2 -6 6]);
saveas(gcf, 'figures_locus/locus_G3_nozero.png');

% 含开环零点的 G_3(s) 根轨迹
z = [-100, -75, -50, -25, -5, -4, -3, -2, -1, 0];
for i = 1:length(z)
    G3 = root_zero(z(i));
    figure(2);
    rlocus(G3);
    title('开环零点 z = ' + string(z(i)) + ' 的 G_3(s) 根轨迹');  
    axis([-8 2 -6 6]);
    saveas(gcf, 'locus_G3_' + string(z(i)) + '.png');
end
