function faces = whiteCrossHelper(faces,colors,i)
    [i1,j1,k1,i2,j2,k2] = findEdge(faces,[1,1,1],colors(i,:));
    while ((k1 ~= 1 || ~arrayEqual(colors(i,:),faces(i1,j1,k1).getColor))&&(k2 ~= 1 || ~arrayEqual(colors(i,:),faces(i2,j2,k2).getColor)))
        faces = turnMiddle(faces, 1);
        [i1,j1,k1,i2,j2,k2] = findEdge(faces,[1,1,1],colors(i,:));
    end
    if(k1 == 1)
        if(k2 == 3)
            faces = turnFront(faces, 0);
        else
            faces = turnFront(faces, 1);
        end
    else
        if(k1 == 3)
            faces = turnFront(faces, 0);
        else
            faces = turnFront(faces, 1);
        end
    end
end
