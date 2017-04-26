function faces=solveWithWhiteCrossMethod(faces)
global num_turn
num_turn=0;
faces = rotateCube(faces, 'x');
faces = rotateCube(faces, 'z');
faces = rotateCube(faces, 'z');
faces = randomize(faces, 20);
faces = doWhiteCross(faces);
faces = doWhiteCorners(faces);
faces = rotateCube(faces, 'x');
faces = rotateCube(faces, 'x');
faces = rotateCube(faces, 'z');
faces = rotateCube(faces, 'z');
faces = doSecondLayer(faces);
faces = topCross(faces);
faces = orientEdges(faces);
faces = placeYellowCorners(faces);
faces = orientTopCorners(faces);

