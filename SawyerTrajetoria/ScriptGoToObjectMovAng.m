%Limpar 
close all
clear all
clc

%Inicio
mdl_sawyer  %Load do Modelo Sawyer

t = [0:.05:2]; % Tempo da transição: 1 a 2 com incrementação de 0.5

% Desenha mesa e copo
cupHeight = 0.4; % Altura do Copo
cupRadius = 0.1; % Raio do copo
cupPosition = [-0.6, 0.4, cupHeight/2]; %Posição do copo na mesa

% CrCriar os pontos de vizualização do copo
[X,Y,Z] = cylinder(cupRadius*linspace(0,1,50).^0.125);

% Cordenadas da escala em Z
Z = cupHeight*Z - cupHeight/2;

% Dividir os ponto da posição do copo para variáveis
X = X + cupPosition(1);
Y = Y + cupPosition(2);
Z = Z + cupPosition(3);

% Adiciona o Copo e comfigura a luz 
s = patch(surf2patch(X,Y,Z-0.2));
s.FaceColor = 'blue';
s.FaceLighting = 'gouraud';
s.EdgeAlpha = 0;

% Desloca a luz para qu o copo fique iluminado
lightObj = findobj(gca,'Type','Light');
for i = 1:length(lightObj)
    lightObj(i).Position = [1,1,1];
end

% Criar os pontos de vizualização da mesa
X = [0.7,-0.7,-0.7,0.7];
Y = [1,1,-0.3,-0.3];
Z = [-0.2,-0.2,-0.2,-0.2];

% Adiciona a mesa á figura
patch(X,Y,Z,0.8*[1,1,1]);

% Ajuste da Camera e seus eixos
axis([-0.85, 0.45, -0.45, 0.85, 0, 1.35]);
campos([7.84, 8.17,2.05]); camva(6.9); camtarget([-0.16, 0.18, 0.55]);

posicao1 = [0, -pi/2, 0, 0, 0, 0, 0] % Posição angular inicial (radianos) do Robot Sawyer
posicao2 = [0.4, 0, -pi/2, 0, pi/2-0.2, 0, -0.3] % Posição angular final (radianos) do Robot Sawyer

mov = jtraj(posicao1, posicao2, t); % Trajetória das coordenadas das juntas
 
sawyer.plot(posicao1) % Mostra o Robot na sua posição inicial
sawyer.plot(mov) % Mostrar o Robot a ir ao copo
