%% Soru 3 - G2(s) Sisteminin 15 Saniyelik Dürtü ve Basamak Yanıtları
clc; clear; close all;

G2 = tf([3 0], [1 0 0])  % G2(s)
Tfinal = 15;                            % Simülasyon süresi (s)

figure('Name', 'Soru 3 - G2(s)');
subplot(1,2,1); impulse(G2, Tfinal); grid on;   % Dürtü yanıtı
title('G2(s) Dürtü Yanıtı');
subplot(1,2,2); step(G2, Tfinal);    grid on;   % Basamak yanıtı
title('G2(s) Basamak Yanıtı');
