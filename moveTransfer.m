function faces =moveTransfer(faces,position)
% This function takes as input the faces of the cube and the position of
% the buffer piece. It then moves the buffer piece into its correct spot
% There are 24 possible positions for the edge to go to because there
% are 12 edge spots and it could be flipped so 12*2
% The first part before the permutation sets up the perm.
% The second part after the perm undoes the setup.

CW=1; % clockwise
CCW=0; % counter clockwise

switch position
        case 2
            faces=T_perm(faces);
        case 3
            faces=Jb_perm(faces);
        case 4
            faces=Ja_perm(faces);
        case 5
            faces=turnMiddle(faces,CW);
            faces=turnLeft(faces,CCW);
            faces=T_perm(faces);
            faces=turnLeft(faces,CW);
            faces=turnMiddle(faces,CCW);
        case 6
            faces=turnMiddle(faces,CW);
            faces=turnMiddle(faces,CW);
            faces=turnLeft(faces,CCW);
            faces=T_perm(faces);
            faces=turnLeft(faces,CW);
            faces=turnMiddle(faces,CCW);
            faces=turnMiddle(faces,CCW);
        case 7
            faces=turnMiddle(faces,CCW);
            faces=turnLeft(faces,CCW);
            faces=T_perm(faces);      
            faces=turnLeft(faces,CW);
            faces=turnMiddle(faces,CW);
        case 8
            faces=turnLeft(faces,CCW);
            
            faces=T_perm(faces);
            
            faces=turnLeft(faces,CW);
        case 9
            faces=turnFront(faces,CW);
            faces=turnLeft(faces,CCW);
            faces=turnFront(faces,CCW);
            
            faces=T_perm(faces);
            
            faces=turnFront(faces,CW);
            faces=turnLeft(faces,CW);
            faces=turnFront(faces,CCW);
        case 10
            faces=turnBottom(faces,CW);
            faces=turnBottom(faces,CW);
            faces=turnFront(faces,CW);
            faces=turnLeft(faces,CCW);
            faces=turnFront(faces,CCW);
            
            faces=T_perm(faces);
            
            faces=turnFront(faces,CW);
            faces=turnLeft(faces,CW);
            faces=turnFront(faces,CCW);
            faces=turnBottom(faces,CCW);
            faces=turnBottom(faces,CCW);
        case 11
            faces=turnBottom(faces,CW);
            faces=turnFront(faces,CW);
            faces=turnLeft(faces,CCW);
            faces=turnFront(faces,CCW);
            
            faces=T_perm(faces);
            
            faces=turnFront(faces,CW);
            faces=turnLeft(faces,CW);
            faces=turnFront(faces,CCW);
            faces=turnBottom(faces,CCW);
        case 12
            faces=turnBottom(faces,CCW);
            faces=turnFront(faces,CW);
            faces=turnLeft(faces,CCW);
            faces=turnFront(faces,CCW);
            
            faces=T_perm(faces);
            
            faces=turnFront(faces,CW);
            faces=turnLeft(faces,CW);
            faces=turnFront(faces,CCW);
            faces=turnBottom(faces,CW);
        case 14
            faces=turnLeft(faces,CCW);
            faces=turnMiddle(faces,CCW);
            faces=turnBottom(faces,CCW);
            faces=turnLeft(faces,CCW);
            
            faces=T_perm(faces);
            
            faces=turnLeft(faces,CW);
            faces=turnBottom(faces,CW);
            faces=turnMiddle(faces,CW);
            faces=turnLeft(faces,CW);
        case 15
            faces=turnCenter(faces,CCW);
            faces=turnLeft(faces,CW);
            
            faces=Ja_perm(faces);
            
            faces=turnLeft(faces,CCW);
            faces=turnCenter(faces,CW);
        case 16
            faces=turnCenter(faces,CW);
            faces=turnLeft(faces,CCW);
            
            faces=Jb_perm(faces);
            
            faces=turnLeft(faces,CW);
            faces=turnCenter(faces,CCW);
        case 17
            faces=turnMiddle(faces,CW);
            faces=turnMiddle(faces,CW);
            faces=turnLeft(faces,CW);
            
            faces=T_perm(faces);
            
            faces=turnLeft(faces,CCW);
            faces=turnMiddle(faces,CCW);
            faces=turnMiddle(faces,CCW);
        case 18
            faces=turnMiddle(faces,CCW);
            faces=turnLeft(faces,CW);
            
            faces=T_perm(faces);
            
            faces=turnLeft(faces,CCW);
            faces=turnMiddle(faces,CW);
        case 19
            faces=turnLeft(faces,CW);
            
            faces=T_perm(faces);
            
            faces=turnLeft(faces,CCW);
        case 20
            faces=turnMiddle(faces,CW);
            faces=turnLeft(faces,CW);
            
            faces=T_perm(faces);
            
            faces=turnLeft(faces,CCW);
            faces=turnMiddle(faces,CCW);
        case 21
            faces=turnBottom(faces,CCW);
            faces=turnLeft(faces,CW);
            faces=turnLeft(faces,CW);
            
            faces=T_perm(faces);
            
            faces=turnLeft(faces,CCW);
            faces=turnLeft(faces,CCW);
            faces=turnBottom(faces,CW);
        case 22
            faces=turnBottom(faces,CW);
            faces=turnLeft(faces,CW);
            faces=turnLeft(faces,CW);
            
            faces=T_perm(faces);
            
            faces=turnLeft(faces,CCW);
            faces=turnLeft(faces,CCW);
            faces=turnBottom(faces,CCW);
        case 23
            faces=turnLeft(faces,CW);
            faces=turnLeft(faces,CW);
            
            faces=T_perm(faces);
            
            faces=turnLeft(faces,CCW);
            faces=turnLeft(faces,CCW);
        case 24
            faces=turnBottom(faces,CCW);
            faces=turnBottom(faces,CCW);
            faces=turnLeft(faces,CW);
            faces=turnLeft(faces,CW);
            
            faces=T_perm(faces);
            
            faces=turnLeft(faces,CCW);
            faces=turnLeft(faces,CCW);
            faces=turnBottom(faces,CW);
            faces=turnBottom(faces,CW);
end
end
