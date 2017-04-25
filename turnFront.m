% turnFront.m

function faces = turnFront(faces, clockwise)
    drawCube2(faces,'front',clockwise);

    % Clockwise
    if (clockwise)
    
        % Rotate face
        faces(:,:,1) = rotateFace(faces(:,:,1),1);
        
        % Rotate edges
        temp = faces(3,:,2);
        faces(3,:,2) = flip(faces(:,3,6));
        faces(:,3,6) = faces(:,3,5);
        faces(:,3,5) = flip(faces(3,:,3));
        faces(3,:,3) = temp;
        
    % Counterclockwise
    else
    
        % Rotate face
        faces(:,:,1) = rotateFace(faces(:,:,1),0);
        
        % Rotate edges
        temp = faces(3,:,2);
        faces(3,:,2) = faces(3,:,3);
        faces(3,:,3) = flip(faces(:,3,5));
        faces(:,3,5) = faces(:,3,6);
        faces(:,3,6) = flip(temp);
        
    end
end
