clc;
close all;
clear all;

x = [1,2,1,1];
h=[1 1 -1 -1];
l1=length(x);
l2=length(h);
N=max(l1,l2);

X=[x zeros(1,N-l1)];
h=[h zeros(1,N-l2)];
y=zeros(1,N);
 
  for n=1:N
      for m=1:N 
          j=mod(n-m,N);
          j=j+1;
          y(n)=y(n)+x(m)*h(j);
      end
  end
  stem(y);