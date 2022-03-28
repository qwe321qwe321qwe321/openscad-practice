my_text = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
my_text2 = "Justin"; // [Justin, Monica]
step_angle = 20; // [0:90]
step_height = 5;
radius = 30;
height = 5;

len_of_my_text = len(my_text);

for(i = [0:len_of_my_text]) {
    rotate(step_angle * i) 
    translate([radius, 0, i * step_height]) 
    linear_extrude(height) 
        text(my_text[len_of_my_text - i]);
}