X = [1 2 5; 3 4 6]
Y = [1 0 1; 0 1 1]

% a list of elements in 1st row, w.r.t. Y's 1st row
X(1, Y(1,:)) % error

R = logical(Y)
X(1, R(1,:)) % correct

