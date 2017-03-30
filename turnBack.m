% turnBack.m

function faces = turnBack(faces, clockwise)
    if (clockwise)
        faces(:,:,4) = faces(:,:,4)';
        temp = faces(:,1,4);
        faces(:,1,4) = faces(:,3,4);
        faces(:,3,4) = temp;
        temp = faces(1,:,2);
        faces(1,:,2) = flip(faces(:,1,6));
        faces(:,1,6) = faces(:,1,5);
        faces(:,1,5) = flip(faces(1,:,3));
        faces(1,:,3) = temp;
    else
        temp = faces(:,1,4);
        faces(:,1,4) = faces(:,3,4);
        faces(:,3,4) = temp;
        faces(:,:,4) = faces(:,:,4)';
        temp = faces(1,:,2);
        faces(1,:,2) = faces(1,:,3);
        faces(1,:,3) = flip(faces(:,1,5));
        faces(:,1,5) = faces(:,1,6);
        faces(:,1,6) = flip(temp);
    end
end
