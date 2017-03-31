% turnLeft.m
function faces = turnLeft(faces, clockwise)
    if (clockwise)
        faces(:,:,6) = faces(:,:,6)';
        temp = faces(:,1,6);
        faces(:,1,6) = faces(:,3,6);
        faces(:,3,6) = temp;
        temp = faces(:,1,1);
        faces(:,1,1) = faces(:,1,2);
        faces(:,1,2) = flip(faces(1,:,4));
        faces(1,:,4) = faces(1,:,5);
        faces(1,:,5) = flip(temp);
    else
        temp = faces(:,1,6);
        faces(:,1,6) = faces(:,3,6);
        faces(:,3,6) = temp;
        faces(:,:,6) = faces(:,:,6)';
        temp = faces(:,1,1);
        faces(:,1,1) = flip(faces(1,:,5));
        faces(1,:,5) = faces(1,:,4);
        faces(1,:,4) = flip(faces(:,1,2));
        faces(:,1,2) = temp;
    end
end
