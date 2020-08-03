clear a;
% declare port number and board
%a = arduino('COM7','Mega2560');
a = arduino('COM3','Uno');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% How to use zumorobot.m library file 
% Initial Step: create instance of the library
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example to create instance of zumorobot.m library file is given below
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 b = zumorobot(a);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

while(1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Line Tracker Sensor (6-Array Sensor) values as single array 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     [S1,S2,S3,S4,S5,S6] =  b.readReflectanceSensor(a);
     disp([S1,S2,S3,S4,S5,S6]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Line Tracker Sensor (6-Array Sensor) values as separate single Variable
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  s1=b.readReflectanceSensor1(a);
%  s2=b.readReflectanceSensor2(a);
%  s3=b.readReflectanceSensor3(a);
%  s4=b.readReflectanceSensor4(a);
%  s5=b.readReflectanceSensor5(a);
%  s6=b.readReflectanceSensor6(a);
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  disp("Individaul Sensor Values of Line Tracker Sensor");
  %disp(s1);
  %pause(1);
%  disp(s2);
%  disp(s3);
%  disp(s4);
%  disp(s5);
%  disp(s6);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end