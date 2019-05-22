RasterTrigon trigon;

void setup()
{
  size(800, 800);
  background(color(0, 0, 0));
  trigon = new RasterTrigon();

}

void draw()
{
  int r, g, b;
  Model head = new Model("african_head.obj");
  Vec3f light_dir = new Vec3f(0, 0, 1);
  for (int i = 0; i < head.getFaceCount(); i++) 
  {
    Vec2i p0 = new Vec2i(width - head.getVtxS(head.getFace(i).face1 - 1).x, height - head.getVtxS(head.getFace(i).face1 - 1).y);
    Vec2i p1 = new Vec2i(width - head.getVtxS(head.getFace(i).face2 - 1).x, height - head.getVtxS(head.getFace(i).face2 - 1).y);
    Vec2i p2 = new Vec2i(width - head.getVtxS(head.getFace(i).face3 - 1).x, height - head.getVtxS(head.getFace(i).face3 - 1).y);
                
    Vec3f A = Vec3f.minus(head.getVtxW(head.getFace(i).face2 - 1), head.getVtxW(head.getFace(i).face1 - 1));
    Vec3f B = Vec3f.minus(head.getVtxW(head.getFace(i).face3 - 1), head.getVtxW(head.getFace(i).face1 - 1));                    
    Vec3f C = Vec3f.crossProduct(A, B);
    Vec3f N = C.normalize();
    float intensity  = Vec3f.scalar(N, light_dir);
    
    r = (int)(255 * intensity);
    g = (int)(255 * intensity);
    b = (int)(255 * intensity);
    if (intensity > 0)
      trigon.plotTriangle(p0, p1, p2, color(r, g, b));
  }
}
