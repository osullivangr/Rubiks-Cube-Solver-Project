function faces=frontToSide(faces)
    % U R U' R' U' F' U F
    CW=1;
    CCW=0;
    faces=turnTop(faces, CW);
    faces=turnRight(faces, CW);
    faces=turnTop(faces, CCW);
    faces=turnRight(faces, CCW);
    faces=turnTop(faces, CCW);
    faces=turnFront(faces, CCW);
    faces=turnTop(faces, CW);
    faces=turnFront(faces, CW);
end
