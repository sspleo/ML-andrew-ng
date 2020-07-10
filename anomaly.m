X % m * n matriix
mu = 1/m*sum(X,1); % col sum, 1*n matrix
sigma = 1/m*(X-)

sigma = zeros(size(X,2));
for i = 1:size(X,1)
    sigma(i,i) = 1/m*(X(i,:)-mu)'*(X(i,:)-mu)
end


sigma = 1/m*(X'*X);
pp = 1/((2*pi)^(n/2)*det(sigma)^(1/2))*exp(-1/2*(x-mu)'*pinv(sigma)*(x-mu))

