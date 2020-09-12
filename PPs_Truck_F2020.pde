Truck t;

void setup() {
  size(1000,1000);
  t = new Truck();
}

void draw() {
  background(255);
  t.display();
  t.drive();
}

class Truck{
  
  float a;
  float b;
  float c;
  float d;
  float e;
  float f;
  float g;
  float h;
  float i;
  float j;
  float k;
  float l;
  float m;
  float n;
  float o;
  float p;
  float q;
  float r;
  float s;
  float t;
  float u;
  float v;
  float w;
  float x;
  float y;
  float z;
  float a2;
  float b2;
  float c2;
  float d2;
  float e2;
  float f2;
  float g2;
  float h2;
  float i2;
  float j2;
  float k2;
  float l2;
  
  Truck() {
    a = 315;
    b = 244;
    c = 276;
    d = 308;
    e = 260;
    f = 262;
    g = 279;
    h = 298;
    i = 317;
    j = 330;
    k = 354;
    l = 349;
    m = 450;
    n = 752;
    o = 741;
    p = 751;
    q = 424;
    r = 348;
    s = 327;
    t = 731;
    u = 728;
    v = 366; 
    w = 641;
    x = 313;
    y = 302;
    z = 428; 
    a2 = 419; 
    b2 = 403;
    c2 = 417;
    d2 = 588;
    e2 = 578;
    f2 = 704;
    g2 = 694;
    h2 = 590;
    i2 = 603;
    j2 = 679;
    k2 = 692;
    l2 = 388;
  }
  
  void display() {
strokeCap(ROUND);
strokeWeight(3);
rect(b,628,32,43,6);
line(c,670,d,670);
ellipseMode(RADIUS);
ellipse(e,610,10,16);
point(h,551);
bezier(e, 593, f, 563, g, 552, h, 551);
bezier(i, 504, j, 471, k, 480, l, 478);
strokeWeight(3);
strokeCap(ROUND);
line(m, 670, m, 407);
line(m, 407, n, 407);
line(n, 407, n, 631);
line(n, 670, o, 670); 
line(m, 465, p, 465);
line(m, 439, p, 439);
line(m, 478, l, 478);
line(h, 551, i, 504);
line(q, 551, q, 500);
line(q, 500, r, 500);
line(q, 551, s, 551);
line(s, 551, r, 500);
line(c, 670, t, 670);
rect(u,628,32,43,6);
arc(v, 683, 51, 51, 0, PI);
arc(w, 683, 51, 51, 0, PI);
bezier(x, 683, y, 599, z, 599, a2, 683);
bezier(a, 683, s, 629, b2, 629, c2, 683);
bezier(d2, 683, e2, 598, f2, 598, g2, 683);
bezier(h2, 683, i2, 628, j2, 628, k2, 683);
ellipse(v, 683, 19, 19);
ellipse(w, 683, 19, 19);
strokeWeight(3);
rect(l2, 570, 32, 8, 12);
  }
  
  void drive() {
    a--;
    b--;
    c--;
    d--;
    e--;
    f--;
    g--;
    h--;
    i--;
    j--;
    k--;
    l--;
    m--;
    n--;
    o--;
    p--;
    q--;
    r--;
    s--;
    t--;
    u--;
    v--;
    w--;
    x--;
    y--;
    z--;
    a2--;
    b2--;
    c2--;
    d2--;
    e2--;
    f2--;
    g2--;
    h2--;
    i2--;
    j2--;
    k2--;
    l2--;
  }
}

  
    
