Q=[1 2 3 5 9 4 6 10 7 11 13 8 12 14 15 16];% Reliability sequence
N = 16;
n=log2(N);
K=8;
Q1 = Q(Q<16);
msg=randi([0 1],1,K);
u= zeros(1:N);
u = (Q1(N-K+1:end))=msg;
m=1;
for d=n-1:-1:0
    for i=1:2*m:N
        a=u(i:i+m-1);
        b=u(i+m:i+2*m-1);
        u(i:i+2*m-1)=[mod(a+b,2) b];
    end 
    m=m*2;
end








