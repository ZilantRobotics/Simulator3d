using System;

public struct Vector2Double
{
    public Vector2Double(double x, double y)
    {
        this.x = x;
        this.y = y;
    }

    public override string ToString()
    {
        return $"{x}, {y}";
    }

    public static bool operator ==(Vector2Double lhs, Vector2Double rhs)
    {
        return lhs.x == rhs.x && lhs.y == rhs.y;
    }

    public static bool operator !=(Vector2Double lhs, Vector2Double rhs)
    {
        return !(lhs == rhs);
    }

    public double x;
    public double y;
}

public static class CoordMathHelper
{
    public static double ToRadians(double grad)
    {
        return grad * Math.PI / 180;
    }

    public static double ToDegrees(double rad)
    {
        return rad / Math.PI * 180;
    }
}