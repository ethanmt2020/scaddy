//saltshaker 

//modules
module box(size) {
    cube([2*size, 2*size, size], center = true); 
}

module dodecahedron(size) {
      dihedral = 116.565;
      intersection(){
            box(size);
            intersection_for(i=[1:5])  { 
                rotate([dihedral, 0, 360 / 5 * i])  box(size); 
           }
      }
}

//difference

 difference()
{
        dodecahedron(20);
    dodecahedron(18);
    *cube(12);
   translate([1.5,0,0])
    cylinder(12);
    translate([-1,1.5,0])
    cylinder(12);
     translate([-1,-1.5,0])
    cylinder(12);
      translate([0,0,-15])
    cylinder(h = 9, r=5, center = false);
    
}

//base
{
    translate([0,0,-9.5])
    circle(r=5, d=9.5);
     translate([0,0,-10])
    circle(r=5, d=12);
       
}


    
