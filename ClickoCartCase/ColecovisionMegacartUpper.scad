$fn=90;
cartlength = 86.058;
cartedge = 46.48/2;

module CartTopSkin()
{
	//base
	translate([0,-4,-48.5])
		cube([82,2,21], center = true);
	translate([0,-4,-34.5])
		cube([74,2,15], center = true);
	translate([0,-4,-21.75])
		cube([82,2,10.5], center = true);
	translate([0,-4,16.75])
		cube([76,2,66.5], center = true);
	//back
	translate([0,1,-58])
		cube([82,8,2], center = true);
	//back lip
	translate([0,5.5,-57.5])
		cube([80,1,1], center = true);
	//RHS
	translate([-40,1,-48.5])
		cube([2,8,17], center = true);
	translate([-38,1,-39])
		cube([6,8,2], center = true);
	translate([-36,1,-32.5])
		cube([2,8,11], center = true);
	translate([-38,1,-26])
		cube([6,8,2], center = true);
	translate([-40,1,-20.75])
		cube([2,8,8.5], center = true);
	translate([-40,4.5,16.75])
		cube([2,1,66.5], center = true);
	translate([-37.5,1,-17.5])
		cube([3,8,2], center = true);
	translate([-38.551317,-0.183771,16.75]) //This bit suuuucked!
		rotate([0,0,18.435])
			cube([2,9.487,66.5], center = true);
	//RHS Lip
	translate([-39.5,5.5,-48.5])
		cube([1,1,17], center = true);
	translate([-37.5,5.5,-39.5])
		cube([5,1,1], center = true);
	translate([-35.5,5.5,-32.5])
		cube([1,1,13], center = true);
	translate([-37,5.5,-25.5])
		cube([4,1,1], center = true);
	translate([-39.5,5.5,9])
		cube([1,1,70], center = true);
	//LHS
	translate([40,1,-48.5])
		cube([2,8,17], center = true);
	translate([38,1,-39])
		cube([6,8,2], center = true);
	translate([36,1,-32.5])
		cube([2,8,11], center = true);
	translate([38,1,-26])
		cube([6,8,2], center = true);
	translate([40,1,-20.75])
		cube([2,8,8.5], center = true);
	translate([40,4.5,16.75])
		cube([2,1,66.5], center = true);
	translate([37.5,1,-17.5])
		cube([3,8,2], center = true);
	translate([38.551317,-0.183771,16.75]) //This bit suuuucked!
		rotate([0,0,-18.435])
			cube([2,9.487,66.5], center = true);
	//LHS Lip
	translate([39.5,5.5,-48.5])
		cube([1,1,17], center = true);
	translate([37.5,5.5,-39.5])
		cube([5,1,1], center = true);
	translate([35.5,5.5,-32.5])
		cube([1,1,13], center = true);
	translate([37,5.5,-25.5])
		cube([4,1,1], center = true);
	translate([39.5,5.5,9])
		cube([1,1,70], center = true);
}

