function faces = doWhiteCross(faces)
    colors = [1,0,0;0,0,1;1,0.7,0;0,1,0];
    for i=1:4
        [~,~,k1,~,~,k2] = findEdge(faces,[1,1,1],colors(i,:));
        if (k1 == 5 || k2 == 5)
            while(k1 ~= 1 && k2 ~= 1)
                faces = turnBottom(faces, 1);
                [~,~,k1,~,~,k2] = findEdge(faces,[1,1,1],colors(i,:));
            end
            faces = turnFront(faces, 1);
            faces = whiteCrossHelper(faces,colors,i);
        elseif (k1 == 2 || k2 == 2)
            if(k1 == 1 || k2 == 1)
                faces = turnFront(faces, 1);
            elseif(k1 == 3 || k2 == 3)
                faces = turnRight(faces, 1);
            elseif(k1 == 4 || k2 == 4)
                faces = turnBack(faces, 1);
            else
                faces = turnLeft(faces, 1);
            end
            faces = whiteCrossHelper(faces,colors,i);
        else
            faces = whiteCrossHelper(faces,colors,i);
        end
        faces = rotateCube(faces, 'z');
    end
    while(~arrayEqual(faces(2,2,1).getColor,[1,0,0]))
        faces = turnMiddle(faces, 1);
    end
end
