%Limpar 
close all
clear all
clc

%Inicio
mdl_sawyer  %Load do Modelo Sawyer

t = [0:.05:2]; % Tempo da transição: 1 a 2 com incrementação de 0.5

posicao1 = [0, -pi/2, 0, 0, 0, 0, 0] % Posição angular inicial (radianos) do Robot Sawyer
posicao2 = [0.4, 0, -pi/2, 0, pi/2-0.2, 0, -0.3] % Posição angular s (radianos) do Robot Sawyer

mov = jtraj(posicao1, posicao2, t); % Trajetória das coordenadas das juntas

figure(1);

for i=1:1:7
    subplot(7,1,i)
    plot(t,mov(:,i)); % Gráfico da posição angular da junta i variando no tempo
    title('Theta');
    xlabel('Tempo (s)');
    ylabel(strcat({'Junta '},string(i),{' (rad)'}));
end;