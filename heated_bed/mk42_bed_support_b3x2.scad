// Project:  Lecktor3D
// Part:     Heated bed support (y-carriage)
// Material: Alumiinium (6mm)
// Author:   Grigori Palamartšuk <grigori.palamarchuk@gmail.com>
// Source:   http://www.lecktor.com

$e = 0.0001;

module body()
{
    cube([220,220,6]);
}
module body_cutouts()
{
    //top side rectangular cutout
    translate([32,195,-1]) cube([156,25,8]);
    translate([7,220,7]) rotate([0,90,-90]) prism(8,25,25);
    translate([188,195,7]) rotate([0,90,0]) prism(8,25,25);

    // bottom side rectangular cutout
    translate([32,0,-1]) cube([156,25,8]);
    translate([32+$e,25,7]) rotate([0,90,180]) prism(8,25,25);
    translate([213,0,7]) rotate([0,90,90]) prism(8,25,25);
    
    // corner cutout (bottom left)
    translate([3,0,7]) rotate([0,90,90]) prism(8,3,3);
    // corner cutout (bottom right)
    translate([220,3,7]) rotate([0,90,180]) prism(8,3,3);
    // corner cutout (top left)
    translate([0,217,7]) rotate([0,90,0]) prism(8,3,3);
    // corner cutout (top right)
    translate([217,220,7]) rotate([0,90,-90]) prism(8,3,3);

    // right edge cutouts (top->bottom)
    translate([220,213,7]) rotate([0,90,180]) prism(8,40,40);
    translate([180,153,-1]) cube([40,20,8]);
    translate([180,153,7]) rotate([0,90,-90]) prism(8,30,30);
    translate([210,67,-1]) cube([10,86,8]);
    translate([210,97,7]) rotate([0,90,180]) prism(8,30,30);
    translate([180,47,-1]) cube([40,20,8]);
    translate([180,47,7]) rotate([0,90,-90]) prism(8,40,40);
    
    // left edge cutouts (top->bottom)
    translate([20,193,7]) rotate([0,90,90]) prism(8,20,20);
    translate([0,173,-1]) cube([20,20,8]);
    translate([10,163,7]) rotate([0,90,0]) prism(8,10,10);
    translate([0,47,-1]) cube([10,126,8]);
    translate([20,115,7]) rotate([0,90,90]) prism(8,10,10);
    translate([10,105,-1]) cube([10,10,8]);
    translate([10,95,7]) rotate([0,90,0]) prism(8,10,10);
    translate([20,47,7]) rotate([0,90,90]) prism(8,10,10);
    translate([0,27,-1]) cube([20,20,8]);
    translate([0,7,7]) rotate([0,90,0]) prism(8,20,20);
    
    // top body cutout (weight saver)
    translate([82,145,-1]) cube([56,40,8]);
    translate([42,185,7]) rotate([0,90,-90]) prism(8,40,40);
    translate([138,145,7]) rotate([0,90,0]) prism(8,40,40);
    
    // bottom body cutour (weight saver)
    translate([82,35,-1]) cube([56,40,8]);
    translate([82,75,7]) rotate([0,90,180]) prism(8,40,40);
    translate([178,35,7]) rotate([0,90,90]) prism(8,40,40);
    
    // center left body cutout (weight saver)
    translate([50,85,-1]) cube([20,50,8]);
    translate([30,105,-1]) cube([60,10,8]);
    translate([30,105,7]) rotate([0,90,-90]) prism(8,20,20);
    translate([70,85,7]) rotate([0,90,0]) prism(8,20,20);
    translate([50+$e,135,7]) rotate([0,90,180]) prism(8,20,20);
    translate([90,115,7]) rotate([0,90,90]) prism(8,20,20);
    
    // center right body cutout (weight saver)
    translate([150,85,-1]) cube([10,50,8]);
    translate([130,105,-1]) cube([50,10,8]);
    translate([130,105,7]) rotate([0,90,-90]) prism(8,20,20);
    translate([160,85,7]) rotate([0,90,0]) prism(8,20,20);
    translate([150,135,7]) rotate([0,90,180]) prism(8,20,20);
    translate([180,115,7]) rotate([0,90,90]) prism(8,20,20);
}
module bearing_cutouts()
{
    // right bottom
    translate([20,61.5,-1]) bearing_cutout();
    // right top
    translate([20,131.5,-1]) bearing_cutout();
    // left center
    translate([190,96.5,-1]) bearing_cutout();
}
module bearing_cutout()
{
    difference()
    {
        cube([10,27,8]);
        union()
        {
            translate([1,0,7]) rotate([0,90,90]) prism(6,1,1);
            translate([10+$e,1,7]) rotate([0,90,180]) prism(6,1,1);
            translate([0,26,7]) rotate([0,90,0]) prism(6,1,1);
            translate([9,27,7]) rotate([0,90,-90]) prism(6,1,1);
        }
    }
}
module holes()
{
    // m3 heated bed support hole (bottom left)
    translate([5.5,5.5,-1]) color("green") cylinder(h=8,r=1.5,$fn=30);
    // m3 heated bed support hole (bottom right)
    translate([214.5,5.5,-1]) color("green") cylinder(h=8,r=1.5,$fn=30);
    // m3 heated bed support hole (top left)
    translate([5.5,214.5,-1]) color("green") cylinder(h=8,r=1.5,$fn=30);
    // m3 heated bed support hole (top right)
    translate([214.5,214.5,-1]) color("green") cylinder(h=8,r=1.5,$fn=30);
    // m3 heated bed support hole (bottom center)
    translate([110,89,-1]) cylinder(h=8,r=1.5,$fn=30);
    // m3 heated bed support hole (top center)
    translate([110,130,-1]) cylinder(h=8,r=1.5,$fn=30);

    // m3 bearing support hole (left bottom)
    translate([15,75,-1]) cylinder(h=8,r=1.5,$fn=30);
    translate([35,75,-1]) cylinder(h=8,r=1.5,$fn=30);
    // m3 bearing support hole (left top)
    translate([15,145,-1]) cylinder(h=8,r=1.5,$fn=30);
    translate([35,145,-1]) cylinder(h=8,r=1.5,$fn=30);
    // m3 bearing support hole (right center)
    translate([205,110,-1]) cylinder(h=8,r=1.5,$fn=30);
    translate([185,110,-1]) cylinder(h=8,r=1.5,$fn=30);
    
    // mark
    translate([31,220-35,5]) cylinder(h=2,r=1,$fn=30);
}
module prism(l,w,h)
{
    polyhedron(
        points=[[0,0,0],[l,0,0],[l,w,0],[0,w,0],[0,w,h],[l,w,h]],
        faces= [[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
    );
}
module result()
{
    difference()
    {
        body();
        union()
        {
            body_cutouts();
            bearing_cutouts();
            holes();
        }
    }
}
translate([-110,-110,0]) result();