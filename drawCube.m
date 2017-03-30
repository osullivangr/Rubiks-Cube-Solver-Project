% drawCube.m
function drawCube(faces)
    for j=1:3
        for k=1:3
            patch([k-1,k,k,k-1],[4-j,4-j,3-j,3-j],[3,3,3,3],faces(j,k,1).color);
            patch([k-1,k,k,k-1],[3,3,3,3],[j-1,j-1,j,j],faces(j,k,2).color);
            patch([3,3,3,3],[4-k,3-k,3-k,4-k],[j-1,j-1,j,j],faces(j,k,3).color);
            patch([j-1,j,j,j-1],[4-k,4-k,3-k,3-k],[0,0,0,0],faces(j,k,4).color);
            patch([j-1,j-1,j,j],[0,0,0,0],[k-1,k,k,k-1],faces(j,k,5).color);
            patch([0,0,0,0],[4-j,4-j,3-j,3-j],[k-1,k,k,k-1],faces(j,k,6).color);
        end
    end
end
