function faces=OrientCrossEdges(faces)
    % R U R' U R U U R' U
    CW=1;
    CCW=0;
    faces=turnRight(faces, CW);
    faces=turnTop(faces, CW);
    faces=turnRight(faces, CCW);
    faces=turnTop(faces, CW);
    faces=turnRight(faces, CW);
    faces=turnTop(faces, CW);
    faces=turnTop(faces, CW);
    faces=turnRight(faces, CCW);
    faces=turnTop(faces, CW);
end
