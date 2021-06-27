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

% Determinar as cordenada para desenhar ROBOT

% Letra R
%Ponto 1 a 2 
pp1 = transl(-1,-0.5,0); %Posição inicial
pp2 = transl(-1,0,0);    %Posição Final
crt_sp1 = ctraj(pp1,pp2,po);  % Trajetória das coordenadas das juntas
crt_ik1  = p2.ikine(crt_sp1,'mask',[1 1 0 0 0 0]); % ??

%Ponto 2 a 3
pp3 = transl(-0.7,0,0);
crt_sp2 = ctraj(pp2,pp3,po);
crt_ik2  = p2.ikine(crt_sp2,'mask',[1 1 0 0 0 0]);

%Ponto 3 a 4
pp4 = transl(-0.7,-0.2,0);
crt_sp3 = ctraj(pp3,pp4,po);
crt_ik3  = p2.ikine(crt_sp3,'mask',[1 1 0 0 0 0]);

% Ponto 4 a 5
pp5 = transl(-1,-0.2,0);
crt_sp4 = ctraj(pp4,pp5,po);
crt_ik4  = p2.ikine(crt_sp4,'mask',[1 1 0 0 0 0]);

% Ponto 5 a 6
pp6 = transl(-0.7,-0.5,0);
crt_sp5 = ctraj(pp5,pp6,po);
crt_ik5  = p2.ikine(crt_sp5,'mask',[1 1 0 0 0 0]);

% Ponto 6 a 7
pp7 = transl(-0.5,-0.5,0);
crt_sp6 = ctraj(pp6,pp7,po);
crt_ik6  = p2.ikine(crt_sp6,'mask',[1 1 0 0 0 0]);

% Letra O
% Ponto 7 a 8
pp8 = transl(-0.5,0,0);
crt_sp7 = ctraj(pp7,pp8,po);
crt_ik7  = p2.ikine(crt_sp7,'mask',[1 1 0 0 0 0]);

% Ponto 8 a 9
pp9 = transl(-0.2,0,0);
crt_sp8 = ctraj(pp8,pp9,po);
crt_ik8  = p2.ikine(crt_sp8,'mask',[1 1 0 0 0 0]);

% Ponto 9 a 10
pp10 = transl(-0.2,-0.5,0);
crt_sp9 = ctraj(pp9,pp10,po);
crt_ik9  = p2.ikine(crt_sp9,'mask',[1 1 0 0 0 0]);

% Ponto 10 a 11
 pp11 = transl(-0.5,-0.5,0);
 crt_sp10 = ctraj(pp10,pp11,po);
 crt_ik10  = p2.ikine(crt_sp10,'mask',[1 1 0 0 0 0]);
 
% Ponto 11 a 12
pp12 = transl(0,-0.5,0);
crt_sp11 = ctraj(pp11,pp12,po);
crt_ik11  = p2.ikine(crt_sp11,'mask',[1 1 0 0 0 0]);

% Letra B
% Ponto 12 a 13
pp13 = transl(0,0,0);
crt_sp12 = ctraj(pp12,pp13,po);
crt_ik12  = p2.ikine(crt_sp12,'mask',[1 1 0 0 0 0]);
 
% Ponto 13 a 14
pp14 = transl(0.3,0,0);
crt_sp13 = ctraj(pp13,pp14,po);
crt_ik13  = p2.ikine(crt_sp13,'mask',[1 1 0 0 0 0]);

% Ponto 14 a 15
pp15 = transl(0.3,-0.2,0);
crt_sp14 = ctraj(pp14,pp15,po);
crt_ik14  = p2.ikine(crt_sp14,'mask',[1 1 0 0 0 0]);

% Ponto 15 a 16
pp16 = transl(0.2,-0.25,0);
crt_sp15 = ctraj(pp15,pp16,po);
crt_ik15  = p2.ikine(crt_sp15,'mask',[1 1 0 0 0 0]);

% Ponto 16 a 17
pp17 = transl(0,-0.25,0);
crt_sp16 = ctraj(pp16,pp17,po);
crt_ik16  = p2.ikine(crt_sp16,'mask',[1 1 0 0 0 0]);

% Ponto 17 a 18
pp18 = transl(0,-0.25,0);
crt_sp17 = ctraj(pp17,pp18,po);
crt_ik17  = p2.ikine(crt_sp17,'mask',[1 1 0 0 0 0]);

