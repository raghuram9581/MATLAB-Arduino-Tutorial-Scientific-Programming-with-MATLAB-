clear a;
% declare port number and board
a = arduino('COM7', 'Mega2560');
%a = arduino('COM3','Uno');

%%% Control Pin  %%%%%%%%%%%%%%%
configurePin(a,'D9','DigitalOutput');
%configurePin(a,'D10','DigitalOutput');
%%% Sensor output Pin  %%%%%%%%%%%%%%%
configurePin(a,'A0','AnalogInput');
%%% Make Control pin high to read sensor values from sensor pin%%%%%
writeDigitalPin(a,'D9',1);
%writeDigitalPin(a,'D10',1);

double value ;

while(1)

    value = readVoltage(a,'A0');
    disp(value);
    pause(1/10);

end
