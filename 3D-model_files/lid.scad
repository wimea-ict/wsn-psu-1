$fn=32;

width = 43;
depth = 23;
thickness= 2;
screw_dia= 3;


//The framing
module framing(){
difference(){
    cube ([39,19,2]);
    translate ([1,1,0]) cube ([37,17,2]);
// split for pcb
//    translate ([0,5,0]) cube ([1,4,2]);
//    translate ([38,5,0]) cube ([1,4,2]);
    }
}

//Function for building wings as extensions of the width
module wing(extension){
    // wing on one side
    difference(){
        translate ([-extension,0,0])   cube ([extension,        depth   , thickness]);
      translate([-extension/2, extension/2 ,0]) cylinder (h=        thickness,r= screw_dia/2);
        translate([-extension/2, depth - (extension/2) ,0]) cylinder (h=thickness,r= screw_dia/2);
    }
    
    // wing on other side
    difference(){
         translate ([width,0,0])   cube ([extension,            depth   , thickness]);
         translate([width + (extension/2), extension/2 ,0])         cylinder (h=thickness,r= screw_dia/2);
        translate([width + (extension/2), depth - (extension/2) ,0])         cylinder (h=thickness,r= screw_dia/2);
    }
}
//
//Build the base part
cube ([width,depth,thickness]);

//put the frame att right place
translate ([2,2,2]) framing ();

wing (8);




