clc;
close all;
clear all;
%cross correlation
x = [1,2,1,1];


n1 = length(x);

for k=1:n1
    m(k)=x(n1-k+1);
    
end

X = [x, zeros(1,n1)]; % X = [ 1   2   1   1   0   0   0   0];
H = [m, zeros(1,n1)]; % H = [ 1   1   2   1   0   0   0   0];

for i=1:n1+n1-1
  y(i) = 0;
  for j=1:n1
    if(i-j+1 > 0)
      y(i) = y(i) + X(j)*H(i-j+1);
    else
    end
  end
end


stem(y);
title('convulation of two signal');