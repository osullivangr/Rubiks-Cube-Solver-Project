% turnRight.m
function faces = turnRight(faces, clockwise)
    if (clockwise)
        faces(:,:,3) = faces(:,:,3)';
        temp = faces(:,1,3);
        faces(:,1,3) = faces(:,3,3);
        faces(:,3,3) = temp;
        temp = faces(:,3,1);
        faces(:,3,1) = flip(faces(3,:,5));
        faces(3,:,5) = faces(3,:,4);
        faces(3,:,4) = flip(faces(:,3,2));
        faces(:,3,2) = temp;
    else
        temp = faces(:,1,3);
        faces(:,1,3) = faces(:,3,3);
        faces(:,3,3) = temp;
        faces(:,:,3) = faces(:,:,3)';
        temp = faces(:,3,1);
        faces(:,3,1) = faces(:,3,2);
        faces(:,3,2) = flip(faces(3,:,4));
        faces(3,:,4) = faces(3,:,5);
        faces(3,:,5) = flip(temp);
    end
end
