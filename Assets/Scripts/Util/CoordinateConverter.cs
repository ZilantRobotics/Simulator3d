using System;
using UnityEngine;

public static class CoordinateConverter
{
    public enum OperationTypeDDToDms { longitude, latitude };
    private static double a;
    private static double eccSquared;
    private static bool status;
    private static string datumName = "WGS 84";
    
    #region Universal Coordinates Converter

    public static string DDtoDMS(double coordinate, OperationTypeDDToDms type)
    {
        // Set flag if number is negative
        bool neg = coordinate < 0d;

        // Work with a positive number
        coordinate = Math.Abs(coordinate);

        // Get d/m/s components
        double d = Math.Floor(coordinate);
        coordinate -= d;
        coordinate *= 60;
        double m = Math.Floor(coordinate);
        coordinate -= m;
        coordinate *= 60;
        double s = Math.Round(coordinate);

        // Create padding character
        char pad;
        char.TryParse("0", out pad);

        // Create d/m/s strings
        string dd = d.ToString();
        string mm = m.ToString().PadLeft(2, pad);
        string ss = s.ToString().PadLeft(2, pad);

        // Append d/m/s
        string dms = string.Format("{0}°{1}'{2}\"", dd, mm, ss);

        // Append compass heading
        switch (type)
        {
            case OperationTypeDDToDms.longitude:
                dms += neg ? "W" : "E";
                break;
            case OperationTypeDDToDms.latitude:
                dms += neg ? "S" : "N ";
                break;
        }

        // Return formated string
        return dms;
    }

    public static string DmsToDD(double d, double m = 0, double s = 0)
    {
        return Convert.ToDecimal((d + (m / 60) + (s / 3600)) * (d < 0 ? -1 : 1)).ToString();
    }


    private static String GetUtmLetterDesignator(double latitude)
    {
        if ((84 >= latitude) && (latitude >= 72))
            return "X";
        else if ((72 > latitude) && (latitude >= 64))
            return "W";
        else if ((64 > latitude) && (latitude >= 56))
            return "V";
        else if ((56 > latitude) && (latitude >= 48))
            return "U";
        else if ((48 > latitude) && (latitude >= 40))
            return "T";
        else if ((40 > latitude) && (latitude >= 32))
            return "S";
        else if ((32 > latitude) && (latitude >= 24))
            return "R";
        else if ((24 > latitude) && (latitude >= 16))
            return "Q";
        else if ((16 > latitude) && (latitude >= 8))
            return "P";
        else if ((8 > latitude) && (latitude >= 0))
            return "N";
        else if ((0 > latitude) && (latitude >= -8))
            return "M";
        else if ((-8 > latitude) && (latitude >= -16))
            return "L";
        else if ((-16 > latitude) && (latitude >= -24))
            return "K";
        else if ((-24 > latitude) && (latitude >= -32))
            return "J";
        else if ((-32 > latitude) && (latitude >= -40))
            return "H";
        else if ((-40 > latitude) && (latitude >= -48))
            return "G";
        else if ((-48 > latitude) && (latitude >= -56))
            return "F";
        else if ((-56 > latitude) && (latitude >= -64))
            return "E";
        else if ((-64 > latitude) && (latitude >= -72))
            return "D";
        else if ((-72 > latitude) && (latitude >= -80))
            return "C";
        else
            return "Z";
    }


