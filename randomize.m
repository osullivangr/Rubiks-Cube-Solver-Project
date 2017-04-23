function faces=randomize(faces, N)
    % This function randomizes a rubik's cube by choosing a random
    % number and turning one of the sides based to this number.
    % The amount of turns it does it the input (N)

    for i=1:N
        k=randi(6);
        switch k
            case 1
                faces=turnLeft(faces,randi(2)-1);
            case 2
                faces=turnRight(faces,randi(2)-1);
            case 3
                faces=turnTop(faces,randi(2)-1);
            case 4
                faces=turnBottom(faces,randi(2)-1);
            case 5
                faces=turnBack(faces,randi(2)-1);
            case 6
                faces=turnFront(faces,randi(2)-1);
        end
    end
end
