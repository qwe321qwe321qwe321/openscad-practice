translate([0, 0, 0])
    cube(size=[1, 2, 3], center=false);
translate([2, 0, 0])
    cube(size=[1, 2, 3], center=true);
translate([4, 0, 0])
    sphere(r = 1);
translate([4, 0, 2])
    sphere(r = 1, $fn=100);
translate([4, 0, -2])
    sphere(r = 1, $fa=5, $fs=0.1);
translate([8, 0, 0])
    cylinder(h=3, r1=1, r2=2, center=false);
translate([8, 0, 4])
    cylinder(h=3, r1=1, r2=2, center=false, $fn=100);
translate([8, 0, -4])
    cylinder(h=3, r1=1, r2=2, center=false, $fs=0.1);
