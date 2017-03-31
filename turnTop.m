% turnTop.m

function faces = turnTop(faces, clockwise)

    % Clockwise
    if (clockwise)
    
        % Rotate face
        faces(:,:,2) = rotateFace(faces(:,:,2),1);
        
        % Rotate edges
        temp = faces(1,:,1);
        faces(1,:,1) = flip(faces(:,1,3));
        faces(:,1,3) = faces(:,1,4);
        faces(:,1,4) = flip(faces(1,:,6));
        faces(1,:,6) = temp;
        
    % Counterclockwise
    else
    
        % Rotate face
        faces(:,:,2) = rotateFace(faces(:,:,2),0);
        
        % Rotate edges
        temp = faces(1,:,1);
        faces(1,:,1) = faces(1,:,6);
        faces(1,:,6) = flip(faces(:,1,4));
        faces(:,1,4) = faces(:,1,3);
        faces(:,1,3) = flip(temp);
        
    end
end
