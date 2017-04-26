function faces=blindfold(faces)
    % This function takes a scrambled version of faces and returns
    % the solved version using the blindfold method.
    % This function assumes that white is on the face and red is on top

global num_turn
num_turn=0;
    %% while loop to solve edges
    solved=false; % assume edges not solved
    % Find what edges are solved
    solvedEdges=findSolvedEdges(faces);
    while ~solved
        if any(solvedEdges==0) % find if edges need to be solved
            solved=false;
            % pick a not solved edge to solve
            notsolved=find(solvedEdges==0);
            % if not-solved edge is buffer piece pick second not-solved edge
            if notsolved(1)==1
                faces=moveTransfer(faces,notsolved(2));
            else
                faces=moveTransfer(faces,notsolved(1));
            end
            % run the edge solving program
            [faces,solvedEdges]=solveEdges(faces,solvedEdges);
        else
            % set to true if all edges are solved
            solved=true;
        end
    end

    %% while loop to solve corners
    solved = false; % assume corners are not solved
    % find what cornenrs are solved
    solvedCorners=findSolvedCorners(faces);
    while ~solved
        if any(solvedCorners==0)
            solved=false;
            notsolved=find(solvedCorners==0);
            % if not-solved corner is buffer piece pick second not-solved
            % not-solved corner
            if notsolved(1)==1
                faces=moveCorner(faces,notsolved(2));
            else
                faces=moveCorner(faces,notsolved(1));
            end 
            % run corner solving program
            [faces,solvedCorners]=solveCorners(faces,solvedCorners);
        else
            % set to true if all corners are solved
            solved=true;
        end
    end
end
