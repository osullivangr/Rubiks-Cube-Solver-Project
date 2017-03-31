% turnTop.m
function faces = turnTop(faces, clockwise)
    if (clockwise)
        faces(:,:,2) = faces(:,:,2)';
        temp = faces(:,1,2);
        faces(:,1,2) = faces(:,3,2);
        faces(:,3,2) = temp;
        temp = faces(1,:,1);
        faces(1,:,1) = flip(faces(:,1,3));
        faces(:,1,3) = faces(:,1,4);
        faces(:,1,4) = flip(faces(1,:,6));
        faces(1,:,6) = temp;
    else
        temp = faces(:,1,2);
        faces(:,1,2) = faces(:,3,2);
        faces(:,3,2) = temp;
        faces(:,:,2) = faces(:,:,2)';
        temp = faces(1,:,1);
        faces(1,:,1) = faces(1,:,6);
        faces(1,:,6) = flip(faces(:,1,4));
        faces(:,1,4) = faces(:,1,3);
        faces(:,1,3) = flip(temp);
    end
end
