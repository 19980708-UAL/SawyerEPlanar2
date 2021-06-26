%Limpar 
close all
clear all
clc

%Inicio
mdl_sawyer  %Load do Modelo Sawyer


posicao1 = [0, -pi/2, 0, 0, 0, 0, 0] % Posição angular inicial (radianos) do Robot Sawyer
posicao2 = [0.4, 0, -pi/2, 0, pi/2-0.2, 0, -0.5] % Posição angular final (radianos) do Robot Sawyer
 
T = sawyer.fkine(posicao2) % matriz de transformação homogênea da posição final(end-effector)
mov = sawyer.ikine(T,'r'); % Encontrou a configuração de cotovelo á direita
qf = jtraj(posicao1,mov,41); % Trajetória das coordenadas das juntas com 41 passos

t = [0:.05:2]; % = a 41 Passos 

figure(1);

for i=1:1:7
subplot(7,1,i)
plot(t,qf(:,i)); % Gráfico da posição angular da junta i variando no tempo
title('Theta');
xlabel('Tempo (s)');
ylabel(strcat({'Junta '},string(i),{' (rad)'}));
end; 