% Daniel H, Daniel O, Aidan, Dominic (absent)
%brick = ConnectBrick('BRICKYG8A');

% Keyboard
global key;
InitKeyboard();

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

if brick.ColorCode(2) == 4
    brick.beep();
    disp('I see yellow');
    brick.MoveMotor('A', -50);
    brick.MoveMotor('D', -50);

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

    % Stop for red
    if brick.ColorCode(2)== 5
        brick.beep();
        disp('I see red');
        brick.StopAllMotors('Brake');
        pause(2);
        brick.MoveMotor('A', -50);
        brick.MoveMotor('D', -50);
    end

    % Direct Control
    if brick.ColorCode(2) == 2
        disp('I see blue');
        brick.StopAllMotors('Brake');
        while 1
            pause(0.1);
            switch key
                case 'w'
                    disp("w");
                
                case 'a'
                    disp("s");
                
                case 's'
                    disp("s");

                case 'd'
                    disp("d");

                case 'q'
                    disp("q pressed")
                    brick.StopAllMotors('Brake');
                    CloseKeyboard();
                    break;
            end
        end
    end
end
end

end


