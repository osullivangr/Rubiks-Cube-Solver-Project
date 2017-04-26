function drawCube2(faces, side, clockwise)
    cla;
    p=[];
    for j=1:3
        for k=1:3
            p(j,k,1) = patch([k-2.5,k-1.5,k-1.5,k-2.5],[2.5-j,2.5-j,1.5-j,1.5-j],[1.5,1.5,1.5,1.5],faces(j,k,1).color);
            p(j,k,2) = patch([k-2.5,k-1.5,k-1.5,k-2.5],[1.5,1.5,1.5,1.5],[j-2.5,j-2.5,j-1.5,j-1.5],faces(j,k,2).color);
            p(j,k,3) = patch([1.5,1.5,1.5,1.5],[2.5-k,1.5-k,1.5-k,2.5-k],[j-2.5,j-2.5,j-1.5,j-1.5],faces(j,k,3).color);
            p(j,k,4) = patch([j-2.5,j-1.5,j-1.5,j-2.5],[2.5-k,2.5-k,1.5-k,1.5-k],[-1.5,-1.5,-1.5,-1.5],faces(j,k,4).color);
            p(j,k,5) = patch([j-2.5,j-2.5,j-1.5,j-1.5],[-1.5,-1.5,-1.5,-1.5],[k-2.5,k-1.5,k-1.5,k-2.5],faces(j,k,5).color);
            p(j,k,6) = patch([-1.5,-1.5,-1.5,-1.5],[2.5-j,2.5-j,1.5-j,1.5-j],[k-2.5,k-1.5,k-1.5,k-2.5],faces(j,k,6).color);
        end
    end
    speed = 0.002;
    dir = [1,0,0];
    rotate(p,dir,90);
    axis off;
    axis([-3,3,-3,3,-3,3]);
    if(clockwise)
        clockwise = -2;
    else
        clockwise = 2;
    end
    if(length(side) > 0)
        switch(side)
            case 'right'
                for i=1:2:90
                    rotate(p(:,:,3),[1,0,0],clockwise);
                    rotate(p(:,3,1),[1,0,0],clockwise);
                    rotate(p(3,:,5),[1,0,0],clockwise);
                    rotate(p(3,:,4),[1,0,0],clockwise);
                    rotate(p(:,3,2),[1,0,0],clockwise);
                    pause(speed);
                end
            case 'back'
                for i=1:2:90
                	rotate(p(:,:,4),[0,1,0],clockwise);
                    rotate(p(1,:,2),[0,1,0],clockwise);
                    rotate(p(1,:,3),[0,1,0],clockwise);
                    rotate(p(:,1,5),[0,1,0],clockwise);
                    rotate(p(:,1,6),[0,1,0],clockwise);
                    pause(speed);
                end
            case 'bottom'
                for i=1:2:90
                	rotate(p(:,:,5),[0,0,-1],clockwise);
                    rotate(p(3,:,1),[0,0,-1],clockwise);
                    rotate(p(3,:,6),[0,0,-1],clockwise);
                    rotate(p(:,3,4),[0,0,-1],clockwise);
                    rotate(p(:,3,3),[0,0,-1],clockwise);
                    pause(speed);
                end
            case 'left'
                for i=1:2:90
                    rotate(p(:,:,6),[-1,0,0],clockwise);
                    rotate(p(:,1,1),[-1,0,0],clockwise);
                    rotate(p(:,1,2),[-1,0,0],clockwise);
                    rotate(p(1,:,4),[-1,0,0],clockwise);
                    rotate(p(1,:,5),[-1,0,0],clockwise);
                    pause(speed);
                end
            case 'front'
                for i=1:2:90
                	rotate(p(:,:,1),[0,-1,0],clockwise);
                    rotate(p(3,:,2),[0,-1,0],clockwise);
                    rotate(p(:,3,6),[0,-1,0],clockwise);
                    rotate(p(:,3,5),[0,-1,0],clockwise);
                    rotate(p(3,:,3),[0,-1,0],clockwise);
                    pause(speed);
                end
            case 'top'
                for i=1:2:90
                	rotate(p(:,:,2),[0,0,1],clockwise);
                    rotate(p(1,:,1),[0,0,1],clockwise);
                    rotate(p(:,1,3),[0,0,1],clockwise);
                    rotate(p(:,1,4),[0,0,1],clockwise);
                    rotate(p(1,:,6),[0,0,1],clockwise);
                    pause(speed);
                end
        end
    end
end
