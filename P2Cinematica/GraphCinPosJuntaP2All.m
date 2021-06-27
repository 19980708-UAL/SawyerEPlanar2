% Limpar
clear all
close all
clc

%Inicio
mdl_planar2 %Load do modelo planar 2
% Cordenadas da base (Espaço cartesiano)
p2.base=transl(0,-1.5,0);
po = 20; % numero de passo para desenhar cada traço
% Cordenadas para desenhar a Letra B
% Ponto 1 a 2
pp1 = transl(0,-0.5,0); % posição 1
pp2 = transl(0,0,0); % posição 1
crt_sp1 = ctraj(pp1,pp2,po); % defenir o end-effector das posições
crt_ik1  = p2.ikine(crt_sp1,'mask',[1 1 0 0 0 0]); % Utilização da mascara para apenas encontrar o End-effector do x e y
 
% Ponto 2 a 3
pp3 = transl(0.3,0,0);
crt_sp2 = ctraj(pp2,pp3,po);
crt_ik2  = p2.ikine(crt_sp2,'mask',[1 1 0 0 0 0]);

% Ponto 3 a 4
pp4 = transl(0.3,-0.2,0);
crt_sp3 = ctraj(pp3,pp4,po);
crt_ik3  = p2.ikine(crt_sp3,'mask',[1 1 0 0 0 0]);

% Ponto 4 a 5
pp5 = transl(0.2,-0.25,0);
crt_sp4 = ctraj(pp4,pp5,po);
crt_ik4  = p2.ikine(crt_sp4,'mask',[1 1 0 0 0 0]);

% Ponto 5 a 6
pp6 = transl(0,-0.25,0);
crt_sp5 = ctraj(pp5,pp6,po);
crt_ik5  = p2.ikine(crt_sp5,'mask',[1 1 0 0 0 0]);

% Ponto 6 a 7
pp7 = transl(0,-0.25,0);
crt_sp6 = ctraj(pp6,pp7,po);
crt_ik6  = p2.ikine(crt_sp6,'mask',[1 1 0 0 0 0]);

% Ponto 7 a 8
pp8 = transl(0.3,-0.3,0);
crt_sp7 = ctraj(pp7,pp8,po);
crt_ik7  = p2.ikine(crt_sp7,'mask',[1 1 0 0 0 0]);

% Ponto 8 a 9
pp9 = transl(0.3,-0.5,0);
crt_sp8 = ctraj(pp8,pp9,po);
crt_ik8  = p2.ikine(crt_sp8,'mask',[1 1 0 0 0 0]);

% Ponto 9 a 10
pp10 = transl(0,-0.5,0);
crt_sp9 = ctraj(pp9,pp10,po);
crt_ik9  = p2.ikine(crt_sp9,'mask',[1 1 0 0 0 0]);

t=[0.1:0.1:2];
% desenha os varios grafico de posição de cada traço
figure(1)
for i=1:1:2 % 2 ciclos = 2 juntas de rotação
    subplot(2,1,i)
    plot(t,crt_ik1(:,i)); % Gráfico da posição angular da junta i variando no tempo
    title('Traço 1');
    xlabel('Tempo (s)');
    ylabel(strcat({'Junta '},string(i),{' (rad)'}));
end
figure(2)
for i=1:1:2 % 2 ciclos = 2 juntas de rotação
    subplot(2,1,i)
    plot(t,crt_ik2(:,i)); % Gráfico da posição angular da junta i variando no tempo
    title('Traço 2');
    xlabel('Tempo (s)');
    ylabel(strcat({'Junta '},string(i),{' (rad)'}));
end
figure(3)
for i=1:1:2 % 2 ciclos = 2 juntas de rotação
    subplot(2,1,i)
    plot(t,crt_ik3(:,i)); % Gráfico da posição angular da junta i variando no tempo
    title('Traço 3');
    xlabel('Tempo (s)');
    ylabel(strcat({'Junta '},string(i),{' (rad)'}));
end
figure(4)
for i=1:1:2 % 2 ciclos = 2 juntas de rotação
    subplot(2,1,i)
    plot(t,crt_ik4(:,i)); % Gráfico da posição angular da junta i variando no tempo
    title('Traço 4');
    xlabel('Tempo (s)');
    ylabel(strcat({'Junta '},string(i),{' (rad)'}));
end
figure(5)
for i=1:1:2 % 2 ciclos = 2 juntas de rotação
    subplot(2,1,i)
    plot(t,crt_ik5(:,i)); % Gráfico da posição angular da junta i variando no tempo
    title('Traço 5');
    xlabel('Tempo (s)');
    ylabel(strcat({'Junta '},string(i),{' (rad)'}));
end
figure(6)
for i=1:1:2 % 2 ciclos = 2 juntas de rotação
    subplot(2,1,i)
    plot(t,crt_ik6(:,i)); % Gráfico da posição angular da junta i variando no tempo
    title('Traço 6');
    xlabel('Tempo (s)');
    ylabel(strcat({'Junta '},string(i),{' (rad)'}));
end
figure(7)
for i=1:1:2 % 2 ciclos = 2 juntas de rotação
    subplot(2,1,i)
    plot(t,crt_ik7(:,i)); % Gráfico da posição angular da junta i variando no tempo
    title('Traço 7');
    xlabel('Tempo (s)');
    ylabel(strcat({'Junta '},string(i),{' (rad)'}));
end
figure(8)
for i=1:1:2 % 2 ciclos = 2 juntas de rotação
    subplot(2,1,i)
    plot(t,crt_ik8(:,i)); % Gráfico da posição angular da junta i variando no tempo
    title('Traço 8');
    xlabel('Tempo (s)');
    ylabel(strcat({'Junta '},string(i),{' (rad)'}));
end
figure(9)
for i=1:1:2 % 2 ciclos = 2 juntas de rotação
    subplot(2,1,i)
    plot(t,crt_ik9(:,i)); % Gráfico da posição angular da junta i variando no tempo
    title('Traço 9');
    xlabel('Tempo (s)');
    ylabel(strcat({'Junta '},string(i),{' (rad)'}));
end