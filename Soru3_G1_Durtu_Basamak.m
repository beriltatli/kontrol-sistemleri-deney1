%% Soru 3 - G1(s) Sisteminin 15 Saniyelik Dürtü ve Basamak Yanıtları
clc; clear; close all;

G1 = tf(-7, [1 25])  % G1(s)
Tfinal = 15;                            % Simülasyon süresi (s)

figure('Name', 'Soru 3 - G1(s)');
subplot(1,2,1); impulse(G1, Tfinal); grid on;   % Dürtü yanıtı
title('G1(s) Dürtü Yanıtı');
subplot(1,2,2); step(G1, Tfinal);    grid on;   % Basamak yanıtı
title('G1(s) Basamak Yanıtı');
