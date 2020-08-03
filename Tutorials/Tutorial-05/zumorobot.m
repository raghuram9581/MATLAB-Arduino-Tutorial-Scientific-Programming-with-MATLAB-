%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% @author: Raghuram Vadlamani         %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% email: raghuram.vadlamani1@gmai.com %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Last edited on 09-07-2020           %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% How to use zumorobot.m library file 
% Initial Step: create instance of the library
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example to create instance of zumorobot.m library file is given below
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% b = zumorobot(a);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

classdef zumorobot < handle
     
     properties  
        
     end

    methods(Static)
        
        function obj = zumorobot(a)

           configurePin(a,'D2','DigitalOutput');
           writeDigitalPin(a,'D2',1);
           
        end

        
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Line Tracker Sensor (6-Array Sensor) values as a single array 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example to read the Line Tracker Sensor is given below
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     [S1,S2,S3,S4,S5,S6] =  b.readReflectanceSensor(a);
%     disp([S1,S2,S3,S4,S5,S6]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [S1,S2,S3,S4,S5,S6] = readReflectanceSensor(a)
    
 %configurePin(a,'D2','DigitalOutput');
%            writeDigitalPin(a,'D2',1);
c = zumorobot(a);
S1 = c.readReflectanceSensor1(a);
S2 = c.readReflectanceSensor2(a);
S3 = c.readReflectanceSensor3(a);
S4 = c.readReflectanceSensor4(a);
S5 = c.readReflectanceSensor5(a);
S6 = c.readReflectanceSensor6(a);

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Line Tracker Sensor's (6-Array Sensor) values as separate single Variable
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example to read the Line Tracker Sensor values individully is given below
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  s1=b.readReflectanceSensor1(a);
%  s2=b.readReflectanceSensor2(a);
%  s3=b.readReflectanceSensor3(a);
%  s4=b.readReflectanceSensor4(a);/
%  s5=b.readReflectanceSensor5(a);
%  s6=b.readReflectanceSensor6(a);
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
function sensorValues1 = readReflectanceSensor1(a)

sensorCount = 1;
%sensorPins = {D14; D16; D17; D4; D5; D11};
%char sensorPins = {D14, D16, D17, D4, D5 ,D11};
sensorValues1 = 0;
start = 1;
step = 1;
maxValue = 2500;

sensorValues1 = maxValue;
% Pin configuration output mode

configurePin(a,'D5','DigitalOutput');
writeDigitalPin(a,'D5',1);

 pause(10/1000000);
 
% emitter pin
writeDigitalPin(a,'D2',0);

configurePin(a,'D5','DigitalInput');
% writeDigitalPin(a,'D4',0);

 startTime = tic;
%  disp(startTime);

    while(tic - startTime < maxValue )
   
    time = tic - startTime;
    
%     disp(time);
   
    if ((readDigitalPin(a,'D5') == 0)&& time<sensorValues1)
        sensorValues1 = time;  
    end

%      disp(sensorValues1);    
    
    end


end
function sensorValues2 = readReflectanceSensor2(a)

sensorCount = 1;
%sensorPins = {D14; D16; D17; D4; D5; D11};
%char sensorPins = {D14, D16, D17, D4, D5 ,D11};
sensorValues2 = 0;
start = 1;
step = 1;
maxValue = 2500;

sensorValues2 = maxValue;
% Pin configuration output mode

configurePin(a,'A2','DigitalOutput');
writeDigitalPin(a,'A2',1);

 pause(10/1000000);
 
% emitter pin
writeDigitalPin(a,'D2',0);

configurePin(a,'A2','AnalogInput');
% writeDigitalPin(a,'D4',0);

 startTime = tic;
%  disp(startTime);

    while(tic - startTime < maxValue )
   
    time = tic - startTime;
    
%     disp(time);
   
    if ((readDigitalPin(a,'A2') == 0)&& time<sensorValues2)
        sensorValues2 = time;  
    end

%     disp(sensorValues2);    
    
    end


end
function sensorValues3 = readReflectanceSensor3(a)

sensorCount = 1;
%sensorPins = {D14; D16; D17; D4; D5; D11};
%char sensorPins = {D14, D16, D17, D4, D5 ,D11};
sensorValues3 = 0;
start = 1;
step = 1;
maxValue = 2500;

sensorValues3 = maxValue;
% Pin configuration output mode

configurePin(a,'A0','DigitalOutput');
writeDigitalPin(a,'A0',1);

 pause(10/1000000);
 
% emitter pin
writeDigitalPin(a,'D2',0);

configurePin(a,'A0','AnalogInput');
% writeDigitalPin(a,'D4',0);

 startTime = tic;
%  disp(startTime);

    while(tic - startTime < maxValue )
   
    time = tic - startTime;
    
%     disp(time);
   
    if ((readDigitalPin(a,'A0') == 0)&& time<sensorValues3)
        sensorValues3 = time;  
    end

%     disp(sensorValues3);    
    
    end


end
function sensorValues4 = readReflectanceSensor4(a)

sensorCount = 1;
%sensorPins = {D14; D16; D17; D4; D5; D11};
%char sensorPins = {D14, D16, D17, D4, D5 ,D11};
sensorValues4 = 0;
start = 1;
step = 1;
maxValue = 2500;

sensorValues4 = maxValue;
% Pin configuration output mode

configurePin(a,'D11','DigitalOutput');
writeDigitalPin(a,'D11',1);

 pause(10/1000000);
 
% emitter pin
writeDigitalPin(a,'D2',0);

configurePin(a,'D11','DigitalInput');
% writeDigitalPin(a,'D4',0);

 startTime = tic;
%  disp(startTime);

    while(tic - startTime < maxValue )
   
    time = tic - startTime;
    
%     disp(time);
   
    if ((readDigitalPin(a,'D11') == 0)&& time<sensorValues4)
        sensorValues4 = time;  
    end

%     disp(sensorValues4);    
    
    end


end
function sensorValues5 = readReflectanceSensor5(a)

sensorCount = 1;
%sensorPins = {D14; D16; D17; D4; D5; D11};
%char sensorPins = {D14, D16, D17, D4, D5 ,D11};
sensorValues5 = 0;
start = 1;
step = 1;
maxValue = 2500;

sensorValues5 = maxValue;
% Pin configuration output mode

configurePin(a,'A3','DigitalOutput');
writeDigitalPin(a,'A3',1);

 pause(10/1000000);
 
% emitter pin
writeDigitalPin(a,'D2',0);

configurePin(a,'A3','AnalogInput');
% writeDigitalPin(a,'D4',0);

 startTime = tic;
%  disp(startTime);

    while(tic - startTime < maxValue )
   
    time = tic - startTime;
    
%     disp(time);
   
    if ((readDigitalPin(a,'A3') == 0)&& time<sensorValues5)
        sensorValues5 = time;  
    end

%     disp(sensorValues5);    
    
    end


end
function sensorValues6 = readReflectanceSensor6(a)

sensorCount = 1;
%sensorPins = {D14; D16; D17; D4; D5; D11};
%char sensorPins = {D14, D16, D17, D4, D5 ,D11};
sensorValues6 = 0;
start = 1;
step = 1;
maxValue = 2500;

sensorValues6 = maxValue;
% Pin configuration output mode

configurePin(a,'D4','DigitalOutput');
writeDigitalPin(a,'D4',1);

 pause(10/1000000);
 
% emitter pin
writeDigitalPin(a,'D2',0);

configurePin(a,'D4','DigitalInput');
% writeDigitalPin(a,'D4',0);

 startTime = tic;
%  disp(startTime);

    while(tic - startTime < maxValue )
   
    time = tic - startTime;
    
%     disp(time);
   
    if ((readDigitalPin(a,'D4') == 0)&& time<sensorValues6)
        sensorValues6 = time;  
    end

%     disp(sensorValues6);    
    
    end


end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Motor controller (Input Arguments (a --- arduino instance, motor1 speed, motor1
% direction, motor2 speed, motor2 direction)) ---- working
% Input Arguments
% a -- arduino instance
% Speed of Motor1 -- 0 to 1.00
% Direction of Motor1 -- 0 or 1 (0 for Forward, 1 for Backward)
% Speed of Motor2 -- 0 to 1.00
% Direction of Motor2 -- 0 or 1 (0 for Forward, 1 for Backward)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example to control the Motors is given below
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%b.motor(a,0.50,1,0.75,1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = motor(a,s_m1,d_m1,s_m2,d_m2)

configurePin(a,'D10','DigitalOutput');

%Right Motor
configurePin(a,'D9','DigitalOutput');

configurePin(a,'D8','DigitalOutput');


configurePin(a,'D7','DigitalOutput');


 writeDigitalPin(a,'D8',d_m1);
 writeDigitalPin(a,'D7',d_m2);
 writePWMDutyCycle(a,'D10',s_m1);
 writePWMDutyCycle(a,'D9',s_m2);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Buzzer Controller (Input Arguments (a --- arduino instance, Frequency ))
% Input Arguments
% a -- arduino instance
% Frequency -- 0 to 32767 (Hz)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example to control the Buzzer is given below
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% b.buzzer(a,5000);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [] = buzzer(a)

%playTone(a,pin,frequency,duration);
% f=[2620, 2620, 2940, 2620, 3490, 3300, 2620, 2620, 2940, 2620, 392, 349, 2620, 2620, 523, 440, 349, 330, 2940, 466, 466, 440, 349, 392, 349];
f=[262, 220, 240, 220, 390, 300, 220, 260, 290, 260, 392, 349, 620, 620, 53, 440, 39, 330, 240, 466, 466, 440, 349, 392, 349];
%duration of note
d=[0.5, 0.5, 1, 1, 1, 2, 0.5, 0.5, 1, 1, 1, 2, 0.5, 0.5, 1, 1, 1, 1, 3, 0.5, 0.5, 1, 1, 1, 2];

for i=1:25
   playTone(a,'D3',f_1(i),d_1(i));
    
end

end




    end
 

end
