function faces =moveCorner(faces,position)
% This function takes as input the faces of the cube and the position of
% the buffer piece. It then moves the buffer piece into its correct spot
% There are 24 possible positions for the corners to go to because there
% are 8 corners spots and it could be flipped 3 ways so 8*3
% The first part before the permutation sets up the perm.
% The second part after the perm undoes the setup.

CW=1;  % clockwise
CCW=0; % counter clockwise

switch position
    case 2
        faces=turnTop(faces,CW);
        
        faces=Jb_perm(faces);
        
        faces=turnTop(faces,CCW);
    case 3
        faces=Y_perm(faces);
    case 4
        faces=turnTop(faces,CCW);
        faces=turnTop(faces,CCW);
        
        faces=Ja_perm(faces);
        
        faces=turnTop(faces,CCW);
        faces=turnTop(faces,CCW);
    case 5
        faces=turnFront(faces,CW);
        faces=turnFront(faces,CW);
        faces=Y_perm(faces);
        faces=turnFront(faces,CW);
        faces=turnFront(faces,CW);
    case 6
        faces=turnBottom(faces,CCW);
        faces=turnFront(faces,CW);
        faces=turnFront(faces,CW);
        faces=Y_perm(faces);
        faces=turnFront(faces,CW);
        faces=turnFront(faces,CW);
        faces=turnBottom(faces,CW);
    case 7
        faces=turnRight(faces,CCW);
        faces=turnRight(faces,CCW);
        faces=Y_perm(faces);
        faces=turnRight(faces,CW);
        faces=turnRight(faces,CW);
    case 8
        faces=turnBottom(faces,CW);
        faces=turnFront(faces,CW);
        faces=turnFront(faces,CW);
        faces=Y_perm(faces);
        faces=turnFront(faces,CW);
        faces=turnFront(faces,CW);
        faces=turnBottom(faces,CCW);
        
    case 10
        faces=turnRight(faces,CW);
        faces=turnRight(faces,CW);
        faces=turnFront(faces,CCW);
        
        faces=Y_perm(faces);
        
        faces=turnFront(faces,CW);
        faces=turnRight(faces,CCW);
        faces=turnRight(faces,CCW);
    case 11
        faces=turnFront(faces,CW);
        faces=turnRight(faces,CW);
        
        faces=Y_perm(faces);
        
        faces=turnRight(faces,CCW);
        faces=turnFront(faces,CCW);
    case 12
        faces=turnFront(faces,CW);
        
        faces=Y_perm(faces);
        
        faces=turnFront(faces,CCW);
    case 13
        faces=turnBottom(faces,CW);
        faces=turnFront(faces,CCW);
        
        faces=Y_perm(faces);
        
        faces=turnFront(faces,CW);
        faces=turnBottom(faces,CCW);
    case 14
        faces=turnFront(faces,CCW);
        
        faces=Y_perm(faces);
        
        faces=turnFront(faces,CW);
    case 15
        faces=turnBottom(faces,CCW);
        faces=turnFront(faces,CCW);
        
        faces=Y_perm(faces);
        
        faces=turnFront(faces,CW);
        faces=turnBottom(faces,CW);
    case 16
        faces=turnBottom(faces,CCW);
        faces=turnBottom(faces,CCW);
        faces=turnFront(faces,CCW);
        
        faces=Y_perm(faces);
        
        faces=turnFront(faces,CW);
        faces=turnBottom(faces,CW);
        faces=turnBottom(faces,CW);
    case 18
        faces=turnRight(faces,CCW);
        
        faces=Y_perm(faces);
        
        faces=turnRight(faces,CW);
    case 19
        faces=turnRight(faces,CCW);
        faces=turnFront(faces,CCW);
        
        faces=Y_perm(faces);
        
        faces=turnFront(faces,CW);
        faces=turnRight(faces,CW);
    case 20
        faces=turnFront(faces,CW);
        faces=turnFront(faces,CW);
        faces=turnRight(faces,CW);
        
        faces=Y_perm(faces);
        
        faces=turnRight(faces,CCW);
        faces=turnFront(faces,CCW);
        faces=turnFront(faces,CCW);
    case 21
        faces=turnBottom(faces,CW);
        faces=turnRight(faces,CW);
        
        faces=Y_perm(faces);
        
        faces=turnRight(faces,CCW);
        faces=turnBottom(faces,CCW);
    case 22
        faces=turnRight(faces,CW);
        
        faces=Y_perm(faces);
        
        faces=turnRight(faces,CCW);
    case 23
        faces=turnBottom(faces,CCW);
        faces=turnRight(faces,CW);
        
        faces=Y_perm(faces);
        
        faces=turnRight(faces,CCW);
        faces=turnBottom(faces,CW);
    case 24
        faces=turnBottom(faces,CCW);
        faces=turnBottom(faces,CCW);
        faces=turnRight(faces,CW);
        
        faces=Y_perm(faces);
        
        faces=turnRight(faces,CCW);
        faces=turnBottom(faces,CW);
        faces=turnBottom(faces,CW);
end
end
