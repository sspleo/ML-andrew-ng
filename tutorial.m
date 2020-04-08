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

w = -6 + sqrt(10) * (randn(1,10000))
hist(w)
hist(w,50)

eye(4) # 4 by 4 identity matirx
help eye # help function


A = [1 2; 3 4; 5 6]
size(A)
size(A,1)
size(A,2)

v = [1 2 3 4]
length(v)

length([1;2;3;4;5])



% loading data
load featuresX.dat
load priceY.dat
load('featureX.dat')

who % what are the variables 
whos % with some detail 
size(featuresX)

save hello.mat v; % save hello.mat as v

clears
whoswho
load hello.txt v -ascii % save as human readable text

A = [1 2; 3 4; 5 6]
A(3,2)

A(2,:)
A([1,3], :)

A(:,2) = [10; 11; 12]

A = [A, [100; 101; 102]] % append a column vector
A(:) % put all elemetns of A into a single vectdor

B = [11 12; 13 14; 15 16]

C = [A B]% concatenating A and B into a matrix by columns
C = [A;B]% concatenating by rows

C = [1 1; 2 2]
A*C
A.*B % elementwise multiplication
A.^2 % elemetnwise squaring

v = [1; 2; 3]
1 ./ v
1 ./ A
log(v)
exp(v)
abs(v) % absolute value
abs([-1; 2; -3])
-v % negative
v + ones(length(v), 1)
v + 1 % here 1 = ones(length(v), 1)

A' % A trnaspose
(A')' % must be A

%% max(vector) = maximum value of the vector
%% max(matrix) = maximum value of each column
a = [1 15 2 0.5]
val = max(a)
max(A) % column wise maximum
w = [1; 2; 3]
max(w) 

a < 3 % logical question for each elements
find(a<3) % output the index of elements for the condition

magic(3) % 3-by-3 magic square(diagonal, rows, columns sums are equal)
help magic
[r, c] = find(A >= 7)
A(2,3)

sum(a) % sum of elements
prod(a) % product of elements 

rand(3)

max(A, [], 1) % maximum values of each columns
max(A, [], 2) % maximum values of each rows

