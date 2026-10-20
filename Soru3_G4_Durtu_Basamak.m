%% Soru 3 - G4(s) Sisteminin 15 Saniyelik Dürtü ve Basamak Yanıtları
clc; clear; close all;

G4 = tf([2 1 0 6], [1 0 0 14 5 2])  % G4(s)
Tfinal = 15;                            % Simülasyon süresi (s)

figure('Name', 'Soru 3 - G4(s)');
subplot(1,2,1); impulse(G4, Tfinal); grid on;   % Dürtü yanıtı
title('G4(s) Dürtü Yanıtı');
subplot(1,2,2); step(G4, Tfinal);    grid on;   % Basamak yanıtı
title('G4(s) Basamak Yanıtı');
