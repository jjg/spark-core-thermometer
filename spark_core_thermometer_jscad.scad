//!OpenSCAD
first_floor_level = 21;
first_floor_base = 19;
first_floor_height = 40;
first_floor_orbit = 25;

second_floor_base = 13;
second_floor_height = 40;
second_floor_orbit = 16;

difference(){

	union(){

		// body
		cylinder(r1=38,r2=5,h=100);

	}

	// cut-outs

	// first floor
	translate([-first_floor_orbit,0,first_floor_level]){
		#cylinder(r1=first_floor_base,r2=1,h=first_floor_height);
	}

	translate([first_floor_orbit,0,first_floor_level]){
		cylinder(r1=first_floor_base,r2=1,h=first_floor_height);
	}

	rotate([0,0,90]){
		translate([-first_floor_orbit,0,first_floor_level]){
			cylinder(r1=first_floor_base,r2=1,h=first_floor_height);
		}

		translate([first_floor_orbit,0,first_floor_level]){
			cylinder(r1=first_floor_base,r2=1,h=first_floor_height);
		}
	}

		// second floor
		rotate([0,0,45]){
		translate([-second_floor_orbit,0,55]){
			#cylinder(r1=second_floor_base,r2=1,h=second_floor_height);
		}

		translate([second_floor_orbit,0,55]){
			cylinder(r1=second_floor_base,r2=1,h=second_floor_height);
		}

		rotate([0,0,90]){
			translate([-second_floor_orbit,0,55]){
			cylinder(r1=second_floor_base,r2=1,h=second_floor_height);
			}

			translate([second_floor_orbit,0,55]){
				cylinder(r1=second_floor_base
                ,r2=1,h=second_floor_height);
			}
		}
	}
	/*
	translate([-13,-50,25]){
		cube([26,100,10]);
	}
	rotate([0,0,90]){
		translate([-13,-50,25]){
			cube([26,100,10]);
		}
	}
	*/

	// sensor wire hole
	cylinder(r=1,h=110);

	// breadboard bounding box
	translate([-25,-17,0]){
		union(){
			translate([0,0,-1]){
				cube([50,34,21]);
			}
			translate([48,13.5,17]){
				cube([10,7,3]);
			}
		}
	}
}

// sensor wire channel
difference(){

	translate([0,0,20]){

		// sensor wire tube
		cylinder(r=2,h=80);
	}

	// sensor wire hole
	cylinder(r=1,h=110);
	
}
