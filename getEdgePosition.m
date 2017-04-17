function position = getEdgePosition(top,bottom)
% This function takes in the two colors of an edge
% and returns which 'position' it belongs in
% top and bottom are 1 by 3 arrays with the numbers 
% in the arrays corresponding to the color of the piece

R=[1,0,0];
W=[1,1,1];
B=[0,0,1];
G=[0,1,0];
Y=[1,1,0];
O=[1,0.7,0];
if (isequal(top,R) && isequal(bottom,G))
    position=1;
elseif (isequal(top,R) && isequal(bottom,B))
    position=2;
elseif (isequal(top,R) && isequal(bottom,Y))
    position=3;
elseif (isequal(top,R) && isequal(bottom,W))
    position=4;
elseif (isequal(top,G) && isequal(bottom,W))
    position=5;
elseif (isequal(top,Y) && isequal(bottom,G))
    position=6;
elseif (isequal(top,B) && isequal(bottom,Y))
    position=7;
elseif (isequal(top,W) && isequal(bottom,B))
    position=8;
elseif (isequal(top,W) && isequal(bottom,O))
    position=9;
elseif (isequal(top,Y) && isequal(bottom,O))
    position=10;
elseif (isequal(top,B) && isequal(bottom,O))
    position=11;
elseif (isequal(top,G) && isequal(bottom,O))
    position=12;
elseif (isequal(top,G) && isequal(bottom,R))
    position=13;
elseif (isequal(top,B) && isequal(bottom,R))
    position=14;
elseif (isequal(top,Y) && isequal(bottom,R))
    position=15;
elseif (isequal(top,W) && isequal(bottom,R))
    position=16;
elseif (isequal(top,W) && isequal(bottom,G))
    position=17;
elseif (isequal(top,G) && isequal(bottom,Y))
    position=18;
elseif (isequal(top,Y) && isequal(bottom,B))
    position=19;
elseif (isequal(top,B) && isequal(bottom,W))
    position=20;
elseif (isequal(top,O) && isequal(bottom,W))
    position=21;
elseif (isequal(top,O) && isequal(bottom,Y))
    position=22;
elseif (isequal(top,O) && isequal(bottom,B))
    position=23;
elseif (isequal(top,O) && isequal(bottom,G))
    position=24;
else
    position=0;
end
end
