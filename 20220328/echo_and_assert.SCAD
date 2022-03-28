echo(1, 2, 3);         // ECHO: 1, 2, 3

x = 10;  
echo(x);               // ECHO: 10
echo(str("x = ", x));  // ECHO: "x = 10"
echo(x = x);           // ECHO: x = 10

p1 = [10, 20];
p2 = [30, 40];

length = let(v = p2 - p1) echo(v = v) sqrt(v * v); // ECHO: v = [20, 20]
echo(length); // ECHO: 28.2843

foo = echo("XD"); // ECHO: "XD"
echo(foo);        // ECHO: undef

// 經過一番運算…
foo = 1;

assert(foo != 0, "foo 必須不為 0");

p1 = [30, 20];
p2 = [30, 40];

length = let(v = p2 - p1) assert(v != [0, 0]) sqrt(v * v); 
echo(length); // ECHO: 28.2843