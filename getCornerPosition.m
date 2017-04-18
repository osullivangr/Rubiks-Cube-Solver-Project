function position = getCornerPosition(top,left,right)
% This function takes in the three colors of a piece
% and returns which 'position' it belongs in
% The position is determined by the colors on the piece


R=[1,0,0];
W=[1,1,1];
B=[0,0,1];
G=[0,1,0];
Y=[1,1,0];
O=[1,0.7,0];
if (isequal(top,R) && isequal(left,Y) && isequal(right,B))
    position=1;
elseif (isequal(top,R) && isequal(left,G) && isequal(right,Y))
    position=2;
elseif (isequal(top,R) && isequal(left,W) && isequal(right,G))
    position=3;
elseif (isequal(top,R) && isequal(left,B) && isequal(right,W))
    position=4;
elseif (isequal(top,O) && isequal(left,W) && isequal(right,B))
    position=5;
elseif (isequal(top,O) && isequal(left,G) && isequal(right,W))
    position=6;
elseif (isequal(top,O) && isequal(left,Y) && isequal(right,G))
    position=7;
elseif (isequal(top,O) && isequal(left,B) && isequal(right,Y))
    position=8;
elseif (isequal(top,Y) && isequal(left,B) && isequal(right,R))
    position=9;
elseif (isequal(top,G) && isequal(left,Y) && isequal(right,R))
    position=10;
elseif (isequal(top,W) && isequal(left,G) && isequal(right,R))
    position=11;
elseif (isequal(top,B) && isequal(left,W) && isequal(right,R))
    position=12;
elseif (isequal(top,W) && isequal(left,B) && isequal(right,O))
    position=13;
elseif (isequal(top,G) && isequal(left,W) && isequal(right,O))
    position=14;
elseif (isequal(top,Y) && isequal(left,G) && isequal(right,O))
    position=15;
elseif (isequal(top,B) && isequal(left,Y) && isequal(right,O))
    position=16;
elseif (isequal(top,B) && isequal(left,R) && isequal(right,Y))
    position=17;
elseif (isequal(top,Y) && isequal(left,R) && isequal(right,G))
    position=18;
elseif (isequal(top,G) && isequal(left,R) && isequal(right,W))
    position=19;
elseif (isequal(top,W) && isequal(left,R) && isequal(right,B))
    position=20;
elseif (isequal(top,B) && isequal(left,O) && isequal(right,W))
    position=21;
elseif (isequal(top,W) && isequal(left,O) && isequal(right,G))
    position=22;
elseif (isequal(top,G) && isequal(left,O) && isequal(right,Y))
    position=23;
elseif (isequal(top,Y) && isequal(left,O) && isequal(right,B))
    position=24;
else
    position=0;
end
end
