clc;
close all;
clear all;
x=[1,2,1,1]; %first signal 0r input signal
h=[1,-1,1,-1]; %second signal
N1=length(x);
N2=length(h);
X=[x,zeros(1,N2)]; %padding of N2 zeros
H=[h,zeros(1,N1)]; %padding of N1 zeros
 for i=1:N1+N2-1
 y(i)=0;
 for j=1:N1
 if(i-j+1>0)
 y(i)=y(i)+X(j)*H(i-j+1);
 else
 end 

 end
 end
 stem(y);
 ylabel('y[n]');
 xlabel('------>n');
 title('convolution of two signal'); 