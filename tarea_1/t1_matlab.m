%% Tarea 1: Sistemas de primer orden
% H(s) = 1/(tao*s + 1)
clc;
clear;

%% Analisis usando H(s)
% Valor de la resistencia
R = 1000;
% Valor del capacitor
C = 47 * 10^(-6);
% Valor de la constante de tiempo del sistema
tao = R*C;
% Tiempo en alcanzar el valor final
tmax = 6*tao;
% Declaramos un vector de tiempo
t = 0:0.01:tmax;
% Evaluamos la funcion y(t)
yt = exp(-t/tao);
% Grafica de la funcion y(t)
figure(1);
plot(t,yt);
xlabel('Tiempo (seg)')
title("Respuesta al escalon unitario")

%% Analisis con H(s)
% Declaramos arreglo con coeficientes del numerador de H(s)
num = [tao, 0];
% Declaramos arreglo con coeficientes del denominador de H(s)
den = [tao, 1];
% Declaramos funcion de transferencia
Hs = tf(num,den);
% Obtenemos la respuesta al escalon unitario
figure(2)
step(Hs)