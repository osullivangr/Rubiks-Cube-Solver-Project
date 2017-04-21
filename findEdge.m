function [i1,j1,k1,i2,j2,k2,c1,c2] = findEdge(faces, c1, c2)
    for i=1:12
        if i==1
            top=faces(2,3,2).getColor;
            bottom=faces(2,1,3).getColor;
            i1 = 2;
            j1 = 3;
            k1 = 2;
            i2 = 2;
            j2 = 1;
            k2 = 3;
        elseif i==2
            top=faces(2,1,2).getColor;
            bottom=faces(1,2,6).getColor;
            i1 = 2;
            j1 = 1;
            k1 = 2;
            i2 = 1;
            j2 = 2;
            k2 = 6;
        elseif i==3
            top=faces(1,2,2).getColor;
            bottom=faces(2,1,4).getColor;
            i1 = 1;
            j1 = 2;
            k1 = 2;
            i2 = 2;
            j2 = 1;
            k2 = 4;
        elseif i==4
            top=faces(3,2,2).getColor;
            bottom=faces(1,2,1).getColor;
            i1 = 3;
            j1 = 2;
            k1 = 2;
            i2 = 1;
            j2 = 2;
            k2 = 1;
        elseif i==5
            top=faces(3,2,3).getColor;
            bottom=faces(2,3,1).getColor;
            i1 = 3;
            j1 = 2;
            k1 = 3;
            i2 = 2;
            j2 = 3;
            k2 = 1;
        elseif i==6
            top=faces(3,2,4).getColor;
            bottom=faces(1,2,3).getColor;
            i1 = 3;
            j1 = 2;
            k1 = 4;
            i2 = 1;
            j2 = 2;
            k2 = 3;
        elseif i==7
            top=faces(2,1,6).getColor;
            bottom=faces(1,2,4).getColor;
            i1 = 2;
            j1 = 1;
            k1 = 6;
            i2 = 1;
            j2 = 2;
            k2 = 4;
        elseif i==8
            top=faces(2,1,1).getColor;
            bottom=faces(2,3,6).getColor;
            i1 = 2;
            j1 = 1;
            k1 = 1;
            i2 = 2;
            j2 = 3;
            k2 = 6;
        elseif i==9
            top=faces(3,2,1).getColor;
            bottom=faces(2,3,5).getColor;
            i1 = 3;
            j1 = 2;
            k1 = 1;
            i2 = 2;
            j2 = 3;
            k2 = 5;
        elseif i==10
            top=faces(2,3,4).getColor;
            bottom=faces(2,1,5).getColor;
            i1 = 2;
            j1 = 3;
            k1 = 4;
            i2 = 2;
            j2 = 1;
            k2 = 5;
        elseif i==11
            top=faces(3,2,6).getColor;
            bottom=faces(1,2,5).getColor;
            i1 = 3;
            j1 = 2;
            k1 = 6;
            i2 = 1;
            j2 = 2;
            k2 = 5;
        elseif i==12
            top=faces(2,3,3).getColor;
            bottom=faces(3,2,5).getColor;
            i1 = 2;
            j1 = 3;
            k1 = 3;
            i2 = 3;
            j2 = 2;
            k2 = 5;
        end

        % find if the piece in top and bottom is in the correct position
        if (top == c1 && bottom == c2) || (top == c2 && bottom == c1)
            return;
        end
    end
end
