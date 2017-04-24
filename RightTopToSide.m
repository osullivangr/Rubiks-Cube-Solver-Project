function faces=RightTopToSide(faces)
    % U' F' U F U R U' R'
    CW=1;
    CCW=0;
    faces=turnTop(faces, CCW);
    faces=turnFront(faces, CCW);
    faces=turnTop(faces, CW);
    faces=turnFront(faces, CW);
    faces=turnTop(faces, CW);
    faces=turnRight(faces, CW);
    faces=turnTop(faces, CCW);
    faces=turnRight(faces, CCW);
end
