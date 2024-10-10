% Daniel H, Daniel O, Aidan, Dominic (absent)
%brick = ConnectBrick('BRICKYG8A');


% Checks for yellow , starts program when sees yellow
while 1
    pause(1);
    % Kill switch
    killSwitch = brick.TouchPressed(1); % Read a touch sensor connected to port 1.
    if killSwitch
        brick.beep();
        brick.StopAllMotors('Brake');
        disp('Kill Switch activated: Loop 1');
        break;            
    end

if brick.ColorCode(2)== 4
    brick.beep();
    disp('I see yellow');
    brick.MoveMotor('A', 50);

% Program
while 1
    % Kill switch
    killSwitch = brick.TouchPressed(1); % Read a touch sensor connected to port 1.
    %distance = brick.UltrasonicDist(3); % Distance from distance sensor
    %display(distance);

    if killSwitch
        brick.beep();
        brick.StopAllMotors('Brake');
        disp('Kill Switch activated: Loop 2');
        break;            
    end


    if brick.ColorCode(2)== 5
        brick.beep();
        disp('I see red');
        brick.StopAllMotors('Brake');
        pause(2);
        brick.MoveMotor('A', 50);
    end
end
end

end

