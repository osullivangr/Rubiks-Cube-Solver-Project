% turnCenter.m

function faces = turnCenter(faces, clockwise)
% the 'Center' is the middle that goes through the top layer

    % Clockwise
    if (clockwise)
    
        % Rotate face
        % faces(:,:,2) = rotateFace(faces(:,:,2),1);
        
        % Rotate edges
        temp = faces(:,2,1);
        faces(:,2,1) = flip(faces(2,:,5));
        faces(2,:,5) = faces(2,:,4);
        faces(2,:,4) = flip(faces(:,2,2));
        faces(:,2,2) = temp;
        
    % Counterclockwise
    else
    
        % Rotate face
        % faces(:,:,2) = rotateFace(faces(:,:,2),0);
        
        % Rotate edges
        temp = faces(:,2,1);
        faces(:,2,1) = faces(:,2,2);
        faces(:,2,2) = flip(faces(2,:,4));
        faces(2,:,4) = faces(2,:,5);
        faces(2,:,5) = flip(temp);
        
    end
end
