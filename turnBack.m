% turnBack.m

function faces = turnBack(faces, clockwise)

    % Clockwise
    if (clockwise)
        
        % Rotate face
        faces(:,:,4) = rotateFace(faces(:,:,4),1);
        
        % Rotate edges
        temp = faces(1,:,2);
        faces(1,:,2) = faces(1,:,3);
        faces(1,:,3) = flip(faces(:,1,5));
        faces(:,1,5) = faces(:,1,6);
        faces(:,1,6) = flip(temp);
        
    % Counterclockwise
    else
    
        % Rotate face
        faces(:,:,4) = rotateFace(faces(:,:,4),0);
        
        % Rotate edges
        temp = faces(1,:,2);
        faces(1,:,2) = flip(faces(:,1,6));
        faces(:,1,6) = faces(:,1,5);
        faces(:,1,5) = flip(faces(1,:,3));
        faces(1,:,3) = temp;
        

        
    end
end
