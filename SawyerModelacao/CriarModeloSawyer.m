% Limpar
close all
clear all
clc

qz = zeros(1,7) % Posição inicial do Braço
qr = [0, -pi/2, 0, 0, 0, 0, 0] % Outra Posição inicial como no exemplo da trajectória

% Criar as 7 junções de rotação com a função revolute para o Sawyer
L(1) = Revolute('d', 0.081, 'a', 0.317, 'alpha', -pi/2) 
L(2) = Revolute('d', 0, 'a', 0.1925, 'alpha', -pi/2)
L(3) = Revolute('d', 0, 'a', 0.4, 'alpha', -pi/2)
L(4) = Revolute('d', 0, 'a', 0.1685, 'alpha', -pi/2)
L(5) = Revolute('d', 0, 'a', 0.4, 'alpha', -pi/2)
L(6) = Revolute('d', 0, 'a', 0.1363, 'alpha', -pi/2)
L(7) = Revolute('d', 0, 'a', 0.13375, 'alpha', 0)

sawyer = SerialLink(L, 'name', 'Sawyer','manufacturer','UAL') % Criar o Robot com nome de Sawyer
figure(1)
sawyer.plot(qr);