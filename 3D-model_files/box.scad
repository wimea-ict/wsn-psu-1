$fn=32;

width = 23;
z_height = 76;
screw_dia = 3;
extension = 8;
lenght = 43;


//create the box module. 
module box (){
difference(){
    //main body
    cube([43,23,z_height]);
    
    //body modification
    translate ([2,2,2]) cube([39,19,74]);
    translate ([17,0,0]) cube([27,6,13]);
    translate ([18,11,0]) cube ([20,4,4]);
    
        translate ([18,0,11])
    rotate (a=90, v=[0,0,1])
    rotate (a=90, v=[1,0,0])
    linear_extrude(27)

    polygon ([[0,0],[0,9],[4,0]]);
    
    
    
    //hole for adjustable resistor
    translate ([9,2,51]) rotate (a=90 , v=[1,0,0]) cylinder (h=2, r=1.7);
    
    //tolerance for the lock to fit the box
    translate ([1.8,1.8,74]) cube([39.4,19.4,2]);
    
    // Carving the text for input and output
       translate ([18,0.5,23]) rotate (a=90, v=[1,0,0]) linear_extrude (height = 0.5)    text("+  -      -  +", 
                     size= 3,
                     font="Bitstream Vera Sans:style=Bold",
                     halign="left",
                     valign="bottom");
                     
  
  translate ([19,0.5,27]) rotate (a=90, v=[1,0,0]) linear_extrude (height = 0.5)    text("IN      OUT", 
                     size= 3,
                     font="Bitstream Vera Sans:style=Bold",
                     halign="left",
                     valign="bottom");  
    

}
difference(){
    translate ([17,0,0]) cube ([26,6,13]);
    translate ([18,0,0]) cube ([26,4,11]);
    
        translate ([18,0,11])
    rotate (a=90, v=[0,0,1])
    rotate (a=90, v=[1,0,0])
    linear_extrude(27)

    polygon ([[0,0],[0,9],[4,0]]);
    
    //4 screw holes
    translate ([20.3,6,8]) rotate (a=90 , v=[1,0,0]) cylinder (h=2, r=2);
    translate ([25.3,6,8]) rotate (a=90 , v=[1,0,0]) cylinder (h=2, r=2);
    translate ([30.3,6,8]) rotate (a=90 , v=[1,0,0]) cylinder (h=2, r=2);
    translate ([35.3,6,8]) rotate (a=90 , v=[1,0,0]) cylinder (h=2, r=2);
}

//Connection hole
difference(){
    translate ([17,10,0]) cube ([22,6,4]);
    translate ([18,11,0]) cube ([20,4,4]);
}
//4 rails
translate ([2,14,0])cube ([2,2,74]);
translate ([2,18,0])cube ([2,2,74]);
translate ([39,14,0])cube ([2,2,74]);
translate ([39,18,0])cube ([2,2,74]);

//fix the slide
translate ([17,4,20])
rotate (a=270, v=[0,0,1])
rotate (a=270, v=[1,0,0])
linear_extrude(26)
 polygon ([[0,0],[0,9],[4,0]]);

translate ([17,1,12]) cube ([1,3,5]);


}

//box screw housing module
module box_screw_housing (x_move,y_move,z_move) {
translate ([x_move,y_move+23,z_move]){

difference(){
 rotate (a=180,v=[0,1,0])  rotate (a=90, v=[1,0,0]) linear_extrude(height= width) translate ([0,-z_height,width])
        polygon ([[0,0],[0,2*extension],[extension,0]]);
        
        //make the screw holes
        translate ([-extension/2,-extension/2,0]) cylinder (h= z_height, r=  (screw_dia/2)+0.1);
        translate ([-extension/2,(extension/2)-width ,0])cylinder (h= z_height, r=(screw_dia/2)+0.1);
    
    //screw top grave
    translate ([-extension/2,-extension/2, z_height-14])
    linear_extrude(12)
    circle(5.7/(2*cos (30)), $fn=6);

    
    translate ([-extension/2,(extension/2)-width, z_height-14])
    linear_extrude(12) 
    circle(5.7/(2*cos (30)), $fn=6);
    }
}
}


//build the box 
box ();

//build the first screw housing
box_screw_housing (0,0,0);

//build the second screw housing
rotate (a=180,v=[0,0,1])  translate ([-lenght,0,0])box_screw_housing ();

