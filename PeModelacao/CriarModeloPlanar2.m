% Limpar
clear all
close all
clc

%Inicio

qz = [0 0]; % Posição inicial do Braço
qr = [0 pi/2]; % Outra Posição inicia
L(1) = Link([0 0 1 0]); %Primeira junta de rotação
L(2) = Link([0 0 1 0]); %Primeira junta de rotação
p2 = SerialLink(L, 'name', 'P2','manufacturer','UAL'); % Criar o robo com o nome P2

p2.plot(qr);