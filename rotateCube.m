function faces = rotateCube(faces, axis)
%%   rotateCube.m
% input x, xprime, y, yprime, z, or zprime to get desired result. 
%Christian Cyrul
% If Michael or George has double checked this program delete 
%this line       THIS CODE HAS NOT BEEN FINISHED

%%  The Code


if strcmp(axis,'x')
    faces = turnRight(faces, 1);
    faces = turnLeft(faces, 0);
    faces = turnCenter(faces, 1);
elseif strcmp(axis,'xprime')
    faces = turnRight(faces, 1);
    faces = turnLeft(faces, 0);
    faces = turnCenter(faces, 1);
elseif strcmp(axis,'y')
    faces = turnFront(faces, 1);
    faces = turnBack(faces, 0);
    faces = turnMiddleLeftRight(faces, 1); 
elseif strcmp(axis,'yprime')
    faces = turnFront(faces, 1);
    faces = turnBack(faces, 0);
    faces = turnMiddleLeftRight(faces, 1); 
elseif strcmp(axis,'z')
    
            % Rotate face
        % faces(:,:,2) = rotateFace(faces(:,:,2),1);
        
        % Rotate edges
        temp = faces(2,:,1);
        faces(2,:,1) = flip(faces(:,2,3));
        faces(:,2,3) = faces(:,2,4);
        faces(:,2,4) = flip(faces(2,:,6));
        faces(2,:,6) = temp;
        
              % Rotate face
        faces(:,:,2) = rotateFace(faces(:,:,2),1);
        
        % Rotate edges
        temp = faces(1,:,1);
        faces(1,:,1) = flip(faces(:,1,3));
        faces(:,1,3) = faces(:,1,4);
        faces(:,1,4) = flip(faces(1,:,6));
        faces(1,:,6) = temp;
        
                % Rotate face
        faces(:,:,5) = rotateFace(faces(:,:,5),1);
       
       
        % Rotate edges
        temp = faces(3,:,1);
        faces(3,:,1) = faces(3,:,6);
        faces(3,:,6) = flip(faces(:,3,4));
        faces(:,3,4) = faces(:,3,3);
        faces(:,3,3) = flip(temp);
        
elseif strcmp(axis,'zprime')
    
           % Rotate edges
        temp = faces(2,:,1);
        faces(2,:,1) = faces(2,:,6);
        faces(2,:,6) = flip(faces(:,2,4));
        faces(:,2,4) = faces(:,2,3);
        faces(:,2,3) = flip(temp);
        
                % Rotate face
        faces(:,:,2) = rotateFace(faces(:,:,2),0);
        
        % Rotate edges
        temp = faces(1,:,1);
        faces(1,:,1) = faces(1,:,6);
        faces(1,:,6) = flip(faces(:,1,4));
        faces(:,1,4) = faces(:,1,3);
        faces(:,1,3) = flip(temp);
        
                % Rotate face
        faces(:,:,5) = rotateFace(faces(:,:,5),0);

        
        % Rotate edges
        temp = faces(3,:,1);
        faces(3,:,1) = flip(faces(:,3,3));
        faces(:,3,3) = faces(:,3,4);
        faces(:,3,4) = flip(faces(3,:,6));
        faces(3,:,6) = temp;
end
