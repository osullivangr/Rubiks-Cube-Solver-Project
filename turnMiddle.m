% turnMiddle.m

function faces = turnMiddle(faces, clockwise)

    % Clockwise
    if (clockwise)
    
        % Rotate face
        % faces(:,:,2) = rotateFace(faces(:,:,2),1);
        
        % Rotate edges
        temp = faces(2,:,1);
        faces(2,:,1) = flip(faces(:,2,3));
        faces(:,2,3) = faces(:,2,4);
        faces(:,2,4) = flip(faces(2,:,6));
        faces(2,:,6) = temp;
        
    % Counterclockwise
    else
    
        % Rotate face
        % faces(:,:,2) = rotateFace(faces(:,:,2),0);
        
        % Rotate edges
        temp = faces(2,:,1);
        faces(2,:,1) = faces(2,:,6);
        faces(2,:,6) = flip(faces(:,2,4));
        faces(:,2,4) = faces(:,2,3);
        faces(:,2,3) = flip(temp);
        
    end
end
