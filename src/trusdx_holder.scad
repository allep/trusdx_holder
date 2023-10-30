// settings
TRUSDX_WIDTH = 90;
TRUSDX_DEPTH = 60;
TRUSDX_HEIGHT = 30;

HOLDER_TRUSDX_HEIGHT_EXTENSION = 20;
HOLDER_TRUSDX_DISPLACEMENT_Y = -15;
HOLDER_TRUSDX_DISPLACEMENT_Z = 25;

HOLDER_WIDTH = TRUSDX_WIDTH;
HOLDER_DEPTH = TRUSDX_DEPTH;
HOLDER_HEIGHT = 50;

HOLDER_ANGLE_DEGREES = 45;

module trusdx(width, depth, height) {
    cube([width, depth, height], center = true);
}

module holder(width, depth, height) {
    cube([width, depth, height], center = true);
}

// main script
difference() {
    holder(HOLDER_WIDTH, HOLDER_DEPTH, HOLDER_HEIGHT);
    translate([0, HOLDER_TRUSDX_DISPLACEMENT_Y, HOLDER_TRUSDX_DISPLACEMENT_Z])
    rotate([HOLDER_ANGLE_DEGREES, 0, 0])
    trusdx(TRUSDX_WIDTH, TRUSDX_DEPTH, TRUSDX_HEIGHT + HOLDER_TRUSDX_HEIGHT_EXTENSION);
}
