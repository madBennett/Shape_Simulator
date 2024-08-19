classdef Circle < Shape & ColorMixin

    properties
        radius
    end

    methods
        function obj = Circle(iRadius)
            obj@Shape('Circle');
            obj@ColorMixin('red');
            if nargin == 0
                obj.radius;
            else
                obj.radius = iRadius;
                obj.Area = obj.CalcArea();
            end

        end

        function outputArg = CalcArea(obj)
            outputArg = obj.radius * obj.radius * pi;
        end

        function Display(obj)
            fprintf("The area of %s with radius: %.2f units is %.2f " + ...
                "units squared it is color: %s\n", ...
                obj.Name, obj.radius, obj.Area, obj.Color);
        end

        function Draw(obj)
            figure
            rectangle ('Position', [0,0,obj.radius, obj.radius], ...
                'FaceColor', obj.Color, 'Curvature',[1 1]);
            
            axis ([-obj.radius - 3, obj.radius + 3, -obj.radius - 3, ...
                            obj.radius + 3]);

            title(obj.Name);
            text(-obj.radius, obj.radius, {'Radius: ', obj.radius});
            text(-obj.radius, obj.radius-2, {'Area: ', obj.Area});
        end
    end
end