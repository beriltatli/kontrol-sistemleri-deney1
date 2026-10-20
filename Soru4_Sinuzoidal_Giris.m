%% Soru 4 - G5(s) Sistemine Sinüzoidal Giriş Uygulanması
clc; clear; close all;

G5 = tf([8 20], [1 6 13 12 4])  % Soru 2-e'deki sistem

t = 0:0.01:12;                   % Örnekleme zamanı vektörü (12 s)
u = 2*sin(2*pi*1*t);             % 2 V tepe, 1 Hz sinüzoidal giriş

figure('Name', 'Soru 4');
lsim(G5, u, t); grid on;         % Sistem yanıtı
title('G5(s) Sinüzoidal Giriş Yanıtı');
legend('Giriş u(t)', 'Çıkış y(t)');
