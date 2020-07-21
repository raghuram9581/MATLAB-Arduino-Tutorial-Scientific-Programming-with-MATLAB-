
clear a;
% declare port number and board
a = arduino('COM7', 'Mega2560', 'Libraries', 'Servo');
%a = arduino('COM6','Uno');
s = servo(a, 'D4');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% angle = 90;
% writePosition(s, angle);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for angle = 0:0.1:1
    writePosition(s, angle);
    current_pos = readPosition(s);
    current_pos = current_pos*180;
    fprintf('Current motor position is %d degrees\n', current_pos);
    pause(2);
end
