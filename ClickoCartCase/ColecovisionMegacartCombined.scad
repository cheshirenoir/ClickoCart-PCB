$fn=90;
cartlength = 86.058;
cartedge = 46.48/2;

use <./ColecovisionMegacartUpper.scad>
use <./ColecovisionMegacartLower.scad>

translate([0,-5,0])
	color("red",0.5) CartTop();
translate([0,5,0])
	rotate([0,0,180])
		color("green",0.5) CartBase();
