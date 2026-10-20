%% Soru 3 - G3(s) Sisteminin 15 Saniyelik Dürtü ve Basamak Yanıtları
clc; clear; close all;

G3 = tf([1 0 -1], [1 8 0 0])  % G3(s)
Tfinal = 15;                            % Simülasyon süresi (s)

figure('Name', 'Soru 3 - G3(s)');
subplot(1,2,1); impulse(G3, Tfinal); grid on;   % Dürtü yanıtı
title('G3(s) Dürtü Yanıtı');
subplot(1,2,2); step(G3, Tfinal);    grid on;   % Basamak yanıtı
title('G3(s) Basamak Yanıtı');
