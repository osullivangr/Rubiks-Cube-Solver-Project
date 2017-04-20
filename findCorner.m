function [i1,j1,k1,i2,j2,k2,i3,j3,k3] = findCorner(faces, c1, c2, c3)
    for i=1:8
        if i==1
            top=faces(1,1,2).getColor;
            left=faces(1,1,4).getColor;
            right=faces(1,1,6).getColor;
            i1 = 1;
            j1 = 1;
            k1 = 2;
            i2 = 1;
            j2 = 1;
            k2 = 4;
            i3 = 1;
            j3 = 1;
            k3 = 6;
        elseif i==2
            top=faces(1,3,2).getColor;
            left=faces(1,1,3).getColor;
            right=faces(3,1,4).getColor;
            i1 = 1;
            j1 = 3;
            k1 = 2;
            i2 = 1;
            j2 = 1;
            k2 = 3;
            i3 = 3;
            j3 = 1;
            k3 = 4;
        elseif i==3
            top=faces(3,3,2).getColor;
            left=faces(1,3,1).getColor;
            right=faces(3,1,3).getColor;
            i1 = 3;
            j1 = 3;
            k1 = 2;
            i2 = 1;
            j2 = 3;
            k2 = 1;
            i3 = 3;
            j3 = 1;
            k3 = 3;
        elseif i==4
            top=faces(3,1,2).getColor;
            left=faces(1,3,6).getColor;
            right=faces(1,1,1).getColor;
            i1 = 3;
            j1 = 1;
            k1 = 2;
            i2 = 1;
            j2 = 3;
            k2 = 6;
            i3 = 1;
            j3 = 1;
            k3 = 1;
        elseif i==5
            top=faces(1,3,5).getColor;
            left=faces(3,1,1).getColor;
            right=faces(3,3,6).getColor;
            i1 = 1;
            j1 = 3;
            k1 = 5;
            i2 = 3;
            j2 = 1;
            k2 = 1;
            i3 = 3;
            j3 = 3;
            k3 = 6;
        elseif i==6
            top=faces(3,3,5).getColor;
            left=faces(3,3,3).getColor;
            right=faces(3,3,1).getColor;
            i1 = 3;
            j1 = 3;
            k1 = 5;
            i2 = 3;
            j2 = 3;
            k2 = 3;
            i3 = 3;
            j3 = 3;
            k3 = 1;
        elseif i==7
            top=faces(3,1,5).getColor;
            left=faces(3,3,4).getColor;
            right=faces(1,3,3).getColor;
            i1 = 3;
            j1 = 1;
            k1 = 5;
            i2 = 3;
            j2 = 3;
            k2 = 4;
            i3 = 1;
            j3 = 3;
            k3 = 3;
        elseif i==8
            top=faces(1,1,5).getColor;
            left=faces(3,1,6).getColor;
            right=faces(1,3,4).getColor;
            i1 = 1;
            j1 = 1;
            k1 = 5;
            i2 = 3;
            j2 = 1;
            k2 = 6;
            i3 = 1;
            j3 = 3;
            k3 = 4;
        end
        if (c1 == top || c1 == left || c1 == right) && (c2 == top || c2 == left || c2 == right) && (c3 == top || c3 == left || c3 == right)
            break;
        end
    end
end
