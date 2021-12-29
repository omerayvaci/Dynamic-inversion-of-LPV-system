A = [0 1;-1 -2];
B = [0;1];
E = [1;0];
C = [1 0];


H = -pinv(C*E)*E

P = eye(2)+H*C

G = P*B

syms k1 k2

N = P*A-[k1;k2]*C

eig(N)

K = [5;0]
N = P*A-K*C

L = K-N*H