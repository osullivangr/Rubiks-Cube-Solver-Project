classdef Color
    properties
        color
    end
    methods
        function obj = Color(color)
            obj.color = color;
        end
        function color = getColor(obj)
            color = obj.color;
        end
    end
end
