%%%%%%%%%%%%%%%%%%%%%%
%% Basic Operations %%
%%%%%%%%%%%%%%%%%%%%%%
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

%%%%%%%%%%%%%%%%%%%%%%%%
%% Moving Data Around %%
%%%%%%%%%%%%%%%%%%%%%%%%

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


%%%%%%%%%%%%%%%%%%%%%%%
%% Computing on Data %%
%%%%%%%%%%%%%%%%%%%%%%%
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
max(A) % = max(A, [], 1)
max(max(A)) % = max(A(:))

A = magic(9)
sum(A,1) % column-wise sum
sum(A,2) % row-wise sum
eye(9)
A .* eye(9) % diagonal elementss
sum(sum(A.*eye(9)))

flipud(eye(9)) % flip the diagonal upside down
fliplr(eye(9)) % flip the diagonal left to right
help flip

round(pinv(A) * A)


%%%%%%%%%%%%%%%%%%%
%% Plotting Data %%
%%%%%%%%%%%%%%%%%%%
t = [0:0.01:0.98];
y1 = sin(2*pi*4*t);
plot(t, y1);
y2 = cos(2*pi*4*t);
hold on
plot(t, y2, 'r');
xlabel('time')
ylabel('value')
legend('sin', 'cos')
title('my plot')
print -dpng 'myPlot.png'
% cd '/users/leoseo/...'; print -dpng 'myPlot.png'

help plot
close

figure(1) : plot(t, y1);
figure(2) : plot(t, y2);
subplot(1,2,1); % divides plot a 1*2 grid, acces first element

%%
figure(1,"position",get(0,"screensize"))

x = linspace(-2*pi, 2*pi, 1000);
y = sin(x);
plot(x, y, 'LineWidth', 5)
grid on

figure(1, 'position', [300, 200, 560, 420])
%%

subplot(1,2,1);
plot(t,y1)
subplot(1,2,2);
plot(t,y2)
plot([0.5 1 -1 1])
clf

A = magic(5)
imagesc(A)
imagesc(A), colorbar, colormap gray;
A(1,2)
A(4,5)
A(1,3)

imagesc(magic(15)), colorbar, colormap gray;

a=1, b=2, c= 3 % comma changing function calls
a=1; b=2; c=3; 


%%%%%%%%%%%%%%%%%%%%%%%%
%% Control Statements %%
%%%% for, while, if %%%%
%%%%%%%%%%%%%%%%%%%%%%%%
v = zeros(10,1)
for i = 1:10,
    v(i) = 2^i;
end;
v

indices = 1:10;
indices
for i = indices,
    disp(i);
end;

%while
i = 1;
while i <= 5;
    v(i) = 100;
    i = i+1;
end;

i = 1;
while true,
    v(i) = 999;
    i= i+1;
    if i==6,
        break;
    end;
end;

v(1) = 2;
if v(1) ==1,
    disp('The value is one');
elseif v(1) ==2,
    disp('The value is two');
else
    disp('The value is not one or two.');
end;

squareThisNumber(5)

% Octave search path (advanced/optional)
addpath('/users/leoseo/code/ML')
cd '/users/leoseo/code/ML/octave'

[a,b] = squareAndCubeThisNumber(5);


X = [1 1; 1 2; 1 3]
y = [1 ; 2; 3]

theta = [0;1];


j = costFunctionJ(X,y,theta)

theta = [0;0];


