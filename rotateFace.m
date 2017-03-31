% rotateFace.m

function face = rotateFace(face, clockwise)

    % Clockwise
    if(clockwise)
    
        % Rotate face
        face = face';
        temp = face(:,1);
        face(:,1) = face(:,3);
        face(:,3) = temp;
    
    % Counterclockwise
    else
    
        % rotate face
        temp = face(:,1);
        face(:,1) = face(:,3);
        face(:,3) = temp;
        face = face';
        
    end
end
