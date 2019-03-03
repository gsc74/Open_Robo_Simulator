%Function for substituting [theta d a alpha] values {Denavit Hartenberg Parameters}. 
%*************************** Ghanshyam_Chandra *************************************
%*************************** Open_Robo_Simulator ***********************************

function[T00,T01,T12,T23,T34,T45,T56,Etip]=forwardKinematics(theta1,d1,a1,alpha1,theta2,d2,a2,alpha2,theta3,d3,a3,alpha3,theta4,d4,a4,alpha4,theta5,d5,a5,alpha5,theta6,d6,a6,alpha6)

T00 = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];
T01 = getTransformMatrix(theta1,d1,a1,alpha1);
T12 = getTransformMatrix(theta2,d2,a2,alpha2);
T23 = getTransformMatrix(theta3,d3,a3,alpha3);
T34 = getTransformMatrix(theta4,d4,a4,alpha4);
T45 = getTransformMatrix(theta5,d5,a5,alpha5);
T56 = getTransformMatrix(theta6,d6,a6,alpha6);

Etip = T00 * T01 * T12 * T23 * T34 * T45 * T56;

end
