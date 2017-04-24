function faces = doWhiteCorners(faces)
    colors = [1,0,0;0,0,1;1,0.7,0;0,1,0];
    for i=1:4
        [~,~,k1,~,~,k2,~,~,k3] = findCorner(faces,[1,1,1],colors(i,:),colors(mod(i,4)+1,:));
        if(k1 == 2 || k2 == 2 || k3 == 2)
            if(k1 == 3 || k2 == 3 || k3 == 3)
                if(k1 == 1 || k2 == 1 || k3 == 1)
                    faces = turnRight(faces, 0);
                    faces = turnBottom(faces, 1);
                    faces = turnRight(faces, 1);
                else
                    faces = turnBack(faces, 0);
                    faces = turnBottom(faces, 1);
                    faces = turnBack(faces, 1);
                end
            else
                if(k1 == 4 || k2 == 4 || k3 == 4)
                    faces = turnLeft(faces, 0);
                    faces = turnBottom(faces, 1);
                    faces = turnLeft(faces, 1);
                else
                    faces = turnFront(faces, 0);
                    faces = turnBottom(faces, 1);
                    faces = turnFront(faces, 1);
                end
            end
        end
        while (k1 ~= 1 && k2 ~= 1 && k3 ~= 1) || (k1 ~= 3 && k2 ~= 3 && k3 ~= 3)
            faces = turnBottom(faces, 1);
            [~,~,k1,~,~,k2,~,~,k3] = findCorner(faces,[1,1,1],colors(i,:),colors(mod(i,4)+1,:));
        end
        while ~arrayEqual(faces(1,3,1).getColor,colors(i,:)) || ~arrayEqual(faces(3,3,2).getColor,[1,1,1]) || ~arrayEqual(faces(3,1,3).getColor,colors(mod(i,4)+1,:))
            faces = turnRight(faces, 0);
            faces = turnBottom(faces, 0);
            faces = turnRight(faces, 1);
            faces = turnBottom(faces, 1);
            [~,~,k1,~,~,k2,~,~,k3] = findCorner(faces,[1,1,1],colors(i,:),colors(mod(i,4)+1,:));
        end
        faces = rotateCube(faces, 'z');
    end
end
