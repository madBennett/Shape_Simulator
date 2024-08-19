classdef Rectangle < Shape & ColorMixin

    properties
        Length
        Width
    end

    methods
        function obj = Rectangle(iLength,iWidth)
            obj@Shape('Rectangle');
            obj@ColorMixin('red');
            if nargin == 0
                obj.Length;
                obj.Width;
            else
                obj.Length = iLength;
                obj.Width = iWidth;
                obj.Area = obj.CalcArea();
            end

        end

        function outputArg = CalcArea(obj)
            outputArg = obj.Length * obj.Width;
        end

        function Display(obj)
            fprintf("The area of %s with length: %.2f units " + ...
                "width: %.2f units is %.2f units squared it is " + ...
                "color: %s\n", ...
                obj.Name, obj.Length, obj.Width, obj.Area, obj.Color);
        end

        function Draw(obj)
            figure
            rectangle ('Position', [0,0,obj.Length, obj.Width], 'FaceColor', obj.Color);
            
            axis ([-obj.Length - 3, obj.Length + 3, -obj.Width - 3, ...
                obj.Width + 3]);

            title(obj.Name);
            text(-obj.Length, obj.Width, {'Length: ', obj.Length});
            text(-obj.Length, obj.Width - 2, {'Width: ', obj.Width});
            text(-obj.Length, obj.Width - 4, {'Area: ', obj.Area});
        end
    end
end