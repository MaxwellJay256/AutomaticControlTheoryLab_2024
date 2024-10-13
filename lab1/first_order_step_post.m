% -------------------------------------------------------------------
%  MATLAB version: 23.2.0.2365128 (R2023b)
%  一阶系统阶跃响应
% -------------------------------------------------------------------
clc; clear;

name = 'first_order_step';

% 打印 Simulink 模型框图
open_system(name);
print(append('-s', name), '-dpng', append(name, '_model.png'));
out = sim(name); % 运行模型
close_system(name);

% 打印响应曲线
figure, hold on;
plot(out.t, out.r, 'b');
plot(out.t, out.c(:,1), 'r', out.t, out.c(:,2), 'g', out.t, out.c(:,3), 'm');
legend({'Step', 'T=2', 'T=5', 'T=10'});
title('一阶系统单位阶跃响应');
ylim([0, 1.1]);
saveas(gcf, strcat(name, '.png'));
hold off;
