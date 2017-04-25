function faces = orientTopCorners(faces)
    for i=1:4
        while ~arrayEqual(faces(3,3,2).getColor,[1,1,0])
            faces = turnRight(faces, 0);
            faces = turnBottom(faces, 0);
            faces = turnRight(faces, 1);
            faces = turnBottom(faces, 1);
        end
        faces = turnTop(faces, 1);
    end
end
