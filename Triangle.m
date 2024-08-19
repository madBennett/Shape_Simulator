classdef Triangle < Shape & ColorMixin

    properties
        Base
        Hieght
    end

    methods
        function obj = Triangle(iBase,iHieght)
            obj@Shape('Triangle');
            obj@ColorMixin('red');
            if nargin == 0
                obj.Base;
                obj.Hieght;
            else
                obj.Base = iBase;
                obj.Hieght = iHieght;
                obj.Area = obj.CalcArea();
            end

        end

        function outputArg = CalcArea(obj)
            outputArg = 0.5 * obj.Base * obj.Hieght;
        end

        function Display(obj)
            fprintf("The area of %s with base: %.2f units " + ...
                "hieght: %.2f units is %.2f units squared" + ...
                " it is color: %s\n", ...
                obj.Name, obj.Base, obj.Hieght, obj.Area, obj.Color);
        end

        function Draw(obj)
            x = [0, obj.Base/2, obj.Base];
            y = [0, obj.Hieght, 0];
            
            plot(x,y);
            
            area(x,y, 'FaceColor', obj.Color);

            axis ([-obj.Base - 3, obj.Base + 3, -obj.Hieght - 3, ...
                obj.Hieght + 3]);

            title(obj.Name);
            text(-obj.Base, obj.Hieght, {'Base: ', obj.Base});
            text(-obj.Base, obj.Hieght - 2, {'Height: ', obj.Hieght});
            text(-obj.Base, obj.Hieght - 4, {'Area: ', obj.Area});
        end
    end
end