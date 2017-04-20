function faces=Jb_perm(faces)
    % preforms the Y algorithm
    % U' [R' U L'] [U2 R U' R' U2] [R L]

    clockwise=1;
    CCW=0;

    faces=turnTop(faces,CCW);

    faces=turnRight(faces,CCW);
    faces=turnTop(faces,clockwise);
    faces=turnLeft(faces,CCW);

    faces=turnTop(faces,clockwise);
    faces=turnTop(faces,clockwise);
    faces=turnRight(faces,clockwise);
    faces=turnTop(faces,CCW);
    faces=turnRight(faces,CCW);
    faces=turnTop(faces,CCW);
    faces=turnTop(faces,CCW);

    faces=turnRight(faces,clockwise);
    faces=turnLeft(faces,clockwise);
end
