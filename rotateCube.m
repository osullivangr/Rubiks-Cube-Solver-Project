function rotateCube(input)
%%   rotateCube.m
% input x, xprime, y, yprime, z, or zprime to get desired result. 
%Christian Cyrul
% If Michael or George has double checked this program delete 
%this line       THIS CODE HAS NOT BEEN FINISHED

%%  The Code


if strcmp(input,'x')
    
  %Rotate right   
    % Rotate face
        faces(:,:,3) = rotateFace(faces(:,:,3),1);
        
        % Rotate edges
        temp = faces(:,3,1);
        faces(:,3,1) = flip(faces(3,:,5));
        faces(3,:,5) = faces(3,:,4);
        faces(3,:,4) = flip(faces(:,3,2));
        faces(:,3,2) = temp;
        
  %Rotate left 
     % Rotate face
        faces(:,:,6) = rotateFace(faces(:,:,6),0);
        
        % Rotate edges
        temp = faces(:,1,1);
        faces(:,1,1) = flip(faces(1,:,5));
        faces(1,:,5) = faces(1,:,4);
        faces(1,:,4) = flip(faces(:,1,2));
        faces(:,1,2) = temp;
        
  %Rotate middle
     % Rotate face
        % faces(:,:,2) = rotateFace(faces(:,:,2),1);
        
        % Rotate edges
        temp = faces(:,2,1);
        faces(:,2,1) = flip(faces(2,:,5));
        faces(2,:,5) = faces(2,:,4);
        faces(2,:,4) = flip(faces(:,2,2));
        faces(:,2,2) = temp;
        
elseif strcmp(input,'xprime')
    
   % Rotate face
        % faces(:,:,2) = rotateFace(faces(:,:,2),0);
        
        % Rotate edges
        temp = faces(:,2,1);
        faces(:,2,1) = faces(:,2,2);
        faces(:,2,2) = flip(faces(2,:,4));
        faces(2,:,4) = faces(2,:,5);
        faces(2,:,5) = flip(temp);
        
   % Rotate face
        faces(:,:,3) = rotateFace(faces(:,:,3),0);
        
        % Rotate edges
        temp = faces(:,3,1);
        faces(:,3,1) = faces(:,3,2);
        faces(:,3,2) = flip(faces(3,:,4));
        faces(3,:,4) = faces(3,:,5);
        faces(3,:,5) = flip(temp);
        
   % Rotate face
        faces(:,:,6) = rotateFace(faces(:,:,6),1);
        
        % Rotate edges
        temp = faces(:,1,1);
        faces(:,1,1) = faces(:,1,2);
        faces(:,1,2) = flip(faces(1,:,4));
        faces(1,:,4) = faces(1,:,5);
        faces(1,:,5) = flip(temp);
        
elseif strcmp(input,'y')
   
            % Rotate face
        faces(:,:,1) = rotateFace(faces(:,:,1),1);
        
        % Rotate edges
        temp = faces(3,:,2);
        faces(3,:,2) = flip(faces(:,3,6));
        faces(:,3,6) = faces(:,3,5);
        faces(:,3,5) = flip(faces(3,:,3));
        faces(3,:,3) = temp;
        
        
                % Rotate face
        faces(:,:,4) = rotateFace(faces(:,:,4),0);
        
        % Rotate edges
        temp = faces(1,:,2);
        faces(1,:,2) = flip(faces(:,1,6));
        faces(:,1,6) = faces(:,1,5);
        faces(:,1,5) = flip(faces(1,:,3));
        faces(1,:,3) = temp;

        % Rotate edges
        temp = faces(2,:,2);
        faces(2,:,2) = flip(faces(:,2,6));
        faces(:,2,6) = faces(:,2,5);
        faces(:,2,5) = flip(faces(2,:,3));
        faces(2,:,3) = temp;
                
        
elseif strcmp(input,'yprime')
   
           % Rotate face
        faces(:,:,1) = rotateFace(faces(:,:,1),0);
        
        % Rotate edges
        temp = faces(3,:,2);
        faces(3,:,2) = faces(3,:,3);
        faces(3,:,3) = flip(faces(:,3,5));
        faces(:,3,5) = faces(:,3,6);
        faces(:,3,6) = flip(temp);
        
        
               % Rotate face
        faces(:,:,4) = rotateFace(faces(:,:,4),1);
        
        % Rotate edges
        temp = faces(1,:,2);
        faces(1,:,2) = faces(1,:,3);
        faces(1,:,3) = flip(faces(:,1,5));
        faces(:,1,5) = faces(:,1,6);
        faces(:,1,6) = flip(temp);
        
                % Rotate edges
        temp = faces(2,:,2);
        faces(2,:,2) = faces(2,:,3);
        faces(2,:,3) = flip(faces(:,2,5));
        faces(:,2,5) = faces(:,2,6);
        faces(:,2,6) = flip(temp);
        
        
elseif strcmp(input,'z')
    
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
        
elseif strcmp(input,'zprime')
    
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
