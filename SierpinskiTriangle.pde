public void setup() {
  background(174, 158, 196);
  size(700, 700);
}

public void draw() {
  sierpinski(25, 675, 650, 5); // Adjust the last argument to control the depth of recursion
}

public void sierpinski(int x, int y, int len, int depth) {
  if (depth == 0) {
    triangle(x, y, x + len / 2, y - len, x + len, y);
  } else {
    int halfLen = len / 2;
    // Draw the current triangle
    triangle(x, y, x + halfLen, y - len, x + len, y);
    // Recursively draw smaller triangles
    sierpinski(x, y, halfLen, depth - 1); // Top triangle
    fill(160,127,203);
    sierpinski(x + halfLen / 2, y - len / 2, halfLen, depth - 1); // Left triangle
    fill(124,98,157);
    sierpinski(x + halfLen, y, halfLen, depth - 1); // Right triangle
    fill(67,54,85);
  }
}
