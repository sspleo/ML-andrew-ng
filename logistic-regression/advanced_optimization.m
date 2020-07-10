options = optimset('GradObj', 'on', 'MaxIter', '100'); % define the option data structure
initialTheta = zeros(2,1); % set the initial dimensions for theta
[optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options)
