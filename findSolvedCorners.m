function solvedCorners=findSolvedCorners(faces)
% This function finds if any solved corners are in the correct
% places. The output (solvedCorners) is a 1x8 array that contains
% a 0 if the corner corresponding to that position is not solved and
% a 1 if the corner corresponding to that position is solved.
% top and left and right are the corodinates of the i-th solved position


solvedCorners=zeros(1,8);
for i=1:8
    if i==1
    top=faces(1,1,2).getColor;
    left=faces(1,1,4).getColor;
    right=faces(1,1,6).getColor;
    elseif i==2
    top=faces(1,3,2).getColor;
    left=faces(1,1,3).getColor;
    right=faces(3,1,4).getColor;
    elseif i==3
    top=faces(3,3,2).getColor;
    left=faces(1,3,1).getColor;
    right=faces(3,1,3).getColor;
    elseif i==4
    top=faces(3,1,2).getColor;
    left=faces(1,3,6).getColor;
    right=faces(1,1,1).getColor;
    elseif i==5
    top=faces(1,3,5).getColor;
    left=faces(3,1,1).getColor;
    right=faces(3,3,6).getColor;
    elseif i==6
    top=faces(3,3,5).getColor;
    left=faces(3,3,3).getColor;
    right=faces(3,3,1).getColor;
    elseif i==7
    top=faces(3,1,5).getColor;
    left=faces(3,3,4).getColor;
    right=faces(1,3,3).getColor;
    elseif i==8
    top=faces(1,1,5).getColor;
    left=faces(3,1,6).getColor;
    right=faces(1,3,4).getColor;
    end
    if getCornerPosition(top,left,right)==i
        solvedCorners(i)=1;
    end
end

end
