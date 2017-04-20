function faces = whiteCrossHelper(faces,color,facesWithColor,i,k1,k2)
    while(k1 ~= facesWithColor(i) || k2 ~= facesWithColor(i))
        faces = turnMiddle(faces, 1);
        [~,~,k1,~,~,k2,~,~] = findEdge(faces,[1,1,1],color(i));
    end
    if(k1 == facesWithColor(i))
        if(k2 == facesWithColor(MOD(i, 4)+1))
            faces = turnFront(faces, 0);
        else
            faces = turnFront(faces, 1);
        end
    else
        if(k1 == facesWithColor(MOD(i, 4)+1))
            faces = turnFront(faces, 0);
        else
            faces = turnFront(faces, 1);
        end
    end
end
