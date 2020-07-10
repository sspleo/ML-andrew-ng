function [jVal, gradient] = costFunction(theta)

jVal = 0;
y = [5; 5];
for i = 1:length(theta)
    jVal = jVal + (theta(i)-y(i))^2;
end

gradient = zeros(length(theta), 1);
gradient = 2 * (theta - y);