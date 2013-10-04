function [J, grad] = lrCostFunction(theta, X, y, reg_param)

m = length(y); 
J = 0;
grad = zeros(size(theta));


J=(1/m)*(sum(-y'*log(sigmoid(X*theta)) -(1-y')*log(1-sigmoid(X*theta))) +(reg_param/2)*(sum(theta.^2)-theta(1)^2));

grad = X'*(sigmoid(X*theta)-y);
temp=theta;
temp(1)=0;
grad =grad + reg_param*temp;
grad=grad/m;


grad = grad(:);

end
