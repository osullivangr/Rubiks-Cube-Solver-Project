function faces = doWhiteCross(faces)
    color = [1,0,0;0,0,1;1,0.7,0;0,1,0];
    facesWithColor = [2,6,5,3];
    for i=1:4
        [i1,j1,k1,i2,j2,k2,c1,c2] = findEdge(faces,[1,1,1],color(i));
        if (c1 == color(i) && k1 == 1) || (c2 == color(i) && k2 == 1)
            faces = turnFront(faces, 1);
            faces = turnMiddle(faces, 1);
            faces = turnFront(faces, 1);
        elseif (k1 ~= 4 && k2 ~= 4)
            faces = whiteCrossHelper(faces, color, facesWithColor, i, k1, k2);
        elseif (k1 == 4 || k2 == 4)
            while(k1 ~= facesWithColor(i) || k2 ~= facesWithColor(i))
                faces = turnBottom(faces, 0);
            end
            faces = whiteCrossHelper(faces, color, facesWithColor, i, k1, k2);
        end
    end
end
