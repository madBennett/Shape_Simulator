while (true)
    prompt = "\n\nChoose Shape:\n1. Rectangle\n2. Circle\n" + ...
        "3. Tringle\n4. Equilateral Triangle\n5. Square\n" + ...
        "6. Quit\n\nYour Choice: ";
    choice = input(prompt);

    switch choice
        case 1 % Rectangle
            Length = input("Enter Length: ");
            Width = input("Enter Width: ");

            color = selectColor();

            rect = Rectangle(Length, Width);
            rect = rect.setColor(color);
            rect.Display;
            rect.Draw;
        case 2 % Circle
            Radius = input("Enter Radius: ");

            color = selectColor();

            circle = Circle(Radius);
            circle = circle.setColor(color);
            circle.Display;
            circle.Draw;
        case 3 % Tringle
            Base = input("Enter Base: ");
            Hieght = input("Enter Hieght: ");

            color = selectColor();

            triangle = Triangle(Base, Hieght);
            triangle = triangle.setColor(color);
            triangle.Display;
            triangle.Draw;
        case 4 % EquilateralTriangle
            Side = input("Enter Side: ");

            color = selectColor();

            eTriangle = EquilateralTriangle(Side);
            eTriangle = eTriangle.setColor(color);
            eTriangle.Display;
            eTriangle.Draw;
        case 5 % Square
            Side = input("Enter Side: ");

            color = selectColor();

            square = Square(Side);
            square = square.setColor(color);
            square.Display;
            square.Draw;
        otherwise
            fprintf("\nExiting...\n");
            break;
    end
    
end

function r = selectColor()
     colorChoice = input("Select A color:\n1. Red\n2. Green\n" + ...
                "3. Blue\n\nYour Choice: ");

    color = 'black';
    switch colorChoice
        case 1
            color = 'red';
        case 2
            color = 'green';
        case 3
            color = 'blue';
    end
    r = color;
end