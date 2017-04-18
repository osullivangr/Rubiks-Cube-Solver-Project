function solvedEdges=findSolvedEdges(faces)
% This function finds if any solved edges are in the correct
% places. The output (solvedEdges) is a 1x12 array that contains
% a 0 if the edge corresponding to that position is not solved and
% a 1 if the edge corresponding to that position is solved.
% top and bottom are the corodinates of the i-th position

solvedEdges=zeros(1,12);
for i=1:12
    if i==1
    top=faces(2,3,2).getColor;
    bottom=faces(2,1,3).getColor;
    elseif i==2
    top=faces(2,1,2).getColor;
    bottom=faces(1,2,6).getColor;
    elseif i==3
    top=faces(1,2,2).getColor;
    bottom=faces(2,1,4).getColor;
    elseif i==4
    top=faces(3,2,2).getColor;
    bottom=faces(1,2,1).getColor;
    elseif i==5
    top=faces(3,2,3).getColor;
    bottom=faces(2,3,1).getColor;
    elseif i==6
    top=faces(3,2,4).getColor;
    bottom=faces(1,2,3).getColor;
    elseif i==7
    top=faces(2,1,6).getColor;
    bottom=faces(1,2,4).getColor;
    elseif i==8
    top=faces(2,1,1).getColor;
    bottom=faces(2,3,6).getColor;
    elseif i==9
    top=faces(3,2,1).getColor;
    bottom=faces(2,3,5).getColor;
    elseif i==10
    top=faces(2,3,4).getColor;
    bottom=faces(2,1,5).getColor;
    elseif i==11
    top=faces(3,2,6).getColor;
    bottom=faces(1,2,5).getColor;
    elseif i==12
    top=faces(2,3,3).getColor;
    bottom=faces(3,2,5).getColor;
    end
    
    % find if the piece in top and bottom is in the correct position
    if getPosition(top,bottom)==i
        solvedEdges(i)=1;
    end
end

end
