classdef Square < Rectangle

    properties
        Side
    end

    methods
        function obj = Square(iSide)
            obj@Rectangle();
            if nargin == 0
                obj.Side;
            else
                obj.Side = iSide;
                obj.Length = iSide;
                obj.Width = iSide;
                obj.Area = obj.CalcArea();
            end
            obj.Name = 'Square';
        end

        function Display(obj)
            fprintf("The area of %s with side: %.2f " + ...
                "units is %.2f units squared it is color: %s\n", ...
                obj.Name, obj.Side, obj.Area, obj.Color);
        end
    end
end