%% Soru 2 - Transfer Fonksiyonlarının Oluşturulması
clc; clear;

% a) G1(s) = -7 / (s + 25)
G1 = tf(-7, [1 25])

% b) G2(s) = 3s / s^2
G2 = tf([3 0], [1 0 0])

% c) G3(s) = (s^2 - 1) / (s^3 + 8s^2)
G3 = tf([1 0 -1], [1 8 0 0])

% d) G4(s) = (2s^3 + s^2 + 6) / (s^5 + 14s^2 + 5s + 2)
G4 = tf([2 1 0 6], [1 0 0 14 5 2])

% e) G5(s) = (8s + 20) / (s^4 + 6s^3 + 13s^2 + 12s + 4) (pay derecesi paydadan 3 küçük)
G5 = tf([8 20], [1 6 13 12 4])
