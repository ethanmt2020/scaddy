//saltshaker 

//modules
module box(size) {
    cube([2*size, 2*size, size], center = true); 
}

module dodecahedron(size) {
      dihedral = 116.565;
      intersection(){
            box(size);
            intersection_for(i=[1:5s])  { 
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
}
