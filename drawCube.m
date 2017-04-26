function drawCube(faces, handles)
    cla
    p=[];
    for j=1:3
        for k=1:3
            p(j,k,1) = patch(handles.plotCube, [k-2.5,k-1.5,k-1.5,k-2.5],[2.5-j,2.5-j,1.5-j,1.5-j],[1.5,1.5,1.5,1.5],faces(j,k,1).color);
            p(j,k,2) = patch(handles.plotCube, [k-2.5,k-1.5,k-1.5,k-2.5],[1.5,1.5,1.5,1.5],[j-2.5,j-2.5,j-1.5,j-1.5],faces(j,k,2).color);
            p(j,k,3) = patch(handles.plotCube, [1.5,1.5,1.5,1.5],[2.5-k,1.5-k,1.5-k,2.5-k],[j-2.5,j-2.5,j-1.5,j-1.5],faces(j,k,3).color);
            p(j,k,4) = patch(handles.plotCube, [j-2.5,j-1.5,j-1.5,j-2.5],[2.5-k,2.5-k,1.5-k,1.5-k],[-1.5,-1.5,-1.5,-1.5],faces(j,k,4).color);
            p(j,k,5) = patch(handles.plotCube, [j-2.5,j-2.5,j-1.5,j-1.5],[-1.5,-1.5,-1.5,-1.5],[k-2.5,k-1.5,k-1.5,k-2.5],faces(j,k,5).color);
            p(j,k,6) = patch(handles.plotCube, [-1.5,-1.5,-1.5,-1.5],[2.5-j,2.5-j,1.5-j,1.5-j],[k-2.5,k-1.5,k-1.5,k-2.5],faces(j,k,6).color);
        end
    end
    dir = [0.95,-0.6,0];
    dir = [1,0,0];
    rotate(p,dir,90);
    axis off;
    axis([-3,3,-3,3,-3,3]);
end
