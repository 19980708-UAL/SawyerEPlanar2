% Limpar
clear all
close all
clc

%Inicio
mdl_planar2 %Load do modelo planar 2
% Cordenadas da base (Espaço cartesiano)
p2.base=transl(0,-1.5,0);

% Cordenadas de rotação das juntas para a Letra B
posicao1=[0.5236 2.0944];
posicao2=[0.8481 1.4455];
posicao3=[0.6734 1.4];
posicao4=[0.5035 1.6810];
posicao5=[0.5267 1.7709];
posicao6=[0.6751 1.7913];
posicao7=[0.4218 1.8080];
posicao8=[0.2578 2.0432];
posicao9=[0.5236 2.0944];

t=[0:0.1:2]; % tempo vai de 0 a 2 com incrementação de 0.1

%Traço 1
mov = jtraj(posicao1, posicao2, t); 
H = fkine(p2,mov); % Matriz transformação homogênea 
Hmat= H.double; % Converte SE3 para Matriz 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x
figure(1); 
subplot(3,1,1) 
s = 'Gráfico da coordenada x variando no tempo (Traço 1)'; 
plot(t,squeeze(Hmat(1,1,:))); 
xlabel('Tempo (s)'); 
ylabel('x (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos y
subplot(3,1,2) 
s = 'Gráfico da coordenada y variando no tempo (Traço 1)'; 
plot(t,squeeze(Hmat(2,1,:))); 
xlabel('Tempo (s)'); 
ylabel('y (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x e y
subplot(3,1,3) 
s = 'Gráfico das coordenadas x e y (Traço 1)'; 
plot(squeeze(Hmat(1,1,:)),squeeze(Hmat(2,1,:))); 
xlabel('x (m)'); 
ylabel('y (m)'); 
title(s);

%Traço 2
mov = jtraj(posicao2, posicao3, t); 
H = fkine(p2,mov); % Matriz transformação homogênea 
Hmat= H.double; % Converte SE3 para Matriz 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x
figure(2); 
subplot(3,1,1) 
s = 'Gráfico da coordenada x variando no tempo (Traço 2)'; 
plot(t,squeeze(Hmat(1,1,:))); 
xlabel('Tempo (s)'); 
ylabel('x (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos y
subplot(3,1,2) 
s = 'Gráfico da coordenada y variando no tempo (Traço 2)'; 
plot(t,squeeze(Hmat(2,1,:))); 
xlabel('Tempo (s)'); 
ylabel('y (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x e y
subplot(3,1,3) 
s = 'Gráfico das coordenadas x e y (Traço 2)'; 
plot(squeeze(Hmat(1,1,:)),squeeze(Hmat(2,1,:))); 
xlabel('x (m)'); 
ylabel('y (m)'); 
title(s);

%Traço 3
mov = jtraj(posicao3, posicao4, t); 
H = fkine(p2,mov); % Matriz transformação homogênea 
Hmat= H.double; % Converte SE3 para Matriz 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x
figure(3); 
subplot(3,1,1) 
s = 'Gráfico da coordenada x variando no tempo (Traço 3)'; 
plot(t,squeeze(Hmat(1,1,:))); 
xlabel('Tempo (s)'); 
ylabel('x (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos y
subplot(3,1,2) 
s = 'Gráfico da coordenada y variando no tempo (Traço 3)'; 
plot(t,squeeze(Hmat(2,1,:))); 
xlabel('Tempo (s)'); 
ylabel('y (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x e y
subplot(3,1,3) 
s = 'Gráfico das coordenadas x e y (Traço 3)'; 
plot(squeeze(Hmat(1,1,:)),squeeze(Hmat(2,1,:))); 
xlabel('x (m)'); 
ylabel('y (m)'); 
title(s);

%Traço 4
mov = jtraj(posicao4, posicao5, t); 
H = fkine(p2,mov); % Matriz transformação homogênea 
Hmat= H.double; % Converte SE3 para Matriz 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x
figure(4); 
subplot(3,1,1) 
s = 'Gráfico da coordenada x variando no tempo (Traço 4)'; 
plot(t,squeeze(Hmat(1,1,:))); 
xlabel('Tempo (s)'); 
ylabel('x (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos y
subplot(3,1,2) 
s = 'Gráfico da coordenada y variando no tempo (Traço 4)'; 
plot(t,squeeze(Hmat(2,1,:))); 
xlabel('Tempo (s)'); 
ylabel('y (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x e y
subplot(3,1,3) 
s = 'Gráfico das coordenadas x e y (Traço 4)'; 
plot(squeeze(Hmat(1,1,:)),squeeze(Hmat(2,1,:))); 
xlabel('x (m)'); 
ylabel('y (m)'); 
title(s);

%Traço 5
mov = jtraj(posicao5, posicao6, t); 
H = fkine(p2,mov); % Matriz transformação homogênea 
Hmat= H.double; % Converte SE3 para Matriz 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x
figure(5); 
subplot(3,1,1) 
s = 'Gráfico da coordenada x variando no tempo (Traço 5)'; 
plot(t,squeeze(Hmat(1,1,:))); 
xlabel('Tempo (s)'); 
ylabel('x (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos y
subplot(3,1,2) 
s = 'Gráfico da coordenada y variando no tempo (Traço 5)'; 
plot(t,squeeze(Hmat(2,1,:))); 
xlabel('Tempo (s)'); 
ylabel('y (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x e y
subplot(3,1,3) 
s = 'Gráfico das coordenadas x e y (Traço 5)'; 
plot(squeeze(Hmat(1,1,:)),squeeze(Hmat(2,1,:))); 
xlabel('x (m)'); 
ylabel('y (m)'); 
title(s);

%Traço 6
mov = jtraj(posicao6, posicao7, t); 
H = fkine(p2,mov); % Matriz transformação homogênea 
Hmat= H.double; % Converte SE3 para Matriz 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x
figure(6); 
subplot(3,1,1) 
s = 'Gráfico da coordenada x variando no tempo (Traço 6)'; 
plot(t,squeeze(Hmat(1,1,:))); 
xlabel('Tempo (s)'); 
ylabel('x (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos y
subplot(3,1,2) 
s = 'Gráfico da coordenada y variando no tempo (Traço 6)'; 
plot(t,squeeze(Hmat(2,1,:))); 
xlabel('Tempo (s)'); 
ylabel('y (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x e y
subplot(3,1,3) 
s = 'Gráfico das coordenadas x e y (Traço 6)'; 
plot(squeeze(Hmat(1,1,:)),squeeze(Hmat(2,1,:))); 
xlabel('x (m)'); 
ylabel('y (m)'); 
title(s);

%Traço 7
mov = jtraj(posicao7, posicao8, t); 
H = fkine(p2,mov); % Matriz transformação homogênea 
Hmat= H.double; % Converte SE3 para Matriz 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x
figure(7); 
subplot(3,1,1) 
s = 'Gráfico da coordenada x variando no tempo (Traço 7)'; 
plot(t,squeeze(Hmat(1,1,:))); 
xlabel('Tempo (s)'); 
ylabel('x (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos y
subplot(3,1,2) 
s = 'Gráfico da coordenada y variando no tempo (Traço 7)'; 
plot(t,squeeze(Hmat(2,1,:))); 
xlabel('Tempo (s)'); 
ylabel('y (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x e y
subplot(3,1,3) 
s = 'Gráfico das coordenadas x e y (Traço 7)'; 
plot(squeeze(Hmat(1,1,:)),squeeze(Hmat(2,1,:))); 
xlabel('x (m)'); 
ylabel('y (m)'); 
title(s);

%Traço 8
mov = jtraj(posicao8, posicao9, t); 
H = fkine(p2,mov); % Matriz transformação homogênea 
Hmat= H.double; % Converte SE3 para Matriz 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x
figure(8); 
subplot(3,1,1) 
s = 'Gráfico da coordenada x variando no tempo (Traço 8)'; 
plot(t,squeeze(Hmat(1,1,:))); 
xlabel('Tempo (s)'); 
ylabel('x (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos y
subplot(3,1,2) 
s = 'Gráfico da coordenada y variando no tempo (Traço 8)'; 
plot(t,squeeze(Hmat(2,1,:))); 
xlabel('Tempo (s)'); 
ylabel('y (m)'); 
title(s); 

%desenha os gráficos  posição angular, velocidade angular e acelaração angular - Eixo dos x e y
subplot(3,1,3) 
s = 'Gráfico das coordenadas x e y (Traço 8)'; 
plot(squeeze(Hmat(1,1,:)),squeeze(Hmat(2,1,:))); 
xlabel('x (m)'); 
ylabel('y (m)'); 
title(s);