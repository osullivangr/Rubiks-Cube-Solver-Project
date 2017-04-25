function faces = placeYellowCorners(faces)
    colors = [1,0,0;0,1,0;1,0.7,0;0,0,1];
    transfer = 0;
    [~,~,k11,~,~,k21,~,~,k31] = findCorner(faces,[1,1,0],colors(mod(transfer,4)+1,:),colors(mod(transfer+1,4)+1,:));
    [~,~,k12,~,~,k22,~,~,k32] = findCorner(faces,[1,1,0],colors(mod(transfer+1,4)+1,:),colors(mod(transfer+2,4)+1,:));
    [~,~,k13,~,~,k23,~,~,k33] = findCorner(faces,[1,1,0],colors(mod(transfer+2,4)+1,:),colors(mod(transfer+3,4)+1,:));
    [~,~,k14,~,~,k24,~,~,k34] = findCorner(faces,[1,1,0],colors(mod(transfer+3,4)+1,:),colors(mod(transfer,4)+1,:));
    if (isThere(k11,k21,k31,1,2,3) && isThere(k12,k22,k23,2,3,4))
        return;
    elseif (~isThere(k11,k21,k31,1,2,3) && ~isThere(k12,k22,k32,2,3,4) && ~isThere(k13,k23,k33,2,4,6) && ~isThere(k14,k24,k34,1,2,6))
        faces = topCornerPermute(faces);
    end
    [~,~,k11,~,~,k21,~,~,k31] = findCorner(faces,[1,1,0],colors(mod(transfer,4)+1,:),colors(mod(transfer+1,4)+1,:));
    [~,~,k12,~,~,k22,~,~,k32] = findCorner(faces,[1,1,0],colors(mod(transfer+1,4)+1,:),colors(mod(transfer+2,4)+1,:));
    [~,~,k13,~,~,k23,~,~,k33] = findCorner(faces,[1,1,0],colors(mod(transfer+2,4)+1,:),colors(mod(transfer+3,4)+1,:));
    [~,~,k14,~,~,k24,~,~,k34] = findCorner(faces,[1,1,0],colors(mod(transfer+3,4)+1,:),colors(mod(transfer,4)+1,:));
    if isThere(k12,k22,k32,2,3,4)
        faces = rotateCube(faces, 'z');
        transfer = 1;
    elseif isThere(k13,k23,k33,2,4,6)
        faces = rotateCube(faces, 'z');
        faces = rotateCube(faces, 'z');
        transfer = 2;
    elseif isThere(k14,k24,k34,1,2,6)
        faces = rotateCube(faces, 'zprime');
        transfer = 3;
    end
    [~,~,k11,~,~,k21,~,~,k31] = findCorner(faces,[1,1,0],colors(mod(transfer,4)+1,:),colors(mod(transfer+1,4)+1,:));
    [~,~,k12,~,~,k22,~,~,k32] = findCorner(faces,[1,1,0],colors(mod(transfer+1,4)+1,:),colors(mod(transfer+2,4)+1,:));
    [~,~,k13,~,~,k23,~,~,k33] = findCorner(faces,[1,1,0],colors(mod(transfer+2,4)+1,:),colors(mod(transfer+3,4)+1,:));
    [~,~,k14,~,~,k24,~,~,k34] = findCorner(faces,[1,1,0],colors(mod(transfer+3,4)+1,:),colors(mod(transfer,4)+1,:));
    while ~(isThere(k11,k21,k31,1,2,3) && isThere(k12,k22,k32,2,3,4))
        faces = topCornerPermute(faces);
        [~,~,k11,~,~,k21,~,~,k31] = findCorner(faces,[1,1,0],colors(mod(transfer,4)+1,:),colors(mod(transfer+1,4)+1,:));
        [~,~,k12,~,~,k22,~,~,k32] = findCorner(faces,[1,1,0],colors(mod(transfer+1,4)+1,:),colors(mod(transfer+2,4)+1,:));
        [~,~,k13,~,~,k23,~,~,k33] = findCorner(faces,[1,1,0],colors(mod(transfer+2,4)+1,:),colors(mod(transfer+3,4)+1,:));
        [~,~,k14,~,~,k24,~,~,k34] = findCorner(faces,[1,1,0],colors(mod(transfer+3,4)+1,:),colors(mod(transfer,4)+1,:));
    end
end
