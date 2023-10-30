// settings
WIDTH = 90;
DEPTH = 60;
TRUSDX_BOX_HEIGHT = 50;

HOLDER_HEIGHT = 50;
HOLDER_ANGLE_DEGREES = 45;

HOLDER_TRUSDX_HEIGHT_EXTENSION = 20;
HOLDER_TRUSDX_DISPLACEMENT_Y = -15;
HOLDER_TRUSDX_DISPLACEMENT_Z = 25;

SMOOTH_RADIUS = 2;

module trusdx(width, depth, height) {
    cube([width, depth, height], center = true);
}

module holder(width, depth, height) {
    cube([width, depth, height], center = true);
}

// main script
minkowski() {
    difference() {
        holder(WIDTH, DEPTH, HOLDER_HEIGHT);
        translate([0, HOLDER_TRUSDX_DISPLACEMENT_Y, HOLDER_TRUSDX_DISPLACEMENT_Z])
        rotate([HOLDER_ANGLE_DEGREES, 0, 0])
        trusdx(WIDTH, DEPTH, TRUSDX_BOX_HEIGHT);
    }
    sphere(SMOOTH_RADIUS);
}
