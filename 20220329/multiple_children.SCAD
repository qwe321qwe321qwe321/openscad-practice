module lineup(space) {
    for(i = [0 : $children - 1]) { // $children表示數量
        translate([space * i, 0, 0]) 
            children(i);
    }
}

lineup(100) { 
    sphere(10); 
    sphere(10); 
}

lineup(100) { 
    cube(35); 
    cube(35); 
    cube(35); 
}