% Ponto 18 a 19
pp19 = transl(0.3,-0.3,0);
crt_sp18 = ctraj(pp18,pp19,po);
crt_ik18  = p2.ikine(crt_sp18,'mask',[1 1 0 0 0 0]);

% Ponto 19 a 20
pp20 = transl(0.3,-0.5,0);
crt_sp19 = ctraj(pp19,pp20,po);
crt_ik19  = p2.ikine(crt_sp19,'mask',[1 1 0 0 0 0]);

% Ponto 20 a 21
pp21 = transl(0,-0.5,0);
crt_sp20 = ctraj(pp20,pp21,po);
crt_ik20  = p2.ikine(crt_sp20,'mask',[1 1 0 0 0 0]);

% Ponto 21 a 22
pp22 = transl(0.5,-0.5,0);
crt_sp21 = ctraj(pp21,pp22,po);
crt_ik21  = p2.ikine(crt_sp21,'mask',[1 1 0 0 0 0]);

% Letra O
% Ponto 22 a 23
pp23 = transl(0.5,0,0);
crt_sp22 = ctraj(pp22,pp23,po);
crt_ik22  = p2.ikine(crt_sp22,'mask',[1 1 0 0 0 0]);

% Ponto 23 a 24
pp24 = transl(0.8,0,0);
crt_sp23 = ctraj(pp23,pp24,po);
crt_ik23  = p2.ikine(crt_sp23,'mask',[1 1 0 0 0 0]);

% Ponto 24 a 25
pp25 = transl(0.8,-0.5,0);
crt_sp24 = ctraj(pp24,pp25,po);
crt_ik24  = p2.ikine(crt_sp24,'mask',[1 1 0 0 0 0]);

% Ponto 25 a 26mat
pp26 = transl(0.5,-0.5,0);
crt_sp25 = ctraj(pp25,pp26,po);
crt_ik25  = p2.ikine(crt_sp25,'mask',[1 1 0 0 0 0]);

% Ponto 26 a 27
pp27 = transl(1,0,0);
crt_sp26 = ctraj(pp26,pp27,po);
crt_ik26  = p2.ikine(crt_sp26,'mask',[1 1 0 0 0 0]);

% Letra T
% Ponto 27 a 28
pp28 = transl(1.3,0,0);
crt_sp27 = ctraj(pp27,pp28,po);
crt_ik27  = p2.ikine(crt_sp27,'mask',[1 1 0 0 0 0]);

% Ponto 28 a 29
pp29 = transl(1.15,0,0);
crt_sp28 = ctraj(pp28,pp29,po);
crt_ik28  = p2.ikine(crt_sp28,'mask',[1 1 0 0 0 0]);

% Ponto 29 a 30
pp30 = transl(1.15,-0.5,0);
crt_sp29 = ctraj(pp29,pp30,po);
crt_ik29  = p2.ikine(crt_sp29,'mask',[1 1 0 0 0 0]);

% Ponto 30 a 31
pp31 = transl(-1,-0.7,0);
crt_sp30 = ctraj(pp30,pp31,po);
crt_ik30  = p2.ikine(crt_sp30,'mask',[1 1 0 0 0 0]);

% Sublina a Palavra
% Ponto 31 a 32
pp32 = transl(1.3,-0.7,0);
crt_sp31 = ctraj(pp31,pp32,po);
crt_ik31  = p2.ikine(crt_sp31,'mask',[1 1 0 0 0 0]);

% Desenhar as letras com as transições acima defenidas
% Letra R
for i=1:1:po
    fd1=p2.fkine(crt_ik1(i,:));
     j = transpose(fd1.t);
    plot2(j,'r.')    ;
     p2.plot(crt_ik1(i,:)) ;
end

for i=1:1:po
    fd2=p2.fkine(crt_ik2(i,:));
     j = transpose(fd2.t);
    plot2(j,'r.')    ;
     p2.plot(crt_ik2(i,:)) ;
end

for i=1:1:po
    fd3=p2.fkine(crt_ik3(i,:));
     j = transpose(fd3.t);
    plot2(j,'r.')    ;
     p2.plot(crt_ik3(i,:)) ;
end

for i=1:1:po
    fd4=p2.fkine(crt_ik4(i,:));
     j = transpose(fd4.t);
    plot2(j,'r.');
     p2.plot(crt_ik4(i,:)) ;
