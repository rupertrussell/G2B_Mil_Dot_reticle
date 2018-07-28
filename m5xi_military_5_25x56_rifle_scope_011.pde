// https://www.berettadefensetechnologies.com/sites/default/files/styles/product_large_horizontal_zoom/public/content/products/g2b-mil-dot-reticle_1.png
// cm/100m 
// G2B Mil-Dot
// M5Xi Military 3-15x50 Rifle Scope Steiner
// https://www.berettadefensetechnologies.com/rifle-scopes/m5xi-military-3-15x50-rifle-scope
// 

float A = 100;
float B = 5;
float C = 5;
float D = 2;
float E = 0.6 ;
float F = 5;
float G = 10;
float H = 0.6;
float J = 0.6;
float K = 50;
float L = 20;
float scale = 20.5;
float sz = floor(scale * 274);
float outerEllipse = scale * 333;  
float innerEllipse = scale * 322;

void setup() {
  size(7700, 7700);  // sz,sz
  noLoop();
  noFill();
  strokeCap(SQUARE);
  background(255);
  A = A * scale;
  B = B * scale;
  C = C * scale;
  D = D * scale;
  E = E * scale;
  F = F * scale;
  G = G * scale;
  H = H * scale;
  J = J * scale;
  K = K * scale;
  L = L * scale;
}

void draw() {

  println(sz);
  translate(width/2, height/2);
  ellipseMode(CENTER);

  stroke(0);
  strokeWeight(B);
  ellipse(0, 0, innerEllipse, innerEllipse);

  //outer ellipse;
  strokeWeight(E);
  ellipse(0, 0, outerEllipse, outerEllipse);

  //horizontal crosshair
  strokeWeight(J);
  line(-innerEllipse /2, 0, innerEllipse /2, 0);

  //vertical crosshair
  line(0, -innerEllipse /2, 0, innerEllipse /2);

  //horizontal left
  strokeWeight(B);
  line(-innerEllipse /2, 0, -A /2, 0);

  //horizontal right
  line(innerEllipse /2, 0, A /2, 0);

  //vertical bottom
  line(0, A /2, 0, innerEllipse /2);

  //vertical top
  line(0, -A /2, 0, -innerEllipse /2);

  //right dash
  strokeWeight(E);
  line(A/2+K, -L/2, A/2+K, L/2);

  //Left dash
  line(-A/2-K, -L/2, -A/2-K, L/2);

  //top dash
  line(-L/2, -A/2-K, L/2, -A/2-K);

  //bottom dash
  line(-L/2, A/2+K, L/2, A/2+K);

  // mill dots bottom
  for (int x = 0; x < 4; x ++) {
    noStroke();
    fill(0);
    ellipse(0, x * G + G, D, D);
  }

  // mill dots top 
  for (int x = 0; x < 4; x ++) {
    noStroke();
    ellipse(0, x * -G - G, D, D);
  }

  // mill dots left 
  for (int x = 0; x < 4; x ++) {
    noStroke();
    ellipse(x * -G - G, 0, D, D);
  }

  // mill dots right 
  for (int x = 0; x < 4; x ++) {
    noStroke();
    ellipse(x * G + G, 0, D, D);
  }

  // Grid bottom
  stroke(0);
  for (int x = 0; x < 5; x ++) {
    stroke(0);
    line(-C/2, x * G  + F, C/2, x * G + F);
  }

  // Grid top
  stroke(0);
  for (int x = 0; x < 5; x ++) {
    stroke(0);
    line(-C/2, x * -G -F, C/2, x * -G -F);
  }

  // Grid left 
  for (int x = 0; x < 5; x ++) {
    stroke(0);
    line(x * -G -F, C/2, x * -G -F, -C/2);
  }

  // Grid right 
  for (int x = 0; x < 5; x ++) {
    stroke(0);
    line(x * G +F, C/2, x * G +F, -C/2);
  }

  save("reticle_7700x7700a.png");
  println("saved");
  exit();
}
