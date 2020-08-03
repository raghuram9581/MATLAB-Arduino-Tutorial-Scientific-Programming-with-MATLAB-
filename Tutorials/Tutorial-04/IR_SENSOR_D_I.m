clear a;
% declare port number and board
a = arduino('COM7', 'Mega2560');
%a = arduino('COM3','Uno');

%%% Control Pin  %%%%%%%%%%%%%%%
configurePin(a,'D9','DigitalOutput');
%%% Sensor output Pin  %%%%%%%%%%%%%%%
configurePin(a,'D8','DigitalInput');
%%% Make Control pin high to read sensor values from sensor pin%%%%%
writeDigitalPin(a,'D9',1);

double value ;

while(1)

    value = readDigitalPin(a,'D8');
    disp(value);
    pause(1/10);

end

