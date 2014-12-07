difference(){	

	union(){

		sphere(36, $fn=100);

		cylinder(r=4,h=75, $fn=25);

		translate([0,0,75], $fn=30){
			#sphere(5);
		}
		
	}

	cylinder(r=3,h=80, $fn=25);

	translate([-50,-50,-50]){
		cube([100,100,50]);
	}

	// breadboard bounding box
	translate([-25,-17,0]){

		union(){
			translate([0,0,-1]){
				cube([50,34,20]);
			}

            	translate([48,13.5,15]){
			cube([10,7,3]);
			}
		}
	}
}