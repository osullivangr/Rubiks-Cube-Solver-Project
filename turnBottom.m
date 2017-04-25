% turnBottom.m

function faces = turnBottom(faces, clockwise)
global num_turns
num_turns=num_turns+1;
    drawCube2(faces,'bottom',clockwise);
    
    % Clockwise
    if (clockwise)
    
        % Rotate face
        faces(:,:,5) = rotateFace(faces(:,:,5),1);
       
       
        % Rotate edges
        temp = faces(3,:,1);
        faces(3,:,1) = faces(3,:,6);
        faces(3,:,6) = flip(faces(:,3,4));
        faces(:,3,4) = faces(:,3,3);
        faces(:,3,3) = flip(temp);
        
    % Counterclockwise
    else
    
        % Rotate face
        faces(:,:,5) = rotateFace(faces(:,:,5),0);

        
        % Rotate edges
        temp = faces(3,:,1);
        faces(3,:,1) = flip(faces(:,3,3));
        faces(:,3,3) = faces(:,3,4);
        faces(:,3,4) = flip(faces(3,:,6));
        faces(3,:,6) = temp;
        
    end
end
