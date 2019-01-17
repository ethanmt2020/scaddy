//new shaker

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
    *cube(22);
}

 translate()
{
    cylinder(12.5);
}





-------------------------------------------
//saltshaker 

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

dodecahedron(20);
