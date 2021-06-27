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
po = 20; % Tempo da transição

% Cordenada para desenhar a Letra B
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



% Desenha a Letra B
for i=1:1:po
    fd1=p2.fkine(crt_ik1(i,:)); % Criar matriz da pose encontrada
    j = transpose(fd1.t); % transpor a matriz da posição angular
    plot2(j,'r.'); % Desenha traço a vermelho
    p2.plot(crt_ik1(i,:)); %Mostra movimento do robo
end

for i=1:1:po
    fd2=p2.fkine(crt_ik2(i,:));
    j = transpose(fd2.t);
    plot2(j,'r.'); 
    p2.plot(crt_ik2(i,:)) ;
end

for i=1:1:po
    fd3=p2.fkine(crt_ik3(i,:));
    j = transpose(fd3.t);
    plot2(j,'r.');
    p2.plot(crt_ik3(i,:)) ;
end

for i=1:1:po
    fd4=p2.fkine(crt_ik4(i,:));
    j = transpose(fd4.t); 
    plot2(j,'r.')  
    p2.plot(crt_ik4(i,:)) ;
end

for i=1:1:po
    fd5=p2.fkine(crt_ik5(i,:));
    j = transpose(fd5.t);
    plot2(j,'r.');
    p2.plot(crt_ik5(i,:)) ;
end

for i=1:1:po
    fd6=p2.fkine(crt_ik6(i,:));
    j = transpose(fd6.t);
    plot2(j,'r.');
    p2.plot(crt_ik6(i,:)) ;
end

for i=1:1:po
    fd7=p2.fkine(crt_ik7(i,:));
    j = transpose(fd7.t);
    plot2(j,'r.');
    p2.plot(crt_ik7(i,:)) ;
end

for i=1:1:po
    fd8=p2.fkine(crt_ik8(i,:));
    j = transpose(fd8.t);
    plot2(j,'r.');
    p2.plot(crt_ik8(i,:)) ;
end

for i=1:1:po
    fd9=p2.fkine(crt_ik9(i,:));
    j = transpose(fd9.t);
    plot2(j,'r.');
    p2.plot(crt_ik9(i,:)) ;
end