function faces = doSecondLayer(faces)
    colors = [1,0,0;0,1,0;1,0.7,0;0,0,1];
    for i=1:4
        [~,~,k1,~,~,k2] = findEdge(faces,colors(i,:),colors(mod(i,4)+1,:));
        if(arrayEqual(faces(2,3,1).getColor,faces(2,2,1).getColor)&&arrayEqual(faces(3,2,3).getColor,faces(2,2,3)))
            continue;
        end
        if (k1 ~= 2 && k2 ~= 2)
            disp('!');
            k = 0;
            while (k1~=1||k2~=3)&&(k1~=3||k2~=1)
                faces = rotateCube(faces, 'z');
                k=k+1;
                [~,~,k1,~,~,k2] = findEdge(faces,colors(i,:),colors(mod(i,4)+1,:));
            end
            faces = rightTopToSide(faces);
            while (k < 4)
                faces = rotateCube(faces, 'z');
                k=k+1;
            end
        end
        disp(k1)
        disp(k2)
        while((k1~=1||k2~=2)&&(k1~=2||k2~=1))
            disp('!!');
            faces = turnTop(faces, 1);
            [~,~,k1,~,~,k2] = findEdge(faces,colors(i,:),colors(mod(i,4)+1,:));
        end
        if(~arrayEqual(faces(1,2,1).getColor,faces(2,2,1).getColor))
            disp('!!!');
            faces = turnTop(faces, 0);
            faces = rightTopToSide(faces);
        else
            disp('!!!!');
            faces = frontToSide(faces);
        end
        faces = rotateCube(faces, 'z');
    end
end
