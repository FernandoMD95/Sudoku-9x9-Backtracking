%Autor: Fernando Medina Delgado
%Asignatura: Sistema Inteligentes (2018-2019)
%Algoritmo: Backtracking

close all;
clear all;
clc;

tic;
%Matriz de adyacencia
G=[0 0 1 2 0 3 0 0 6
   0 5 0 0 0 6 0 0 7
   0 0 0 4 0 7 0 0 1
   0 0 5 7 0 0 8 0 2
   8 1 2 6 0 4 7 0 5
   7 0 0 0 0 5 3 0 4
   0 0 0 3 0 0 1 0 9
   2 0 0 0 4 0 5 0 0
   0 4 0 0 7 0 6 2 3];

%Variables
m = length(G).^2;   %Numero de posiciones de la matriz
k=1;                %Posicion inicial
G = resolverSudoku(1,m,G);
disp('SUDOKU 9X9 RESUELTO:');
disp(G);
disp(['Time:' num2str(toc) 's']);
