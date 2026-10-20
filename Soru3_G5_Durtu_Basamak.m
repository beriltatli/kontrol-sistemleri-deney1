%% Soru 3 - G5(s) Sisteminin 15 Saniyelik Dürtü ve Basamak Yanıtları
clc; clear; close all;

G5 = tf([8 20], [1 6 13 12 4])  % G5(s)
Tfinal = 15;                            % Simülasyon süresi (s)

figure('Name', 'Soru 3 - G5(s)');
subplot(1,2,1); impulse(G5, Tfinal); grid on;   % Dürtü yanıtı
title('G5(s) Dürtü Yanıtı');
subplot(1,2,2); step(G5, Tfinal);    grid on;   % Basamak yanıtı
title('G5(s) Basamak Yanıtı');
