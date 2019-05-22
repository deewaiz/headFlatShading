class RasterTrigon
{ 
  public void plotTriangle(Vec2i p0, Vec2i p1, Vec2i p2, color c)
  {
    if (p0.y==p1.y && p0.y==p2.y) { println("return"); return; }
    if (p0.y>p1.y) p1 = swap(p0, p0 = p1);
    if (p0.y>p2.y) p2 = swap(p0, p0 = p2);
    if (p1.y>p2.y) p2 = swap(p1, p1 = p2);

    int xb, xe, temp;
    int dy1, dy2, dy3, dy4;

    if(p0.y - p1.y != 0) dy1 = p0.y - p1.y; else dy1 = 1;
    if(p0.y - p2.y != 0) dy2 = p0.y - p2.y; else dy2 = 1;
    if(p1.y - p2.y != 0) dy3 = p1.y - p2.y; else dy3 = 1;
    if(p0.y - p2.y != 0) dy4 = p0.y - p2.y; else dy4 = 1;
    for(int scanline = p0.y; scanline <= p1.y; scanline++)
    {
      xb = p1.x + (scanline - p1.y) * (p0.x - p1.x) / dy1;
      xe = p2.x + (scanline - p2.y) * (p0.x - p2.x) / dy2;
      if(xb > xe)  { temp = xb; xb = xe; xe = temp; }
      for (int n = xb; n <= xe; n++) { set(n, scanline, c); }
    }
    
    for(int scanline = p1.y; scanline <= p2.y; scanline++)
      {
        xb = p2.x + (scanline - p2.y) * (p1.x - p2.x) / dy3;
        xe = p2.x + (scanline - p2.y) * (p0.x - p2.x) / dy4;
        if(xb > xe) { temp = xb; xb = xe; xe = temp; }
        for(int n = xb; n <= xe; n++) { set(n, scanline, c); }     
      }
  }
  
  
    
  private Vec2i swap(Vec2i a, Vec2i b) {  // usage: y = swap(x, x=y);
    return a;
  }
}
    