    public static string ConvertLatLngToUtm(double latitude, double longitude)
    {
        SetEllipsoid(datumName);
        if (status)
        {
            throw new Exception("No ecclipsoid data associated with unknown datum: " + datumName);
        }

        int ZoneNumber;

        var LongTemp = longitude;
        var LatRad = CoordMathHelper.ToRadians(latitude);
        var LongRad = CoordMathHelper.ToRadians(LongTemp);

        if (LongTemp >= 8 && LongTemp <= 13 && latitude > 54.5 && latitude < 58)
        {
            ZoneNumber = 32;
        }
        else if (latitude >= 56.0 && latitude < 64.0 && LongTemp >= 3.0 && LongTemp < 12.0)
        {
            ZoneNumber = 32;
        }
        else
        {
            ZoneNumber = (int) ((LongTemp + 180) / 6) + 1;

            if (latitude >= 72.0 && latitude < 84.0)
            {
                if (LongTemp >= 0.0 && LongTemp < 9.0)
                {
                    ZoneNumber = 31;
                }
                else if (LongTemp >= 9.0 && LongTemp < 21.0)
                {
                    ZoneNumber = 33;
                }
                else if (LongTemp >= 21.0 && LongTemp < 33.0)
                {
                    ZoneNumber = 35;
                }
                else if (LongTemp >= 33.0 && LongTemp < 42.0)
                {
                    ZoneNumber = 37;
                }
            }
        }

        var LongOrigin = (ZoneNumber - 1) * 6 - 180 + 3; //+3 puts origin in middle of zone
        var LongOriginRad = CoordMathHelper.ToRadians(LongOrigin);

        var UTMZone = GetUtmLetterDesignator(latitude);

        var eccPrimeSquared = (eccSquared) / (1 - eccSquared);

        var N = a / Math.Sqrt(1 - eccSquared * Math.Sin(LatRad) * Math.Sin(LatRad));
        var T = Math.Tan(LatRad) * Math.Tan(LatRad);
        var C = eccPrimeSquared * Math.Cos(LatRad) * Math.Cos(LatRad);
        var A = Math.Cos(LatRad) * (LongRad - LongOriginRad);

        var M = a * ((1 - eccSquared / 4 - 3 * eccSquared * eccSquared / 64 -
                      5 * eccSquared * eccSquared * eccSquared / 256) * LatRad
                     - (3 * eccSquared / 8 + 3 * eccSquared * eccSquared / 32 +
                        45 * eccSquared * eccSquared * eccSquared / 1024) * Math.Sin(2 * LatRad)
                     + (15 * eccSquared * eccSquared / 256 + 45 * eccSquared * eccSquared * eccSquared / 1024) *
                     Math.Sin(4 * LatRad)
                     - (35 * eccSquared * eccSquared * eccSquared / 3072) * Math.Sin(6 * LatRad));

        var UTMEasting = 0.9996 * N * (A + (1 - T + C) * A * A * A / 6
                                         + (5 - 18 * T + T * T + 72 * C - 58 * eccPrimeSquared) * A * A * A * A * A /
                                         120)
                         + 500000.0;

        var UTMNorthing = 0.9996 * (M + N * Math.Tan(LatRad) *
            (A * A / 2 + (5 - T + 9 * C + 4 * C * C) * A * A * A * A / 24
                       + (61 - 58 * T + T * T + 600 * C - 330 * eccPrimeSquared) * A * A * A *
                       A * A * A / 720));

        if (latitude < 0)
            UTMNorthing += 10000000.0;
        return
            string.Format("{0} {1} {2}{3}", UTMEasting, UTMNorthing, ZoneNumber,
                UTMZone); // { Easting = UTMEasting, Northing = UTMNorthing, ZoneNumber = ZoneNumber, ZoneLetter = UTMZone };
    }

