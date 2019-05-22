public class Vec2i
{
  public int x;
  public int y;
  
  Vec2i(int x0, int y0)
  {
    x = x0;
    y = y0;
  }
}

public class Vec2f
{
  public float x;
  public float y;
  
  Vec2f(float x0, float y0)
  {
    x = x0;
    y = y0;
  } 
}

public class Vec3i
{
  
  public int x;
  public int y;
  public int z;
  
  Vec3i(int x0, int y0, int z0)
  {
    x = x0;
    y = y0;
    z = z0;
  }
}

public class Vec3iCoord
{
  
  public int x;
  public int y;
  public int z;
  
  Vec3iCoord(int x0, int y0, int z0)
  {
    x = x0;
    y = y0;
    z = z0;
  }
}

public class Vec3iFace
{
  public int face1;
  public int face2;
  public int face3;
  
  Vec3iFace(int a0, int b0, int c0)
  {
    face1 = a0;
    face2 = b0;
    face3 = c0;
  }
}

public static class Vec3f
{
  public float x;
  public float y;
  public float z;
  
  Vec3f(float x0, float y0, float z0)
  {
    x = x0;
    y = y0;
    z = z0;
  }
  
  public static Vec3f crossProduct(Vec3f a, Vec3f b)
  {
    return new Vec3f(a.y * b.z - a.z * b.y,
                     a.z * b.x - a.x * b.z, 
                     a.x * b.y - a.y * b.x);
  }
  
  public Vec3f normalize()
  {
    return new Vec3f(x / (float)Math.sqrt(x*x + y*y + z*z), 
                     y / (float)Math.sqrt(x*x + y*y + z*z), 
                     z / (float)Math.sqrt(x*x + y*y + z*z));
  }
  
  public static float scalar(Vec3f a, Vec3f b)
  {
    return a.x * b.x + a.y * b.y + a.z * b.z;
  }
  
  public static Vec3f minus(Vec3f a, Vec3f b)
  {
    return new Vec3f(a.x - b.x, a.y - b.y, a.z - b.z);
  }
}
