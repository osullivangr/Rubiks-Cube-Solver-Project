% turnBottom.m
function faces = turnBottom(faces, clockwise)
    if (clockwise)
        faces(:,:,5) = faces(:,:,5)';
        temp = faces(:,1,5);
        faces(:,1,5) = faces(:,3,5);
        faces(:,3,5) = temp;
        temp = faces(3,:,1);
        faces(3,:,1) = flip(faces(:,3,3));
        faces(:,3,3) = faces(:,3,4);
        faces(:,3,4) = flip(faces(3,:,6));
        faces(3,:,6) = temp;
    else
        temp = faces(:,1,5);
        faces(:,1,5) = faces(:,3,5);
        faces(:,3,5) = temp;
        faces(:,:,5) = faces(:,:,5)';
        temp = faces(3,:,1);
        faces(3,:,1) = faces(3,:,6);
        faces(3,:,6) = flip(faces(:,3,4));
        faces(:,3,4) = faces(:,3,3);
        faces(:,3,3) = flip(temp);
    end
end
