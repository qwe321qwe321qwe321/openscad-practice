module foo() { // module result get union automatically.
    translate([-2, 0, 0]) 
        circle(8);
    translate([2, 0, 0])
        circle(8);
}

intersection() {
    circle(12);
    foo();
}