    public static void ConvertLatLngToUtm(double latitude, double longitude,
        out Vector2 utm, out int zoneId, out string utmZonw
    )
    {
        SetEllipsoid(datumName);
        if (status)
        {
            throw new Exception("No ecclipsoid data associated with unknown datum: " + datumName);
        }

        int ZoneNumber;

        var LongTemp = longitude;
        var LatRad = CoordMathHelper.ToRadians(latitude);
        var LongRad = CoordMathHelper.ToRadians(LongTemp);

        if (LongTemp >= 8 && LongTemp <= 13 && latitude > 54.5 && latitude < 58)
        {
            ZoneNumber = 32;
        }
        else if (latitude >= 56.0 && latitude < 64.0 && LongTemp >= 3.0 && LongTemp < 12.0)
        {
            ZoneNumber = 32;
        }
        else
        {
            ZoneNumber = (int) ((LongTemp + 180) / 6) + 1;

            if (latitude >= 72.0 && latitude < 84.0)
            {
                if (LongTemp >= 0.0 && LongTemp < 9.0)
                {
                    ZoneNumber = 31;
                }
                else if (LongTemp >= 9.0 && LongTemp < 21.0)
                {
                    ZoneNumber = 33;
                }
                else if (LongTemp >= 21.0 && LongTemp < 33.0)
                {
                    ZoneNumber = 35;
                }
                else if (LongTemp >= 33.0 && LongTemp < 42.0)
                {
                    ZoneNumber = 37;
                }
            }
        }

        var LongOrigin = (ZoneNumber - 1) * 6 - 180 + 3; //+3 puts origin in middle of zone
        var LongOriginRad = CoordMathHelper.ToRadians(LongOrigin);

        var UTMZone = GetUtmLetterDesignator(latitude);

        var eccPrimeSquared = (eccSquared) / (1 - eccSquared);

        var N = a / Math.Sqrt(1 - eccSquared * Math.Sin(LatRad) * Math.Sin(LatRad));
        var T = Math.Tan(LatRad) * Math.Tan(LatRad);
        var C = eccPrimeSquared * Math.Cos(LatRad) * Math.Cos(LatRad);
        var A = Math.Cos(LatRad) * (LongRad - LongOriginRad);

        var M = a * ((1 - eccSquared / 4 - 3 * eccSquared * eccSquared / 64 -
                      5 * eccSquared * eccSquared * eccSquared / 256) * LatRad
                     - (3 * eccSquared / 8 + 3 * eccSquared * eccSquared / 32 +
                        45 * eccSquared * eccSquared * eccSquared / 1024) * Math.Sin(2 * LatRad)
                     + (15 * eccSquared * eccSquared / 256 + 45 * eccSquared * eccSquared * eccSquared / 1024) *
                     Math.Sin(4 * LatRad)
                     - (35 * eccSquared * eccSquared * eccSquared / 3072) * Math.Sin(6 * LatRad));

        var UTMEasting = 0.9996 * N * (A + (1 - T + C) * A * A * A / 6
                                         + (5 - 18 * T + T * T + 72 * C - 58 * eccPrimeSquared) * A * A * A * A * A /
                                         120)
                         + 500000.0;

        var UTMNorthing = 0.9996 * (M + N * Math.Tan(LatRad) *
            (A * A / 2 + (5 - T + 9 * C + 4 * C * C) * A * A * A * A / 24
                       + (61 - 58 * T + T * T + 600 * C - 330 * eccPrimeSquared) * A * A * A *
                       A * A * A / 720));

        if (latitude < 0)
            UTMNorthing += 10000000.0;
        utm = new Vector2((float) UTMEasting, (float) UTMNorthing);
        zoneId = ZoneNumber;
        utmZonw = UTMZone;
    }


    public static void ConvertLatLngToUtm(double latitude, double longitude, out double northing, out double easting)
    {
        string coords = ConvertLatLngToUtm(latitude, longitude);
        string[] strValues = coords.Split(new char[] {' '});

        northing = double.Parse(strValues[1]);
        easting = double.Parse(strValues[0]);
    }


