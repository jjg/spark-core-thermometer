
difference(){

	union(){

		// body
		cylinder(r1=38,r2=5,h=100);

	}

	// cut-outs

	// first floor
	translate([-20,0,25]){
		cylinder(r1=20,r2=1,h=20);
	}

	translate([20,0,25]){
		cylinder(r1=20,r2=1,h=20);
	}

	rotate([0,0,90]){
		translate([-20,0,25]){
			cylinder(r1=20,r2=1,h=20);
		}

		translate([20,0,25]){
			cylinder(r1=20,r2=1,h=20);
		}
	}

		// second floor
		rotate([0,0,45]){
		translate([-20,0,55]){
			#cylinder(r1=5,r2=1,h=20);
		}

		translate([20,0,55]){
			cylinder(r1=20,r2=1,h=20);
		}

		rotate([0,0,90]){
			translate([-20,0,55]){
			cylinder(r1=20,r2=1,h=20);
			}

			translate([20,0,55]){
				cylinder(r1=20,r2=1,h=20);
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
	#cylinder(r=1,h=110);
	
}