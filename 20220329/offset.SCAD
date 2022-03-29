module circle_ring(radius, thickness) {
    difference() {
        circle(radius);
        offset(r = -thickness) 
            circle(radius);
    }
}

circle_ring(3, 1, $fn = 48);

module square_frame(size, thickness, center = false) {
    difference() {
        square(size, center);
        offset(r = -thickness) 
            square(size, center);
    }
}

square_frame([10, 5], 1);