%function for Plotting FRames.
function [FK_plot3D] = FR_plot3D(Th_1, Th_2, Th_3, Th_4, Th_5, Th_6, a_1, a_2, a_3, a_4, a_5, a_6, d_1, d_2, d_3, d_4, d_5, d_6, al_1, al_2, al_3, al_4, al_5, al_6)
[T00,T01,T12,T23,T34,T45,T56,Etip]=forwardKinematics(Th_1,d_1,a_1,al_1,Th_2,d_2,a_2,al_2,Th_3,d_3,a_3,al_3,Th_4,d_4,a_4,al_4,Th_5,d_5,a_5,al_5,Th_6,d_6,a_6,al_6);
T2 = T01*T12; T3 =T2*T23 ; T4 = T3*T34 ; T5 = T4*T45; T6 = T5*T56;
%Plotiing Frame
trplot(T00, 'frame', 'W'); grid on; hold on
trplot(T00, 'frame', '1', 'color', 'c');hold on %plot3([T00(1,4) T01(1,4)],[T00(2,4) T01(2,4)],[T00(3,4) T01(3,4)],'c'); hold on;
trplot(T01, 'frame', '2', 'color', 'k');hold on %plot3([T01(1,4) T01(1,4)],[T00(2,4) T01(2,4)],[T00(3,4) T01(3,4)],'c');
trplot(T2, 'frame', '3', 'color', 'r');hold on %plot3([T2(1,4) T3(1,4)],[T2(2,4) T3(2,4)],[T2(3,4) T3(3,4)],'c');
trplot(T4, 'frame', '4', 'color', 'b');hold on %plot3([T4(1,4) T5(1,4)],[T4(2,4) T5(2,4)],[T4(3,4) T5(3,4)],'c');
trplot(T5, 'frame', '5', 'color', 'y');hold on %plot3([T5(1,4) T6(1,4)],[T5(2,4) T6(2,4)],[T5(3,4) T6(3,4)],'c');
trplot(T6, 'frame', '6_Etip', 'color', 'm');hold on
axis equal
