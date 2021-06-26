%Limpar 
close all
clear all
clc

%Inicio
mdl_sawyer  %Load do Modelo Sawyer

t = [0:.05:2]; % Tempo da transição: 1 a 2 com incrementação de 0.5

posicao1 = [0, -pi/2, 0, 0, 0, 0, 0] % Posição angular inicial (radianos) do Robot Sawyer
posicao2 = [0.4, 0, -pi/2, 0, pi/2-0.2, 0, -0.3] % Posição angular final (radianos) do Robot Sawyer

[q, dq, ddq] = jtraj(posicao1, posicao2, t); % Trajetória das coordenadas das juntas

for i=1:1:7
    figure(i);

    subplot(3,1,1)
    plot(t,q(:,i)); % Gráfico da posição angular
    title('Theta');
    xlabel('Tempo(s)');
    ylabel(strcat({'Junta '},string(i),{'  (rad)'}));

    subplot(3,1,2)
    plot(t,dq(:,i)); % Gráfico da velocidade angular
    title('Velocidade')
    xlabel('Tempo (s)');
    ylabel(strcat({'Junta '},string(i),{'  vel(rad/s)'}))

    subplot(3,1,3)
    plot(t,ddq(:,i)); % Gráfico da aceleração angular
    title('Aceleração')
    xlabel('Tempo (s)');
    ylabel(strcat({'Junta '},string(i),{' aceler(rad/s2)'}))
end