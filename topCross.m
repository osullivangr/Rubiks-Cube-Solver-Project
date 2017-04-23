function faces=topCross(faces)

CW=1;
CCW=0;
num_yellow=0;
side=2;
side_color=[1,0,0];
for i=1:4
    if i<2
    top=faces(i,i+1,side).getColor;
    end
    if i>2
        top=faces(i-(i-3)*2,i-1-(i-3)*2,side).getColor;
    end
    if isequal(top,side_color)
        num_yellow=num_yellow+1;
        position(num_yellow)=i;
    end
end
if num_yellow==2
    if mod(sum(position),2)==0
        if position(1)==1
            faces=turnTop(faces,CW);
            faces=FRURUF(faces);
        else
            faces=FRURUF(faces);
        end
    else
        if position(1)~=1
            faces=turnTop(faces,CCW);
            while ~(isequal(faces(2,1,2).getColor,side_color))
                faces=turnTop(faces,CCW);
            end
            faces=FRURUF(faces);
            faces=FRURUF(faces);
        elseif position(2)==4
            
            faces=FRURUF(faces);
            faces=FRURUF(faces);
            
        else
            faces=turnTop(faces,CW);
            faces=FRURUF(faces);
            faces=FRURUF(faces);
        end
    end
end
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
CW=1;
CCW=0;
faces=turnFront(faces,CW);
faces=turnRight(faces,CW);
faces=turnTop(faces,CW);
faces=turnRight(faces,CCW);
faces=turnTop(faces,CCW);
faces=turnFront(faces,CCW);
end
