function faces=topCornerPermute(faces)
    % U R U' L' U R' U' L
    CW=1;
    CCW=0;
    faces=turnTop(faces, CW);
    faces=turnRight(faces, CW);
    faces=turnTop(faces, CCW);
    faces=turnLeft(faces, CCW);
    faces=turnTop(faces, CW);
    faces=turnRight(faces, CCW);
    faces=turnTop(faces, CCW);
    faces=turnLeft(faces, CW);
end