module CartTop()
{
	//vertical support right
	difference()
	{
		translate([-26,1.45,-5])
			cube([2,8.9,68], center = true);
		//cable channel for top switch
		translate([-26,6,-6])
			cube([4,3,8], center = true);
	}
	//vertical support left
	translate([26,1.45,-5])
		cube([2,8.9,68], center = true);
	//front screwhole right
	translate([-30,1.45,20])
		rotate([90,0,0])
			difference()
			{
				cylinder(h=8.9, r=4, center = true);
				cylinder(h=9, r=1.6, center = true);
			}
	//front screwhole left
	translate([30,1.45,20])
		rotate([90,0,0])
			difference()
			{
				cylinder(h=8.9, r=4, center = true);
				cylinder(h=9, r=1.6, center = true);
			}
	//cart guide left
	translate([26,-0.25,39.5])
		difference()
		{
			cube([2,5.5,21], center = true);
			translate([0,2.5,6.5])
				rotate([15,0,0])
					cube([3,4,30], center = true);
		}
	//cart guide right
	translate([-26,-0.25,39.5])
		difference()
		{
			cube([2,5.5,21], center = true);
			translate([0,2.5,6.5])
				rotate([15,0,0])
					cube([3,4,30], center = true);
		}
	//rear screwhole right
	translate([-19.05,1.45,-38])
		rotate([90,0,0])
			difference()
			{
				cylinder(h=8.9, r=4, center = true);
				cylinder(h=9, r=1.5, center = true);
			}
	difference()
	{
		translate([-28,1.45,-38])
			cube([14,8.9,2], center = true);
		//cable channel for top switch
		translate([-31,6,-38])
			cube([8,3,4], center = true);
	}
	translate([-19.05,-0.15,-49.5])
		cube([2,5.7,16], center = true);
	//rear screwhole left
	translate([19.05,1.45,-38])
		rotate([90,0,0])
			difference()
			{
				cylinder(h=8.9, r=4, center = true);
				cylinder(h=9, r=1.5, center = true);
			}
	translate([28,1.45,-38]) 
		cube([14,8.9,2], center = true);
	translate([19.05,1.45,-49.5])
		cube([2,8.9,16], center = true);
	//screwhole crossbrace
	translate([0,-0.15,-38])
		cube([33,5.7,2], center = true);
	//right support
	translate([-(cartedge+7),1.45,-1])
		difference()
		{
			cube([18,8.9,2], center = true);
			translate([-9,-3.5,0])
				cube([2,2,3], center = true);
		}
	//left support
	translate([(cartedge+7),1.45,-1])
		difference()
		{
			cube([18,8.9,2], center = true);
			translate([9,-3.5,0])
				cube([2,2,3], center = true);
		}
	//lower support
	translate([0,1.45,28])
		difference()
		{
			cube([78,8.9,2], center = true);
			{
				translate([-38.5,-3.5,0])
					cube([2,2,3], center = true);
				translate([38.5,-3.5,0])
					cube([2,2,3], center = true);
			}
		}
	//add the skin then punch through all the holes it needs
	difference()
	{
		CartTopSkin();
		{
			//the little nicks on the cartridge shell opening
			translate([-38.5,5,47])
				rotate([0,-9.462,0])
					cube([2,2,7], center = true);
			translate([38.5,5,47])
				rotate([0,9.462,0])
					cube([2,2,7], center = true);
			//drill holes
			//front drill hole right
			translate([-30,-7,20])
				rotate([90,0,0])
				{
					cylinder(h=8, r1=1.6, r2=8, center = true);
					translate([0,0,-4.5])
						cylinder(h=9, r=1.6, center = true);
				}	
			//front screwhole left
			translate([30,-7,20])
				rotate([90,0,0])
				{
					cylinder(h=8, r1=1.6, r2=8, center = true);
					translate([0,0,-4.5])
						cylinder(h=9, r=1.6, center = true);
				}	
			//rear screwhole right
			translate([-19.05,-7,-38])
				rotate([90,0,0])
				{
					cylinder(h=8, r1=1.6, r2=8, center = true);
					translate([0,0,-4.5])
						cylinder(h=9, r=1.6, center = true);
				}	
			//rear screwhole left
			translate([19.05,-7,-38])
				rotate([90,0,0])
				{
					cylinder(h=8, r1=1.6, r2=8, center = true);
					translate([0,0,-4.5])
						cylinder(h=9, r=1.6, center = true);
				}
			//ULB Switch port
			translate([-30,5,-57])
				cylinder(h=8, r=3.2, center = true);
			//Bank Switch port
			translate([-(cartedge-2.4-8.25),-4.99,-25.63])
				rotate([90,0,0])
					linear_extrude(height=4, center=true, convexity = 10, scale=[1.4,1.4], twist=0)
						square([16.5,11], center=true);

		}
	}
}
CartTop();
