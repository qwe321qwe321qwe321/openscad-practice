module polyline_join(points) {
    for(i = [0:len(points) - 2]) {
        hull() {
            translate(points[i])
                children();
            translate(points[i + 1])
                children();
        }
    }
}

polyline_join([
    [0, 0],
    [10, 0],
    [10, 10],
    [-10, 10],
    [-10, -10],
    [20, -10],
    [20, 20]
]) circle(r=1);

polyline_join([
    [0, 0, 0],
    [10, 0, 5],
    [10, 10, 10],
    [-10, 10, 15],
    [-10, -10, 20],
    [20, -10, 25],
    [20, 20, 30]
]) sphere(r=1);;