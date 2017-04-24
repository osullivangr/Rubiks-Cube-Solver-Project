function faces=topCross(faces)

CW=1;           % clockwise
CCW=0;          % counterclockwise
num_yellow=0;   % this is the number of yellow pieces on the top
side=2;         % this is the side of the top face
side_color=faces(2,2,side).getColor;    % color of the 'side'; here it is the top
%% for loop to find number of yellow pieces on top
for i=1:4
% I need the indices (1,2,2) (2,3,2) (2,1,2) (3,2,2) for the edges
% I work out around the cube clockwise working through the indices in the order above
    if i<=2
        % get the color of the edge piece
        top=faces(i,i+1,side).getColor;
    end
    if i>2
        % get the color of the edge piece
        top=faces(i-(i-3)*2,i-1-(i-3)*2,side).getColor;
    end
    % if statement tocheck to see if the edge is the right color
    if isequal(top,side_color) 
        num_yellow=num_yellow+1; % add one to num_yellow if it is right color
        position(num_yellow)=i; % add the position of the color
    end
end
%% if statements to solve for the yellow cross
% num_yellow will either be 0,2,4 depeneding on the case
if num_yellow==2
    % if two yellow pieces are adjacent then position will have
    % [1,2],[2,3],[3,4],or [1,4]; the sum of position is odd
    % otherwise the sum of position is even
    if mod(sum(position),2)==0
        % for sum of position even, there are two cases
        % case 1, if the first position is yellow top needs to be turned
        if position(1)==1 
            faces=turnTop(faces,CW);
            faces=FRURUF(faces);
        else
            faces=FRURUF(faces);
        end
    else
        % there are three general cases if sum of position is odd
        % case 1, the first position is not yellow
        if position(1)~=1
            % position=[2,3] OR [3,4]
            faces=turnTop(faces,CCW);
            % while loop orients the top to the correct spot
            while ~(isequal(faces(2,1,2).getColor,side_color))
                faces=turnTop(faces,CCW);
            end
            faces=FRURUF(faces);
            faces=FRURUF(faces);
        % position(1)==1 there are two cases for position[1,2],[1,4]
        elseif position(2)==4
            % case position=[1,4]
            faces=FRURUF(faces);
            faces=FRURUF(faces);
            
        else
            % case position=[1,2]
            faces=turnTop(faces,CW);
            faces=FRURUF(faces);
            faces=FRURUF(faces);
        end
    end
end
% finally num_yellow could be 0 or 4
% 4 is a solved cube so we only have to do case 0
% if num_yellow==0 it is the same no matter how the cube is turned
if num_yellow==0
    faces=FRURUF(faces);
    faces=turnTop(faces,CCW);
    faces=turnTop(faces,CCW);
    faces=FRURUF(faces);
    faces=FRURUF(faces);
end
end

function faces=FRURUF(faces)
% F R U R' U' F'
% this is the general function to solve for the yellow cross
CW=1;
CCW=0;
faces=turnFront(faces,CW);
faces=turnRight(faces,CW);
faces=turnTop(faces,CW);
faces=turnRight(faces,CCW);
faces=turnTop(faces,CCW);
faces=turnFront(faces,CCW);
end
