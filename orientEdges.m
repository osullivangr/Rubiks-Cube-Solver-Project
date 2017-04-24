function faces = orientEdges(faces)
    while (~arrayEqual(faces(1,2,1).getColor,[1,0,0]))
        faces = turnTop(faces, 0);
    end
    colors = [faces(1,2,1).getColor;faces(2,1,3).getColor;faces(2,1,4).getColor;faces(1,2,6).getColor];
    if(arrayEqual(colors(2,:),[0,1,0]) && arrayEqual(colors(3,:),[1,0.7,0]))
        return;
    end
    if(arrayEqual(colors(3,:),[1,0.7,0]))
        faces = turnTop(faces, 1);
        faces = orientCrossEdges(faces);
        while (~arrayEqual(faces(1,2,1).getColor,[1,0,0]))
            faces = turnTop(faces, 0);
        end
    end
    colors = [faces(1,2,1).getColor;faces(2,1,3).getColor;faces(2,1,4).getColor;faces(1,2,6).getColor];
    correctColors = [1,0,0;0,1,0;1,0.7,0;0,0,1];
    for i=1:4
        for j=1:4
            if arrayEqual(colors(i,:),correctColors(j,:))
                if arrayEqual(colors(mod(i,4)+1,:),correctColors(mod(j,4)+1,:))
                    if i==1
                        faces = turnTop(faces, 0);
                    elseif i==3
                        faces = turnTop(faces, 1);
                    elseif i==4
                        faces = turnTop(faces, 1);
                        faces = turnTop(faces, 1);
                    end
                end
            end
        end
    end
    faces = orientCrossEdges(faces);
    while(~arrayEqual(faces(1,2,1).getColor,[1,0,0]))
        faces = turnTop(faces, 1);
    end
end
