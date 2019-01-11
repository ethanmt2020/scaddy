//S & P Shaker
//Ethan MT
//January 10th, 2019


//base
cylinder(r=20,h=5, $fn=5);

//sides
translate([-8.5,-23,20]) rotate([50,50,130])cylinder(r=20,h=5, $fn=5);




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