    private static void SetEllipsoid(String name)
    {
        switch (name)
        {
            case "Airy":
                a = 6377563;
                eccSquared = 0.00667054;
                break;
            case "Australian National":
                a = 6378160;
                eccSquared = 0.006694542;
                break;
            case "Bessel 1841":
                a = 6377397;
                eccSquared = 0.006674372;
                break;
            case "Bessel 1841 Nambia":
                a = 6377484;
                eccSquared = 0.006674372;
                break;
            case "Clarke 1866":
                a = 6378206;
                eccSquared = 0.006768658;
                break;
            case "Clarke 1880":
                a = 6378249;
                eccSquared = 0.006803511;
                break;
            case "Everest":
                a = 6377276;
                eccSquared = 0.006637847;
                break;
            case "Fischer 1960 Mercury":
                a = 6378166;
                eccSquared = 0.006693422;
                break;
            case "Fischer 1968":
                a = 6378150;
                eccSquared = 0.006693422;
                break;
            case "GRS 1967":
                a = 6378160;
                eccSquared = 0.006694605;
                break;
            case "GRS 1980":
                a = 6378137;
                eccSquared = 0.00669438;
                break;
            case "Helmert 1906":
                a = 6378200;
                eccSquared = 0.006693422;
                break;
            case "Hough":
                a = 6378270;
                eccSquared = 0.00672267;
                break;
            case "International":
                a = 6378388;
                eccSquared = 0.00672267;
                break;
            case "Krassovsky":
                a = 6378245;
                eccSquared = 0.006693422;
                break;
            case "Modified Airy":
                a = 6377340;
                eccSquared = 0.00667054;
                break;
            case "Modified Everest":
                a = 6377304;
                eccSquared = 0.006637847;
                break;
            case "Modified Fischer 1960":
                a = 6378155;
                eccSquared = 0.006693422;
                break;
            case "South American 1969":
                a = 6378160;
                eccSquared = 0.006694542;
                break;
            case "WGS 60":
                a = 6378165;
                eccSquared = 0.006693422;
                break;
            case "WGS 66":
                a = 6378145;
                eccSquared = 0.006694542;
                break;
            case "WGS 72":
                a = 6378135;
                eccSquared = 0.006694318;
                break;
            case "ED50":
                a = 6378388;
                eccSquared = 0.00672267;
                break; // International Ellipsoid
            case "WGS 84":
            case "EUREF89": // Max deviation from WGS 84 is 40 cm/km see http://ocq.dk/euref89 (in danish)
            case "ETRS89": // Same as EUREF89 
                a = 6378137;
                eccSquared = 0.00669438;
                break;
            default:
                status = true;
                break;
        }
    }

    public static string ConvertUtmToLatLng(double UTMEasting, double UTMNorthing, int UTMZoneNumber,
        String UTMZoneLetter)
    {
        SetEllipsoid(datumName);
        var e1 = (1 - Math.Sqrt(1 - eccSquared)) / (1 + Math.Sqrt(1 - eccSquared));
        var x = UTMEasting - 500000.0; //remove 500,000 meter offset for Longitude
        var y = UTMNorthing;
        var ZoneNumber = UTMZoneNumber;
        var ZoneLetter = UTMZoneLetter;
        int NorthernHemisphere;

        if ("N" == ZoneLetter)
        {
            NorthernHemisphere = 1;
        }
        else
        {
            NorthernHemisphere = 0;
            y -= 10000000.0;
        }

        var LongOrigin = (ZoneNumber - 1) * 6 - 180 + 3;
        var eccPrimeSquared = (eccSquared) / (1 - eccSquared);

        double M = y / 0.9996;
        var mu = M / (a * (1 - eccSquared / 4 - 3 * eccSquared * eccSquared / 64 -
                           5 * eccSquared * eccSquared * eccSquared / 256));

        var phi1Rad = mu + (3 * e1 / 2 - 27 * e1 * e1 * e1 / 32) * Math.Sin(2 * mu)
                         + (21 * e1 * e1 / 16 - 55 * e1 * e1 * e1 * e1 / 32) * Math.Sin(4 * mu)
                         + (151 * e1 * e1 * e1 / 96) * Math.Sin(6 * mu);
        var phi1 = CoordMathHelper.ToDegrees(phi1Rad);

        var N1 = a / Math.Sqrt(1 - eccSquared * Math.Sin(phi1Rad) * Math.Sin(phi1Rad));
        var T1 = Math.Tan(phi1Rad) * Math.Tan(phi1Rad);
        var C1 = eccPrimeSquared * Math.Cos(phi1Rad) * Math.Cos(phi1Rad);
        var R1 = a * (1 - eccSquared) / Math.Pow(1 - eccSquared * Math.Sin(phi1Rad) * Math.Sin(phi1Rad), 1.5);
        var D = x / (N1 * 0.9996);

        var Lat = phi1Rad - (N1 * Math.Tan(phi1Rad) / R1) *
            (D * D / 2 - (5 + 3 * T1 + 10 * C1 - 4 * C1 * C1 - 9 * eccPrimeSquared) * D * D * D * D / 24
             + (61 + 90 * T1 + 298 * C1 + 45 * T1 * T1 - 252 * eccPrimeSquared - 3 * C1 * C1) * D * D * D * D *
             D * D / 720);
        Lat = CoordMathHelper.ToDegrees(Lat);

        var Long = (D - (1 + 2 * T1 + C1) * D * D * D / 6 +
                    (5 - 2 * C1 + 28 * T1 - 3 * C1 * C1 + 8 * eccPrimeSquared + 24 * T1 * T1)
                    * D * D * D * D * D / 120) / Math.Cos(phi1Rad);
        Long = LongOrigin + CoordMathHelper.ToDegrees(Long);
        return string.Format("{0} {1} ", Lat, Long);
    }

