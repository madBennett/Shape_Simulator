classdef ColorMixin
    properties
        Color
    end

    methods
        function obj = ColorMixin(iColor)
            if nargin == 0
                obj.Color;
            else
                obj.Color = iColor;
            end
        end

        function obj = setColor(obj, iColor)
            obj.Color = iColor;
        end

        function value = getColor(obj)
            value = obj.Color;
        end
    end
end