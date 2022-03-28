length_side1 = 10;
length_side2 = 20;

function length_hypotenuse(length_side1, length_side1) = 
    sqrt(pow(length_side1, 2) + pow(length_side2, 2));

function length_hypotenuse2(length_side1, length_side1) = 
    (length_side1 ^ 2 + length_side2 ^ 2) ^ 0.5; // pow = ^
    
echo(length_hypotenuse(length_side1, length_side1));  // ECHO: 22.3607
echo(length_hypotenuse2(length_side1, length_side1));  // ECHO: 22.3607

function length_between(point1, point2) = 
    let(
        x = point1.x - point2.x, 
        y = point1.y - point2.y,
        z = point1.z - point2.z
    )
    (x ^ 2 + y ^ 2 + z ^ 2) ^ 0.5;
    
echo(length_between([1, 2, 3], [3, 2, 1])); // ECHO: 2.82843

function max(a, b) = a >= b ? a : b;

function compare(a, b) = 
    a > b ?  1 : 
    a < b ? -1 : 
             0; // default value

function length(lt, count = 0) = 
    is_undef(lt[count]) ? count : length(lt, count + 1);

echo(length("TEST"));  // ECHO: 4