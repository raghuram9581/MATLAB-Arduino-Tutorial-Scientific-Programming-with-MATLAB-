
clear a;
% declare port number and board
%a = arduino('COM7', 'Mega2560');
a = arduino('COM3','Uno');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
configurePin(a,'D10','DigitalOutput');

configurePin(a,'D9','DigitalOutput');

configurePin(a,'D8','DigitalOutput');

configurePin(a,'D7','DigitalOutput');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



while(1)

    writePWMDutyCycle(a,'D10',0.75);
    writeDigitalPin(a,'D8',0);
    writePWMDutyCycle(a,'D9',0.75);
    writeDigitalPin(a,'D7',0);

end