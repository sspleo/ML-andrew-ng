%% unrolling parameters
PS1('>> ')

Theta1 = ones(10,11)

Theta2 = 2*ones(10,11)

Theta3 = 3*ones(1,11)

thetaVec = [Theta1(:); Theta2(:); Theta3(:)];
% Theta1 - 1:110, Theta2 - 111:220, Theta3 - 221:231
size(thetaVec)

reshape(thetaVec(1:110), 10,11)
reshape(thetaVec(111:220), 10, 11)
reshape(thetaVec(221:231), 1, 11)

fminunc(@costFunction, initialTheeta, options)
function [jVal, gradient] = costFunction(theta)

%% gradient checking
EPSILON = 1e-4;
for i = 1:n,
    thetaPlus = theta;
    thetaPlus(i) = thetaPlus(i) + EPSILON;
    %thetaPlus(i) += EPSILON;
    thetaMinus = theta;
    thetaMinus(i) = thetaMinus(i) - EPSILON;
    %thetaMinus(i) -=EPSILON;
    gradApprox(i) = (J(thetaPlus)-J(thetaMinus))/(2*EPSILON);
end;

%Check that gradApprox is similar to DVec(from backprop)
gradApprox - DVec


%% Random Initialization : Symmetry Breaking
Theta1 = rand(10,11) * (2*INIT_EPSILON) - INIT_EPSILON;
Theta2 = rand(1,11) * (2*INIT_EPSILON) - INIT_EPSILON;
