clc; clear; close all;

name = 'second_order_follow';

% 打印 Simulink 模型框图
open_system(name);
print(append('-s', name), '-dpng', append(name, '_model.png'));
out = sim(name); % 运行模型
close_system(name);

name = '欠阻尼二阶系统单位阶跃响应';
figure, hold on;
plot(out.t, out.step_r, 'b');
plot(out.t, out.step_c, 'r');
legend({'Step', 'Response'});
title(name);
saveas(gcf, strcat(name, '.png'));
hold off;

name = '欠阻尼二阶系统单位斜坡响应';
figure, hold on;
plot(out.t, out.ramp_r, 'b');
plot(out.t, out.ramp_c, 'r');
legend({'Step', 'Response'});
title(name);
saveas(gcf, strcat(name, '.png'));
hold off;

name = '欠阻尼二阶系统单位加速度响应';
figure, hold on;
plot(out.t, out.accel_r, 'b');
plot(out.t, out.accel_c, 'r');
legend({'Step', 'Response'});
title(name);
saveas(gcf, strcat(name, '.png'));
hold off;
