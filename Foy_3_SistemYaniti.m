%% Föy - Sistem Yanıtını Elde Etme
clc; clear; close all;

sys = tf([1 2], [1 3 2]);   % Örnek sistem modeli
Tfinal = 10;                % Simülasyon süresi (s)

figure; impulse(sys, Tfinal); grid on;   % Dürtü yanıtı
figure; step(sys, Tfinal);    grid on;   % Basamak yanıtı

t = 0:0.01:10;              % Örnekleme zamanı vektörü
u = sin(t);                 % Giriş sinyali vektörü (u ve t aynı boyutta)
figure; lsim(sys, u, t); grid on;        % Farklı giriş için sistem yanıtı
