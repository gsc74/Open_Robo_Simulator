%function for Plotting Workspace.
function [FK_plot3D] = FK_plot3D(Th_1, Th_2, Th_3, Th_4, Th_5, Th_6, a_1, a_2, a_3, a_4, a_5, a_6, d_1, d_2, d_3, d_4, d_5, d_6, al_1, al_2, al_3, al_4, al_5, al_6)


%Plotting The workspace 
L (1)  = Link( [Th_1 d_1 a_1 al_1] );
L (2)  = Link( [Th_2 d_2 a_2 al_2] );
L (3)  = Link( [Th_3 d_3 a_3 al_3] );
L (4)  = Link( [Th_4 d_4 a_4 al_4] );
L (5)  = Link( [Th_5 d_5 a_5 al_5] );
L (6)  = Link( [Th_6 d_6 a_6 al_6] );  


Robot = SerialLink(L);
Robot.name = '6 - DoF forward Kinematics';
Robot.plot([Th_1 Th_2 Th_3 Th_4 Th_5 Th_6]);


[T00,T01,T12,T23,T34,T45,T56,Etip]=forwardKinematics(Th_1,d_1,a_1,al_1,Th_2,d_2,a_2,al_2,Th_3,d_3,a_3,al_3,Th_4,d_4,a_4,al_4,Th_5,d_5,a_5,al_5,Th_6,d_6,a_6,al_6);


T2 = T01*T12; T3 =T2*T23 ; T4 = T3*T34 ; T5 = T4*T45; T6 = T5*T56;
handles.X0.String = num2str((T01(1,4)));handles.Y0.String = num2str((T01(2,4)));handles.Z0.String = num2str((T01(3,4)));
handles.X1.String = num2str((T2(1,4)));handles.Y1.String = num2str((T2(2,4)));handles.Z1.String = num2str((T2(3,4)));
handles.X2.String = num2str((T3(1,4)));handles.Y2.String = num2str((T3(2,4)));handles.Z2.String = num2str((T3(3,4)));
handles.X3.String = num2str((T4(1,4)));handles.Y3.String = num2str((T4(2,4)));handles.Z3.String = num2str((T4(3,4)));
handles.X4.String = num2str((T5(1,4)));handles.Y4.String = num2str((T5(2,4)));handles.Z4.String = num2str((T5(3,4)));
handles.X5.String = num2str((T6(1,4)));handles.Y5.String = num2str((T6(2,4)));handles.Z5.String = num2str((T6(3,4)));
handles.X6.String = num2str((Etip(1,4)));handles.Y6.String = num2str((Etip(2,4)));handles.Z6.String = num2str((Etip(3,4)));
