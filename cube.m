% Cube.m
%
% Make a class that keeps track of and draws a cube.
%
% Michael Moynihan

classdef cube
    properties
        X
        Y
        Z
        s
        colors
        vertices
        faces
    end
    methods
        function obj = cube(X, Y, Z, s, colors)
            obj.X = X;
            obj.Y = Y;
            obj.Z = Z;
            obj.s = s;
            obj.colors = colors;
            obj.vertices = [
                obj.X, obj.Y, obj.Z+obj.s;
                obj.X+obj.s, obj.Y, obj.Z+obj.s;
                obj.X+obj.s, obj.Y+obj.s, obj.Z+obj.s;
                obj.X, obj.Y+obj.s, obj.Z+obj.s;
                obj.X, obj.Y, obj.Z;
                obj.X+obj.s, obj.Y, obj.Z;
                obj.X+obj.s, obj.Y+obj.s, obj.Z;
                obj.X, obj.Y+obj.s, obj.Z
            ];
            obj.faces = [
                1, 2, 3, 4;   % Parallel to X, Y plane above X, Y
                3, 4, 8, 7;   % Parallel to X, Z plane above X, Z
                4, 1, 5, 8;   % Parallel to Y, Z plane above Y, Z
                5, 6, 7, 8;   % Parallel to X, Y plane at X, Y
                1, 2, 6, 5;   % Parallel to X, Z plane at X, Z
                2, 3, 7, 6;   % Parallel to Y, Z plane at Y, Z
            ];
        end
        function draw(obj)
            for i=1:6
                patch('Faces',obj.faces(i,:),'Vertices',obj.vertices,'FaceColor',obj.colors(i,:));
            end
        end
    end
end