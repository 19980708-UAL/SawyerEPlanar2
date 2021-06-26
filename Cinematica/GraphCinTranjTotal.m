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

H = fkine(sawyer,qf); % Matriz transformação homogênea 
Hmat= H.double; % Converte SE3 para Matriz 
figure(1); 
subplot(3,1,1) 
s = 'Gráfico da coordenada x variando no tempo'; 
plot(t,squeeze(Hmat(1,1,:))); 
xlabel('Tempo (s)'); 
ylabel('x (m)'); 
title(s); 
subplot(3,1,2) 
s = 'Gráfico da coordenada y variando no tempo'; 
plot(t,squeeze(Hmat(2,1,:))); 
xlabel('Tempo (s)'); 
ylabel('y (m)'); 
title(s); 
subplot(3,1,3) 
s = 'Gráfico da coordenada z variando no tempo'; 
plot(t,squeeze(Hmat(3,1,:))); 
xlabel('Tempo (s)'); 
ylabel('z (m)'); 
title(s); 

figure(2); 
s = 'Gráfico das coordenadas x,y e z'; 
plot3(squeeze(Hmat(1,1,:)),squeeze(Hmat(2,1,:)),squeeze(Hmat(3,1,:))); 
xlabel('x (m)'); 
ylabel('y (m)'); 
zlabel('z (m)'); 
title(s);