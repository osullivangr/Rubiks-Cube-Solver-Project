% turnFront.m

function faces = turnFront(faces, clockwise)

    % Clockwise
    if (clockwise)
    
        % Rotate face
        faces(:,:,1) = faces(:,:,1)';
        temp = faces(:,1,1);
        faces(:,1,1) = faces(:,3,1);
        faces(:,3,1) = temp;
        
        % Rotate edges
        temp = faces(3,:,2);
        faces(3,:,2) = flip(faces(:,3,6));
        faces(:,3,6) = faces(:,3,5);
        faces(:,3,5) = flip(faces(3,:,3));
        faces(3,:,3) = temp;
        
    % Counterclockwise
    else
    
        % Rotate face
        temp = faces(:,1,1);
        faces(:,1,1) = faces(:,3,1);
        faces(:,3,1) = temp;
        faces(:,:,1) = faces(:,:,1)';
        
        % Rotate edges
        temp = faces(3,:,2);
        faces(3,:,2) = faces(3,:,3);
        faces(3,:,3) = flip(faces(:,3,5));
        faces(:,3,5) = faces(:,3,6);
        faces(:,3,6) = flip(temp);
        
    end
end
