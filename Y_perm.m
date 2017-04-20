function faces=Y_perm(faces)
    % preforms the Y algorithm
    % F R U' R' U' [R U R' F'] {[R U R' U'] [R' F R F']}

    clockwise=1;
    CCW=0;

    faces=turnFront(faces,clockwise);
    faces=turnRight(faces,clockwise);
    faces=turnTop(faces,CCW);
    faces=turnRight(faces,CCW);
    faces=turnTop(faces,CCW);

    faces=turnRight(faces,clockwise);
    faces=turnTop(faces,clockwise);
    faces=turnRight(faces,CCW);
    faces=turnFront(faces,CCW);

    faces=turnRight(faces,clockwise);
    faces=turnTop(faces,clockwise);
    faces=turnRight(faces,CCW);
    faces=turnTop(faces,CCW);

    faces=turnRight(faces,CCW);
    faces=turnFront(faces,clockwise);
    faces=turnRight(faces,clockwise);
    faces=turnFront(faces,CCW);
end
