module cross(geo=[5.7,0.8,8]) {
  translate([0, 0, 34]) {
    for (i = [[0, 0, 0],
	      [0, 0, 240],
	      [0, 0, 300]]) {
      rotate(i)
	cube(geo, center = true);
    }}}

module ellipsoid() {
  union() {
    difference() {
      cross();
      cross([5.3,0.1,8]);
    }
    translate([0, 0, 20]) {
      cylinder(h = 14, r = 3);
    }
    scale([1, 1, 2]) {
      sphere(r = 12);
    }
  }
}

module anchor_holes() {
  translate([0, 0, -33])
    for(i = [[40, 0, 0],
	     [40, 0, 90],
	     [40, 0, 180],
	     [40, 0, 270]])
      {
	rotate(i)
	  translate([0, 20, 0])
	  cylinder(h = 10, r = 1.5);
      }
}

difference() {
  ellipsoid();
  translate([0, 0, 20]) {
    cylinder(h = 13.5, r = 2.8);
  }
  scale([1, 1, 2]) {
    sphere(r = 11.5);
  }
  translate([0, 0, -30]) {
    sphere(r = 15);
  }
  anchor_holes();
}
