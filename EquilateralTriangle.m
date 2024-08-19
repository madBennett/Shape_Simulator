classdef EquilateralTriangle < Triangle

    properties
        Side
    end

    methods
        function obj = EquilateralTriangle(iSide)
            obj@Triangle();
            if nargin == 0
                obj.Side;
            else
                obj.Side = iSide;
                obj.Base = iSide;
                obj.Hieght = (iSide*3^(0.5))/2;
                obj.Area = obj.CalcArea();
            end
            obj.Name = 'Equilateral Triangle';
        end

        function Display(obj)
            fprintf("The area of %s with side: %.2f " + ...
                "units is %.2f units squared it is color: %s\n", ...
                obj.Name, obj.Side, obj.Area, obj.Color);
        end
    end
end