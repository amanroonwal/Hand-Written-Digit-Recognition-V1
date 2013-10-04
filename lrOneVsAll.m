function [theta_final] = lrOneVsAll(X, y, num_labels, reg_param)


m = size(X, 1);
n = size(X, 2);

theta_final = zeros(num_labels, n + 1);
X = [ones(m, 1), X];

for c=1:num_labels,

initial_theta = zeros(n + 1, 1);

options = optimset('GradObj', 'on', 'MaxIter', 50);
[theta] = fmincg (@(t)(lrCostFunction(t, X, (y == c), reg_param)),initial_theta, options);

theta_final(c,:)=theta;
end

end
