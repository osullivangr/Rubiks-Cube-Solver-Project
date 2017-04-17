function [faces,solvedEdges]=solveEdges(faces,solvedEdges)
% This function goes through one loop of edge pieces solving 
% one at a time by switching two edge pieces. The piece that gets
% switched is called the buffer piece. The function ends when the
% buffer piece is the piece that belongs in that spot

% top color of the buffer piece
top=faces(2,3,2).getColor; 
% bottom color of the buffer piece
bottom=faces(2,1,3).getColor;
% find the correct position of the buffer piece
position=getEdgePosition(top,bottom);
% when position==1 OR position==13, the buffer piece is in the right spot
while ~(position==1 || position==13)
    % transfer the buffer piece to its correct place and 
    % switch the piece that was in the buffer spot into the buffer position
    faces=moveTransfer(faces,position);
    
    if position>12
        solvedEdges(position-12)=1;
    elseif position<=12
        solvedEdges(position)=1;
    end
    
    % find the new position of the buffer piece
    top=faces(2,3,2).getColor;
    bottom=faces(2,1,3).getColor;
    position=getEdgePosition(top,bottom);
end

% The 1st position needs to be marked as solved
if position==1
    solvedEdges(position)=1;
end
end
