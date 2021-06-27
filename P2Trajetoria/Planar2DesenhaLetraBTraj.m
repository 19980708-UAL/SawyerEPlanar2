% Limpar
clear all
close all
clc

%Inicio
mdl_planar2 %Load do modelo planar 2
% Cordenadas da base (Espaço cartesiano)
p2.base=transl(0,-1.5,0);

% Pontos desejados no espaço cartesiano (metros)    
hold on    
xlim([-2,2]);   %tamanho do eixo dos x
ylim([-2,2]);   %tamanho do eixo dos y
zlim([-1,1]);   %tamanho do eixo dos z
 view([0 0 1]); %vista sobre o eixo z

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

t=[0:0.1:2];  % Igual a 2 segundos
po=length(t);

mov = jtraj(posicao1, posicao2, t); 
hold on
for i=1:1:po
    fd=p2.fkine(mov(i,:)); % Extrai a matriz da pose encontrada
    j(i,:) = transl(fd); % transpor a matriz da posição angular
    plot2(j,'r.'); % Desenha traço com pontos a vermelho
    p2.plot(mov(i,:)); %Mostra movimento do robo
end

mov = jtraj(posicao2, posicao3, t); 
for i=1:1:po
    fd=p2.fkine(mov(i,:)); % Extrai a matriz da pose encontrada
    j(i,:) = transl(fd); % transpor a matriz da posição angular
    plot2(j,'r.'); % Desenha traço a vermelho
    p2.plot(mov(i,:)); %Mostra movimento do robo
end


mov = jtraj(posicao3, posicao4, t); 
for i=1:1:po
    fd=p2.fkine(mov(i,:)); % Extrai a matriz da pose encontrada
    j(i,:) = transl(fd); % transpor a matriz da posição angular
    plot2(j,'r.'); % Desenha traço a vermelho
    p2.plot(mov(i,:)); %Mostra movimento do robo
end


mov = jtraj(posicao4, posicao5, t); 
for i=1:1:po
    fd=p2.fkine(mov(i,:)); % Extrai a matriz da pose encontrada
    j(i,:) = transl(fd); % transpor a matriz da posição angular
    plot2(j,'r.'); % Desenha traço a vermelho
    p2.plot(mov(i,:)); %Mostra movimento do robo
end


mov = jtraj(posicao5, posicao6, t); 
for i=1:1:po
    fd=p2.fkine(mov(i,:)); % Extrai a matriz da pose encontrada
    j(i,:) = transl(fd); % transpor a matriz da posição angular
    plot2(j,'r.'); % Desenha traço a vermelho
    p2.plot(mov(i,:)); %Mostra movimento do robo
end


mov = jtraj(posicao6, posicao7, t); 
for i=1:1:po
    fd=p2.fkine(mov(i,:)); % Extrai a matriz da pose encontrada
    j(i,:) = transl(fd); % transpor a matriz da posição angular
    plot2(j,'r.'); % Desenha traço a vermelho
    p2.plot(mov(i,:)); %Mostra movimento do robo
end


mov = jtraj(posicao7, posicao8, t); 
for i=1:1:po
    fd=p2.fkine(mov(i,:)); % Extrai a matriz da pose encontrada
    j(i,:) = transl(fd); % transpor a matriz da posição angular
    plot2(j,'r.'); % Desenha traço a vermelho
    p2.plot(mov(i,:)); %Mostra movimento do robo
end


mov = jtraj(posicao8, posicao9, t); 
for i=1:1:po
    fd=p2.fkine(mov(i,:)); % Extrai a matriz da pose encontrada
    j(i,:) = transl(fd); % transpor a matriz da posição angular
    plot2(j,'r.'); % Desenha traço a vermelho
    p2.plot(mov(i,:)); %Mostra movimento do robo
end


hold off