% turnLeft.m

function faces = turnLeft(faces, clockwise)
    drawCube2(faces,'left',clockwise);

    % Clockwise
    if (clockwise)
    
        % Rotate face
        faces(:,:,6) = rotateFace(faces(:,:,6),1);
        
        % Rotate edges
        temp = faces(:,1,1);
        faces(:,1,1) = faces(:,1,2);
        faces(:,1,2) = flip(faces(1,:,4));
        faces(1,:,4) = faces(1,:,5);
        faces(1,:,5) = flip(temp);
        
    % Counterclockwise
    else
    
        % Rotate face
        faces(:,:,6) = rotateFace(faces(:,:,6),0);
        
        % Rotate edges
        temp = faces(:,1,1);
        faces(:,1,1) = flip(faces(1,:,5));
        faces(1,:,5) = faces(1,:,4);
        faces(1,:,4) = flip(faces(:,1,2));
        faces(:,1,2) = temp;
        
    end
end
