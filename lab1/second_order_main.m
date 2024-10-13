clc; clear; close all;

name = '二阶系统单位阶跃响应';

[c1, t] = SecondOrderStep(5, 0);
[c2, t] = SecondOrderStep(5, 0.4);
[c3, t] = SecondOrderStep(5, 1);
[c4, t] = SecondOrderStep(5, 2);

figure('Visible', 'off'), hold on;
plot(t, c1);
plot(t, c2);
plot(t, c3);
plot(t, c4);
xlabel('t'), ylabel('c');
legend('零阻尼', '欠阻尼', '临界阻尼', '过阻尼');
title(name);
saveas(gcf, strcat(name, '.png'));
hold off;

name = '二阶系统单位脉冲响应';

[z1, t] = SecondOrderFImpulse(5, 0);
[z2, t] = SecondOrderFImpulse(5, 0.4);
[z3, t] = SecondOrderFImpulse(5, 1);
[z4, t] = SecondOrderFImpulse(5, 2);

figure('Visible', 'off'), hold on;
plot(t, z1);
plot(t, z2);
plot(t, z3);
plot(t, z4);
xlabel('t'), ylabel('z');
legend('零阻尼', '欠阻尼', '临界阻尼', '过阻尼');
title(name);
saveas(gcf, strcat(name, '.png'));
hold off;

clear;
name = '欠阻尼二阶系统单位阶跃响应（不同 ζ）';

[c1, t] = SecondOrderStep(5, 0.1);
[c2, t] = SecondOrderStep(5, 0.3);
[c3, t] = SecondOrderStep(5, 0.5);
[c4, t] = SecondOrderStep(5, 0.7);

figure('Visible', 'off'), hold on;
plot(t, c1);
plot(t, c2);
plot(t, c3);
plot(t, c4);
xlabel('t'), ylabel('c');
legend('\zeta = 0.1', '\zeta = 0.3', '\zeta = 0.5', '\zeta = 0.7');
title(name);
saveas(gcf, strcat(name, '.png'));
hold off;

clear;
name = '欠阻尼二阶系统单位阶跃响应（不同 ω）';

[c1, t] = SecondOrderStep(1, 0.5);
[c2, t] = SecondOrderStep(3, 0.5);
[c3, t] = SecondOrderStep(5, 0.5);
[c4, t] = SecondOrderStep(7, 0.5);

figure('Visible', 'off'), hold on;
plot(t, c1);
plot(t, c2);
plot(t, c3);
plot(t, c4);
xlabel('t'), ylabel('c');
legend('\omega_n = 1', '\omega_n = 3', '\omega_n = 5', '\omega_n = 7');
title(name);
saveas(gcf, strcat(name, '.png'));
hold off;

clear;
name = '欠阻尼二阶系统单位阶跃响应（保持 ζω）';

[c1, t] = SecondOrderStep(2, 0.5);
[c2, t] = SecondOrderStep(4, 0.25);
[c3, t] = SecondOrderStep(8, 0.125);
[c4, t] = SecondOrderStep(16, 0.0625);

figure(), hold on;
plot(t, c1);
plot(t, c2);
plot(t, c3);
plot(t, c4);
xlabel('t'), ylabel('c');
legend('\zeta = 1/2', '\zeta = 1/4', '\zeta = 1/8', '\zeta = 1/16');
title(name);
saveas(gcf, strcat(name, '.png'));
hold off;
