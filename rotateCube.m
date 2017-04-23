% rotateCube.m

% input x, xprime, y, yprime, z, or zprime to get desired result. 
function faces = rotateCube(faces, axis)
    if strcmp(axis,'x')
        faces = turnRight(faces, 1);
        faces = turnLeft(faces, 0);
        faces = turnCenter(faces, 1);
    elseif strcmp(axis,'xprime')
        faces = turnRight(faces, 0);
        faces = turnLeft(faces, 1);
        faces = turnCenter(faces, 0);
    elseif strcmp(axis,'y')
        faces = turnFront(faces, 0);
        faces = turnBack(faces, 1);
        faces = turnMiddleLeftRight(faces, 0); 
    elseif strcmp(axis,'yprime')
        faces = turnFront(faces, 1);
        faces = turnBack(faces, 0);
        faces = turnMiddleLeftRight(faces, 1); 
    elseif strcmp(axis,'z')
        faces = turnMiddle(faces, 1);
        faces = turnTop(faces, 1);
        faces = turnBottom(faces, 0);
    elseif strcmp(axis,'zprime')
        faces = turnMiddle(faces, 0);
        faces = turnTop(faces, 0);
        faces = turnBottom(faces, 1);
    end
end
