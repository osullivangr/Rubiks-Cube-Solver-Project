% turnRight.m

function faces = turnRight(faces, clockwise)

    % Clockwise
    if (clockwise)
    
        % Rotate face
        faces(:,:,3) = faces(:,:,3)';
        temp = faces(:,1,3);
        faces(:,1,3) = faces(:,3,3);
        faces(:,3,3) = temp;
        
        % Rotate edges
        temp = faces(:,3,1);
        faces(:,3,1) = flip(faces(3,:,5));
        faces(3,:,5) = faces(3,:,4);
        faces(3,:,4) = flip(faces(:,3,2));
        faces(:,3,2) = temp;
        
    % Counterclockwise
    else
        
        % Rotate face
        temp = faces(:,1,3);
        faces(:,1,3) = faces(:,3,3);
        faces(:,3,3) = temp;
        faces(:,:,3) = faces(:,:,3)';
        
        % Rotate edges
        temp = faces(:,3,1);
        faces(:,3,1) = faces(:,3,2);
        faces(:,3,2) = flip(faces(3,:,4));
        faces(3,:,4) = faces(3,:,5);
        faces(3,:,5) = flip(temp);
        
    end
end
