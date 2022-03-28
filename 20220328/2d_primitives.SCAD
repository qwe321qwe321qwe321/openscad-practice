translate([0, 0, 0]){
    circle(10);
}
translate([0, 20, 0]){
    text("\u20AC 10 \u263A");
}
translate([0, 40, 0]) {
    text("春", font = "標楷體");
}
translate([15, 40]) {
   text("OpenSCAD", font = "Liberation Sans:style=Bold Italic");
 }

translate([-30, 0, 0]) {
    rotate([90, 0, 0])
    linear_extrude(10, center=true) {
            text("春", font = "標楷體", valign="center", halign="center");
    }
}
