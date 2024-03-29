function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
% for i=1:m
%     J=J-y(i)*log(sigmoid(X(i,:)*theta))-(1-y(i))*log(1-sigmoid(X(i,:)*theta));
% end
% J=J/m;
% J=J+(lambda/(2*m))*sum(theta(2:length(theta)).^2);
% diff=sigmoid(X*theta)-y;
% temp=(1/m)*(diff'*X);
% grad=temp';
h_theta=1./(1+exp(-X*theta));
J=(-1/m)*(y'*log(h_theta)+(1-y)'*log(1-h_theta));
J=J+(lambda/(2*m))*sum(theta(2:end).^2);
grad=(1/m)*(h_theta-y)'*X;
add_part=(lambda/m)*theta;
add_part(1)=0;
grad=grad+add_part';
grad=grad(:);




% =============================================================

end
