function faces=randomize(faces, N)
% This function randomizes a rubik's cube by choosing a random
% number and turning one of the sides based to this number.
% The amount of turns it does it the input (N)

for i=1:N
    k=randi(12);
    switch k
        case 1
            faces=turnLeft(faces,1);
        case 2
            faces=turnRight(faces,1);
        case 3
            faces=turnTop(faces,1);
        case 4
            faces=turnBottom(faces,1);
        case 5
            faces=turnBack(faces,1);
        case 6
            faces=turnFront(faces,1);
        case 7
            faces=turnLeft(faces,0);
        case 8
            faces=turnRight(faces,0);
        case 9
            faces=turnTop(faces,0);
        case 10
            faces=turnBottom(faces,0);
        case 11
            faces=turnBack(faces,0);
        case 12
            faces=turnFront(faces,0);
    end
end
