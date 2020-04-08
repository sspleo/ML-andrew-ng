1 == 2 % false
1 ~= 2 % true
1 && 0 % and
1 || 0 % OR
xor(1,0) % XOR

PS1('>>'); % to change sign

a = pi;
disp(a);
disp(sprintf('2 decimals: %0.2f', a))
disp(sprintf('6 decimals: %0.6f', a))

format long
format short


A = [1  2; 3 4 ; 5 6]
A = [ 1 2;
3 4;
5 6]

v = [1 2 3] # row vector
v = [1; 2; 3] # column vector

v = 1:0.1:2 # from 1(inlc) to 2(inlc) increasing by 0.1

ones(2,3) # 2 by 3 matrix
C = 2*ones(2*3)
w = ones(1,3)
w = zeros(1,3)
w = rand(1,3) # 1*3 random number matirx from 0 to 1 by uniform distribution

rand(3,3) # 3 * 3 uni. distri. matrix

w = randn(1,3) # 1*3 random number matrix by gaussian(normal) distribution

w = -6 