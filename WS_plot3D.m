%function for Plotting Workspace.
function [WS_plot3D] = WS_plot3D(Th_1, Th_2, Th_3, Th_4, Th_5, Th_6, a_1, a_2, a_3, a_4, a_5, a_6, d_1, d_2, d_3, d_4, d_5, d_6, al_1, al_2, al_3, al_4, al_5, al_6)
%Plotting Links
L (1)  = Link( [Th_1 d_1 a_1 al_1] );
L (2)  = Link( [Th_2 d_2 a_2 al_2] );
L (3)  = Link( [Th_3 d_3 a_3 al_3] );
L (4)  = Link( [Th_4 d_4 a_4 al_4] );
L (5)  = Link( [Th_5 d_5 a_5 al_5] );
L (6)  = Link( [Th_6 d_6 a_6 al_6] );  
Robot = SerialLink(L);
Robot.name = '6 - DoF forward Kinematics';
Robot.plot([Th_1 Th_2 Th_3 Th_4 Th_5 Th_6]);
%Plotting The workspace 
[T00,T01,T12,T23,T34,T45,T56,Etip]=forwardKinematics(Th_1,d_1,a_1,al_1,Th_2,d_2,a_2,al_2,Th_3,d_3,a_3,al_3,Th_4,d_4,a_4,al_4,Th_5,d_5,a_5,al_5,Th_6,d_6,a_6,al_6);
hold on;
plot3(Etip(1,4),Etip(2,4),Etip(3,4),'-r*');
