height = 10;
word = "春";
font = "標楷體";

module chinese_word(word, font, height, center = true) {
    offset_for_center = center ? -height / 2 : 0;
    translate([offset_for_center, offset_for_center, offset_for_center])
    linear_extrude(height) 
        text(word, font = font);
}

rotate([90, 0, 0]) 
    chinese_word(word, font, height, center = false);