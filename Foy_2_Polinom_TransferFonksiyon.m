%% Föy - Polinomların Oluşturulması
clc; clear;

% p(s) = 2s - 4 + s^4 --> p(s) = s^4 + 0s^3 + 0s^2 + 2s - 4
p = [1 0 0 2 -4]  % Polinom tanıtma

%% Föy - Transfer Fonksiyon Modelinin Oluşturulması
% G(s) = Y(s)/U(s)
Y = [1 2];         % Pay polinomu  : s + 2
U = [1 3 2];       % Payda polinomu : s^2 + 3s + 2
G = tf(Y, U)      % Transfer fonksiyon oluşturma