    public static void ConvertUtmToLatLng(double UTMEasting, double UTMNorthing, int UTMZoneNumber,
        String UTMZoneLetter, out double lat, out double lon)
    {
        SetEllipsoid(datumName);
        var e1 = (1 - Math.Sqrt(1 - eccSquared)) / (1 + Math.Sqrt(1 - eccSquared));
        var x = UTMEasting - 500000.0; //remove 500,000 meter offset for Longitude
        var y = UTMNorthing;
        var ZoneNumber = UTMZoneNumber;
        var ZoneLetter = UTMZoneLetter;
        int NorthernHemisphere;

        if ("N" == ZoneLetter)
        {
            NorthernHemisphere = 1;
        }
        else
        {
            NorthernHemisphere = 0;
            y -= 10000000.0;
        }

        var LongOrigin = (ZoneNumber - 1) * 6 - 180 + 3;

        var eccPrimeSquared = (eccSquared) / (1 - eccSquared);

        double M = y / 0.9996;
        var mu = M / (a * (1 - eccSquared / 4 - 3 * eccSquared * eccSquared / 64 -
                           5 * eccSquared * eccSquared * eccSquared / 256));

        var phi1Rad = mu + (3 * e1 / 2 - 27 * e1 * e1 * e1 / 32) * Math.Sin(2 * mu)
                         + (21 * e1 * e1 / 16 - 55 * e1 * e1 * e1 * e1 / 32) * Math.Sin(4 * mu)
                         + (151 * e1 * e1 * e1 / 96) * Math.Sin(6 * mu);
        var phi1 = CoordMathHelper.ToDegrees(phi1Rad);

        var N1 = a / Math.Sqrt(1 - eccSquared * Math.Sin(phi1Rad) * Math.Sin(phi1Rad));
        var T1 = Math.Tan(phi1Rad) * Math.Tan(phi1Rad);
        var C1 = eccPrimeSquared * Math.Cos(phi1Rad) * Math.Cos(phi1Rad);
        var R1 = a * (1 - eccSquared) / Math.Pow(1 - eccSquared * Math.Sin(phi1Rad) * Math.Sin(phi1Rad), 1.5);
        var D = x / (N1 * 0.9996);

        var Lat = phi1Rad - (N1 * Math.Tan(phi1Rad) / R1) *
            (D * D / 2 - (5 + 3 * T1 + 10 * C1 - 4 * C1 * C1 - 9 * eccPrimeSquared) * D * D * D * D / 24
             + (61 + 90 * T1 + 298 * C1 + 45 * T1 * T1 - 252 * eccPrimeSquared - 3 * C1 * C1) * D * D * D * D *
             D * D / 720);
        Lat = CoordMathHelper.ToDegrees(Lat);

        var Long = (D - (1 + 2 * T1 + C1) * D * D * D / 6 +
                    (5 - 2 * C1 + 28 * T1 - 3 * C1 * C1 + 8 * eccPrimeSquared + 24 * T1 * T1)
                    * D * D * D * D * D / 120) / Math.Cos(phi1Rad);
        Long = LongOrigin + CoordMathHelper.ToDegrees(Long);
        lat = Lat;
        lon = Long;
        // return string.format("{0} {1} ", Lat, Long);
    }

    #endregion
}