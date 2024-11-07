$fn=90;
cartlength = 86.058;
cartedge = 46.48/2;

module CartBaseSkin()
{
	//base
	translate([0,-4,-48.5])
		cube([82,2,21], center = true);
	translate([0,-4,-34.5])
		cube([74,2,15], center = true);
	translate([0,-4,11.5])
		cube([82,2,77], center = true);
	//back
	translate([0,0.5,-58])
		cube([82,7,2], center = true);
	//back lip
	translate([0,4.5,-58.5])
		cube([82,1,1], center = true);
	//LHS
	translate([-40,0.5,-48.5])
		cube([2,7,17], center = true);
	translate([-38,0.5,-39])
		cube([6,7,2], center = true);
	translate([-36,0.5,-32.5])
		cube([2,7,11], center = true);
	translate([-38,0.5,-26])
		cube([6,7,2], center = true);
	translate([-40,0.5,12.5])
		cube([2,7,75], center = true);
	//LHS Lip
	translate([-40.5,4.5,-48.5])
		cube([1,1,19], center = true);
	translate([-38.5,4.5,-38.5])
		cube([5,1,1], center = true);
	translate([-36.5,4.5,-32.5])
		cube([1,1,11], center = true);
	translate([-38.5,4.5,-26.5])
		cube([5,1,1], center = true);
	translate([-40.5,4.5,9])
		cube([1,1,70], center = true);
	translate([-40,4.5,47])
		cube([2,1,6], center = true);		
	//RHS
	translate([40,0.5,-48.5])
		cube([2,7,17], center = true);
	translate([38,0.5,-39])
		cube([6,7,2], center = true);
	translate([36,0.5,-32.5])
		cube([2,7,11], center = true);
	translate([38,0.5,-26])
		cube([6,7,2], center = true);
	translate([40,0.5,12.5])
		cube([2,7,75], center = true);
	//RHS Lip
	translate([40.5,4.5,-48.5])
		cube([1,1,19], center = true);
	translate([38.5,4.5,-38.5])
		cube([5,1,1], center = true);
	translate([36.5,4.5,-32.5])
		cube([1,1,11], center = true);
	translate([38.5,4.5,-26.5])
		cube([5,1,1], center = true);
	translate([40.5,4.5,9])
		cube([1,1,70], center = true);
	translate([40,4.5,47])
		cube([2,1,6], center = true);	
}

module CartBase()
{
	//vertical support right
	translate([26,0.5,-5])
		cube([2,7,68], center = true);
	//vertical support left
	translate([-26,0.5,-5])
		cube([2,7,68], center = true);
	//front screwhole left
	translate([-30,0.5,20])
		rotate([90,0,0])
			difference()
			{
				cylinder(h=7, r=4, center = true);
				cylinder(h=8, r=2.65/2, center = true);
			}
	//front screwhole right
	translate([30,0.5,20])
		rotate([90,0,0])
			difference()
			{
				cylinder(h=7, r=4, center = true);
				cylinder(h=8, r=2.65/2, center = true);
			}
	//rear screwhole left
	translate([-19.05,-0.15,-38])
		rotate([90,0,0])
			difference()
			{
				cylinder(h=5.7, r=4, center = true);
				cylinder(h=8, r=2.65/2, center = true);
			}
	translate([-28,-0.15,-38])
		cube([14,5.7,2], center = true);
	translate([-19.05,-0.15,-49.5])
		cube([2,5.7,16], center = true);
	translate([-19.05,-1,-33])
		cube([2,4,5], center = true);
	//rear screwhole right
	translate([19.05,-0.15,-38])
		rotate([90,0,0])
			difference()
			{
				cylinder(h=5.7, r=4, center = true);
				cylinder(h=8, r=2.65/2, center = true);
			}
	translate([28,-0.15,-38]) 
		cube([14,5.7,2], center = true);
	translate([19.05,-0.15,-49.5])
		cube([2,5.7,16], center = true);
	translate([19.05,-1,-33])
		cube([2,4,5], center = true);
	//screwhole crossbrace
	translate([0,-0.15,-38])
		cube([33,5.7,2], center = true);
	//left support
	translate([-(cartedge+7),0.3,-1])
		difference()
		{
			cube([20,6.6,2], center = true);
			translate([12,3.3,0])
				cube([11,1.8,3], center = true);
		}
	//right support
	translate([(cartedge+7),0.3,-1])
		difference()
		{
			cube([20,6.6,2], center = true);
			translate([-12,3.3,0])
				cube([11,1.8,3], center = true);
		}
	//cart guide left
	translate([26,-2.15,39.5])
		difference()
		{
			cube([2,1.7,21], center = true);
			translate([0,2.5,6.5])
				rotate([15,0,0])
					cube([3,4,30], center = true);
		}
		
	//cart guide right
	translate([-26,-2.15,39.5])
		difference()
		{
			cube([2,1.7,21], center = true);
			translate([0,2.5,6.5])
				rotate([15,0,0])
					cube([3,4,30], center = true);
		}
	//lower support
	translate([0,0.3,28])
		difference()
		{
			cube([78,6.6,2], center = true);
			translate([0,3.3,0])
				cube([47,1.8,3], center = true); //make a 0.9mm cut at the top of the brace
		}
	difference()
	{
		CartBaseSkin();
		{
			translate([-38.5,1.5,47])
				rotate([0,-9.462,0])
					cube([2,9,7], center = true);
			translate([38.5,1.5,47])
				rotate([0,9.462,0])
					cube([2,9,7], center = true);
			//Switch port
			translate([30,5,-57])
					cylinder(h=8, r=3.2, center = true);
		}
	}
}

CartBase();
