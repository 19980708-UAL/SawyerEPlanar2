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

mov = jtraj(posicao1, posicao2, t); 
figure(1) 
for i=1:1:2 % 2 ciclos = 2 juntas de rotação 
    subplot(2,1,i) 
    plot(t,mov(:,i)); % Gráfico da posição angular da junta i variando no tempo 
    title('Traço 1'); 
    xlabel('Tempo (s)'); 
    ylabel(strcat({'Junta '},string(i),{' (rad)'})); 
end

mov = jtraj(posicao2, posicao3, t); 
figure(2) 
for i=1:1:2 % 2 ciclos = 2 juntas de rotação 
    subplot(2,1,i) 
    plot(t,mov(:,i)); % Gráfico da posição angular da junta i variando no tempo 
    title('Traço 2'); 
    xlabel('Tempo (s)'); 
    ylabel(strcat({'Junta '},string(i),{' (rad)'})); 
end

mov = jtraj(posicao3, posicao4, t); 
figure(3) 
for i=1:1:2 % 2 ciclos = 2 juntas de rotação 
    subplot(2,1,i) 
    plot(t,mov(:,i)); % Gráfico da posição angular da junta i variando no tempo 
    title('Traço 3'); 
    xlabel('Tempo (s)'); 
    ylabel(strcat({'Junta '},string(i),{' (rad)'})); 
end

mov = jtraj(posicao4, posicao5, t); 
figure(4) 
for i=1:1:2 % 2 ciclos = 2 juntas de rotação 
    subplot(2,1,i) 
    plot(t,mov(:,i)); % Gráfico da posição angular da junta i variando no tempo 
    title('Traço 4'); 
    xlabel('Tempo (s)'); 
    ylabel(strcat({'Junta '},string(i),{' (rad)'})); 
end

mov = jtraj(posicao5, posicao6, t); 
figure(5) 
for i=1:1:2 % 2 ciclos = 2 juntas de rotação 
    subplot(2,1,i) 
    plot(t,mov(:,i)); % Gráfico da posição angular da junta i variando no tempo 
    title('Traço 5'); 
    xlabel('Tempo (s)'); 
    ylabel(strcat({'Junta '},string(i),{' (rad)'})); 
end

mov = jtraj(posicao6, posicao7, t); 
figure(6) 
for i=1:1:2 % 2 ciclos = 2 juntas de rotação 
    subplot(2,1,i) 
    plot(t,mov(:,i)); % Gráfico da posição angular da junta i variando no tempo 
    title('Traço 6'); 
    xlabel('Tempo (s)'); 
    ylabel(strcat({'Junta '},string(i),{' (rad)'})); 
end

mov = jtraj(posicao7, posicao8, t); 
figure(7) 
for i=1:1:2 % 2 ciclos = 2 juntas de rotação 
    subplot(2,1,i) 
    plot(t,mov(:,i)); % Gráfico da posição angular da junta i variando no tempo 
    title('Traço 7'); 
    xlabel('Tempo (s)'); 
    ylabel(strcat({'Junta '},string(i),{' (rad)'})); 
end

mov = jtraj(posicao8, posicao9, t); 
figure(8) 
for i=1:1:2 % 2 ciclos = 2 juntas de rotação 
    subplot(2,1,i) 
    plot(t,mov(:,i)); % Gráfico da posição angular da junta i variando no tempo 
    title('Traço 8'); 
    xlabel('Tempo (s)'); 
    ylabel(strcat({'Junta '},string(i),{' (rad)'})); 
end