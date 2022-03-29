radius = 20;
t = "Love";

module heart(radius) {
    half_r = radius / 2;
    little_c_r = half_r * sqrt(2);
    
    circle(radius, $fn = 4);

    translate([half_r, half_r])
    rotate(45)
        circle(little_c_r);
        
    translate([-radius / 2, radius / 2])
    rotate(45)
        circle(little_c_r);
}

difference() {
    heart(radius, $fn = 8);
    translate([0, radius / 2])
        text(t, valign = "center", halign = "center");
}