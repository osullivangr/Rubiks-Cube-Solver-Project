function faces=T_perm(faces)
% preforms the T algorithm
% [R U R' U'] [R' F] [R2 U' R'] U' [R U R' F']

clockwise=1;
CCW=0;

faces=turnRight(faces,clockwise);
faces=turnTop(faces,clockwise);
faces=turnRight(faces,CCW);
faces=turnTop(faces,CCW);

faces=turnRight(faces,CCW);
faces=turnFront(faces,clockwise);

faces=turnRight(faces,clockwise);
faces=turnRight(faces,clockwise);
faces=turnTop(faces,CCW);
faces=turnRight(faces,CCW);

faces=turnTop(faces,CCW);

faces=turnRight(faces,clockwise);
faces=turnTop(faces,clockwise);
faces=turnRight(faces,CCW);
faces=turnFront(faces,CCW);