end

for i=1:1:po
    fd5=p2.fkine(crt_ik5(i,:));
     j = transpose(fd5.t);
     plot2(j,'r.');
     p2.plot(crt_ik5(i,:)) ;
end

% Espaço
for i=1:1:po
    fd6=p2.fkine(crt_ik6(i,:));
     j = transpose(fd6.t);
    % plot2(j,'r.');
     p2.plot(crt_ik6(i,:));
end

% Letra O
for i=1:1:po
    fd7=p2.fkine(crt_ik7(i,:));
     j = transpose(fd7.t);
     plot2(j,'r.')    ;
     p2.plot(crt_ik7(i,:)) ;
end

for i=1:1:po
    fd8=p2.fkine(crt_ik8(i,:));
     j = transpose(fd8.t);
     plot2(j,'r.')    ;
     p2.plot(crt_ik8(i,:)) ;
end

for i=1:1:po
    fd9=p2.fkine(crt_ik9(i,:));
    j = transpose(fd9.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik9(i,:)) ;
end

for i=1:1:po
    fd10=p2.fkine(crt_ik10(i,:));
    j = transpose(fd10.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik10(i,:)) ;
end

% Não desenha posiciona o braço para começer novo Letra
p2.plot(crt_ik11)

% Letra B
for i=1:1:po
    fd12=p2.fkine(crt_ik12(i,:));
    j = transpose(fd12.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik12(i,:)) ;
end

for i=1:1:po
    fd13=p2.fkine(crt_ik13(i,:));
    j = transpose(fd13.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik13(i,:)) ;
end

for i=1:1:po
    fd14=p2.fkine(crt_ik14(i,:));
    j = transpose(fd14.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik14(i,:)) ;
end

for i=1:1:po
    fd15=p2.fkine(crt_ik15(i,:));
    j = transpose(fd15.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik15(i,:)) ;
end

for i=1:1:po
    fd16=p2.fkine(crt_ik16(i,:));
    j = transpose(fd16.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik16(i,:)) ;
end

for i=1:1:po
    fd17=p2.fkine(crt_ik17(i,:));
    j = transpose(fd17.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik17(i,:)) ;
end

for i=1:1:po
    fd18=p2.fkine(crt_ik18(i,:));
    j = transpose(fd18.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik18(i,:)) ;
end

for i=1:1:po
    fd19=p2.fkine(crt_ik19(i,:));
    j = transpose(fd19.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik19(i,:)) ;
end

for i=1:1:po
    fd20=p2.fkine(crt_ik20(i,:));
    j = transpose(fd20.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik20(i,:)) ;
end

% Não desenha posiciona o braço para começer novo Letra
p2.plot(crt_ik21) ;

% Letra O
for i=1:1:po
    fd22=p2.fkine(crt_ik22(i,:));
    j = transpose(fd22.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik22(i,:)) ;
end

for i=1:1:po
    fd23=p2.fkine(crt_ik23(i,:));
    j = transpose(fd23.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik23(i,:)) ;
end

for i=1:1:po
    fd24=p2.fkine(crt_ik24(i,:));
    j = transpose(fd24.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik24(i,:)) ;
end

for i=1:1:po
    fd25=p2.fkine(crt_ik25(i,:));
    j = transpose(fd25.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik25(i,:)) ;
end

% Não desenha posiciona o braço para começer novo Letra
p2.plot(crt_ik26) ;

% Letra T
for i=1:1:po
    fd27=p2.fkine(crt_ik27(i,:));
    j = transpose(fd27.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik27(i,:)) ;
end

% Não desenha posiciona o braço para começer novo Letra
p2.plot(crt_ik28) ;

for i=1:1:po
    fd29=p2.fkine(crt_ik29(i,:));
    j = transpose(fd29.t);
    plot2(j,'r.')    ;
    p2.plot(crt_ik29(i,:)) ;
end

% Não desenha posiciona o braço para começer novo Letra
p2.plot(crt_ik30) ;

% Sublinha a Palavra ROBOT
for i=1:1:po
    fd31=p2.fkine(crt_ik31(i,:));
    j = transpose(fd31.t);
    plot2(j,'g.')    ;
    p2.plot(crt_ik31(i,:)) ;
end