module frame(thickness) {
    difference() {
        children();
        offset(r = -thickness) 
            children();
    }
}

frame(1) 
    circle(3, $fn = 48);
frame(1) 
    square([10, 5]);