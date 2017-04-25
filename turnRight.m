% turnRight.m

function faces = turnRight(faces, clockwise)
    drawCube2(faces,'right',clockwise);

    % Clockwise
    if (clockwise)
    
        % Rotate face
        faces(:,:,3) = rotateFace(faces(:,:,3),1);
        
        % Rotate edges
        temp = faces(:,3,1);
        faces(:,3,1) = flip(faces(3,:,5));
        faces(3,:,5) = faces(3,:,4);
        faces(3,:,4) = flip(faces(:,3,2));
        faces(:,3,2) = temp;
        
    % Counterclockwise
    else
        
        % Rotate face
        faces(:,:,3) = rotateFace(faces(:,:,3),0);
        
        % Rotate edges
        temp = faces(:,3,1);
        faces(:,3,1) = faces(:,3,2);
        faces(:,3,2) = flip(faces(3,:,4));
        faces(3,:,4) = faces(3,:,5);
        faces(3,:,5) = flip(temp);
        
    end
end
