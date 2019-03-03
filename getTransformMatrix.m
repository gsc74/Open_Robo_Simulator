%Function for Generating Transformation Matrix. 
%*************************** Ghanshyam_Chandra *************************************
%*************************** Open_Robo_Simulator ***********************************


function [T] = getTransformMatrix(theta, d, a, alpha)
T = [cosd(theta) -sind(theta) * cosd(alpha) sind(theta) * sind(alpha) a * cosd(theta);
     sind(theta) cosd(theta) * cosd(alpha)  -cosd(theta) * sind(alpha) a * sind(theta);
     0,sind(alpha),cosd(alpha),d;
     0,0,0,1];
end
