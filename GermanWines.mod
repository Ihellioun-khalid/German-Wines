/*********************************************
 * OPL 12.6.0.0 Model
 * German Wines
 *********************************************/

//Make sure you use c[i] to access the i-th cost 
//and do not remove/change the following line
float c[1..3] = [10, 12, 20];

dvar float x;
dvar float y;
dvar float z;

maximize c[1]*x+c[2]*y+c[3]*z;

subject to {
      x+2*y       <=150;
      x+    2*z   <=150;
    2*x+3*y+  z   <=225;
    2*x+  y       <=80;
            x>=0;
            y>=0;
            z>=0;
}

/* Affichage de la solution */
execute {
  writeln("Post-traitement: ");
  writeln("La valeur de l'objectif est de "+cplex.getObjValue());
} 