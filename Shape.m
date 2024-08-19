classdef Shape < matlab.mixin.Heterogeneous
    properties
        Name 
        Area 
    end

    methods
        function obj = Shape(iName)
            if nargin == 0
                obj.Name;
            else
                obj.Name = iName;
            end

            obj.Area;
        end

        function Display(obj)
            fprintf('Name: %s\nArea: %d\n', obj.Name, obj.Area);
        end
    end

    methods(Static)
        function CalculateStatistics(allShapes)
            totalArea = [];
            
            for i=1 : length(allShapes)
                totalArea(i) = allShapes(i).Area;
            end

            fprintf(['Mean Area: %.2f\nMeadian Area: %.2f\n' ...
                'Standard Deviation of Areas: %.2f\n'], ...
                mean(totalArea), median(totalArea), std(totalArea));
        end
    end
end