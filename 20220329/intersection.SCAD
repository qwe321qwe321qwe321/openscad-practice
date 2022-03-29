character = "A";
font_size = 10;
thickness = 1;

sphere(font_size);
intersection() {
    sphere(font_size + thickness);
    linear_extrude(font_size * 2) 
        text(character, 
             size = font_size,   // 文字大小
             valign = "center",  // 垂直置中
             halign = "center"   // 水平置中
        );
}
// 預覽會顯示怪怪的，記得F6渲染