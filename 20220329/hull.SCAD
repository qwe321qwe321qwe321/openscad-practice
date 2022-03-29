module rounded_square(size = [1, 1], corner_radius = 0.25, center = false) {
    real_size = is_list(size) ? size : [size, size];
    
    points = [
        [0, 0] + [corner_radius, corner_radius],
        [real_size.x, 0] + [-corner_radius, corner_radius],
        [real_size.x, real_size.y] + [-corner_radius, -corner_radius],
        [0, real_size.y] + [corner_radius, -corner_radius]
    ];
        
    translate(center ? [-real_size.x / 2, -real_size.y / 2] : [0, 0])
    hull() {
        for(p = points) {
            translate(p)
                circle(corner_radius);
        }
    }
}

rounded_square([4, 2], corner_radius = 0.5, $fn = 24);


module polyline2d(points, width = 1) {
    half_width = width / 2;
    for(i = [0:len(points) - 2]) {
        hull() {
            translate(points[i])
                circle(half_width);
            translate(points[i + 1])
                circle(half_width);
        }
    }
}

polyline2d([
    [0, 0],
    [10, 0],
    [10, 10],
    [-10, 10],
    [-10, -10],
    [20, -10],
    [20, 20]
]);

module polyline3d(points, width = 1) {
    half_width = width / 2;
    for(i = [0:len(points) - 2]) {
        hull() {
            translate(points[i])
                sphere(half_width);
            translate(points[i + 1])
                sphere(half_width);
        }
    }
}

polyline3d([
    [0, 0, 0],
    [10, 0, 5],
    [10, 10, 10],
    [-10, 10, 15],
    [-10, -10, 20],
    [20, -10, 25],
    [20, 20, 30]
]);