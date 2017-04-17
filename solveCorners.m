function [faces,solvedCorners]=solveCorners(faces,solvedCorners)
% This function goes through one loop of corner pieces solving 
% one at a time by switching two corner pieces. The piece that gets
% switched is called the buffer piece. The function ends when the
% buffer piece is the piece that belongs in that spot

% find the position of the piece in the buffer spot
top=faces(1,1,2).getColor;
left=faces(1,1,4).getColor;
right=faces(1,1,6).getColor;
position=getCornerPosition(top,left,right);

% end when position==1 OR 9 OR 17
while ~(position==1 || position==9 || position==17)
    faces=moveCorner(faces,position);
    if position>16
        solvedCorners(position-16)=1;
    elseif position>8
        solvedCorners(position-8)=1;
    else
        solvedCorners(position)=1;
    end
    % find the position of the piece in the buffer spot
    top=faces(1,1,2).getColor;
    left=faces(1,1,4).getColor;
    right=faces(1,1,6).getColor;
    position=getCornerPosition(top,left,right);
end

if position==1
    solvedCorners(position)=1;
end
end
