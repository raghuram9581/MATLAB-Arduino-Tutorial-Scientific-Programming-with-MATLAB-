clear a;
% declare port number and board
a = arduino('COM7','Mega2560');
%a = arduino('COM6','Uno');
configurePin(a,'D13','DigitalOutput');


while(1)
     writeDigitalPin(a,'D13',1);
     disp("on");
     pause(2);
     
     writeDigitalPin(a,'D13',0);
     disp("off");
     pause(1);
end