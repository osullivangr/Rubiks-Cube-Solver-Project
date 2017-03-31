% turnBack.m

function faces = turnBack(faces, clockwise)

    % Clockwise
    if (clockwise)
        
        % Rotate face
        faces(:,:,4) = faces(:,:,4)';
        temp = faces(:,1,4);
        faces(:,1,4) = faces(:,3,4);
        faces(:,3,4) = temp;
        
        % Rotate edges
        temp = faces(1,:,2);
        faces(1,:,2) = flip(faces(:,1,6));
        faces(:,1,6) = faces(:,1,5);
        faces(:,1,5) = flip(faces(1,:,3));
        faces(1,:,3) = temp;
        
    % Counterclockwise
    else
    
        % Rotate face
        temp = faces(:,1,4);
        faces(:,1,4) = faces(:,3,4);
        faces(:,3,4) = temp;
        faces(:,:,4) = faces(:,:,4)';
        
        % Rotate edges
        temp = faces(1,:,2);
        faces(1,:,2) = faces(1,:,3);
        faces(1,:,3) = flip(faces(:,1,5));
        faces(:,1,5) = faces(:,1,6);
        faces(:,1,6) = flip(temp);
        
    end
end
