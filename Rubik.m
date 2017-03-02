% Rubik.m
%
% Write a class that contains a Rubik's cube.
%
% Michael Moynihan

classdef Rubik
    properties
        cubes = [cube(0,0,0,1),cube(0,0,0,1),cube(0,0,0,1);
                cube(0,0,0,1),cube(0,0,0,1),cube(0,0,0,1);
                cube(0,0,0,1),cube(0,0,0,1),cube(0,0,0,1)];
    end
    methods
        function obj = Rubik()
            obj.cubes(:,:,2) = [cube(0,0,0,1),cube(0,0,0,1),cube(0,0,0,1);
                cube(0,0,0,1),cube(0,0,0,1),cube(0,0,0,1);
                cube(0,0,0,1),cube(0,0,0,1),cube(0,0,0,1)];
            obj.cubes(:,:,3) = [cube(0,0,0,1),cube(0,0,0,1),cube(0,0,0,1);
                cube(0,0,0,1),cube(0,0,0,1),cube(0,0,0,1);
                cube(0,0,0,1),cube(0,0,0,1),cube(0,0,0,1)];
            for i=1:3
                for j=1:3
                    for k=1:3
                        obj.cubes(k, j, i) = cube(i-2.5, j-2.5, k-2.5 , 1);
                    end
                end
            end
        end
        function draw(obj)
            for i=1:3
                for j=1:3
                    for k=1:3
                        obj.cubes(i,j,k).draw();
                    end
                end
            end
            axis([-2,2,-2,2,-2,2]);
            axis square;
            set(gca,'visible','off');
        end
%        function rotateFace(centerColor, clockWise)
%             switch(centerColor)
%                 case 1
%                     if (clockWise)
%                         newLayer = [cube(0,0,0,1,zeros(6,3))];
%                         k = 3;
%                         for i=1:3
%                             for j=1:3
%                                 newLayer(j, i) = 
%                             end
%        end
    end
end