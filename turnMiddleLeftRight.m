% turnMiddleLeftRight.m

function faces = turnMiddleLeftRight(faces, clockwise)
global num_turns
num_turns=num_turns+1;

    % Clockwise
    if (clockwise)
        
        % Rotate edges
        temp = faces(2,:,2);
        faces(2,:,2) = flip(faces(:,2,6));
        faces(:,2,6) = faces(:,2,5);
        faces(:,2,5) = flip(faces(2,:,3));
        faces(2,:,3) = temp;
        
    % Counterclockwise
    else
        
        % Rotate edges
        temp = faces(2,:,2);
        faces(2,:,2) = faces(2,:,3);
        faces(2,:,3) = flip(faces(:,2,5));
        faces(:,2,5) = faces(:,2,6);
        faces(:,2,6) = flip(temp);
        
    end
end
