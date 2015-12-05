using UnityEngine;

public static class GaussFunctions {

    public static float Gauss(float x, float propagationRate)
    {
        float a = 1f / (propagationRate * Mathf.Sqrt(2f * Mathf.PI));
        float b = 0f;
        float c = propagationRate;

        return a * Mathf.Exp(-Mathf.Pow(x - b, 2f) / 2f * Mathf.Pow(c, 2f));
    }

    public static float fixedGauss(float x, float propagationRate)
    {
        return Gauss(x, propagationRate) + (1f - Gauss(0, propagationRate));
    }

    public static int[] boxesForGauss(float sigma, int n)
    {
        float wIdeal = Mathf.Sqrt((12 * sigma * sigma / n) + 1);
        int wl = Mathf.FloorToInt(wIdeal); if (wl % 2 == 0) wl--;
        int wu = wl + 2;

        float mIdeal = (12 * sigma * sigma - n * wl * wl - 4 * n * wl - 3 * n) / (-4 * wl - 4);
        int m = Mathf.RoundToInt(mIdeal);

        int[] sizes = new int[n]; for (int i = 0; i < n; i++) sizes[i] = i < m ? wl : wu;
        return sizes;
    }

    public static void gaussBlur_4(float[] scl, float[] tcl, int w, int h, float r)
    {
        int[] bxs = boxesForGauss(r, 3);
        boxBlur_4(scl, tcl, w, h, (bxs[0] - 1) / 2);
        boxBlur_4(tcl, scl, w, h, (bxs[1] - 1) / 2);
        boxBlur_4(scl, tcl, w, h, (bxs[2] - 1) / 2);
    }

    public static void boxBlur_4(float[] scl, float[] tcl, int w, int h, float r)
    {
        for (int i = 0; i < scl.Length; i++) tcl[i] = scl[i];
        boxBlurH_4(tcl, scl, w, h, r);
        boxBlurT_4(scl, tcl, w, h, r);
    }

    public static void boxBlurH_4(float[] scl, float[] tcl, int w, int h, float r)
    {
        float iarr = 1 / (r + r + 1);
        for (int i = 0; i < h; i++)
        {
            int ti = i * w, li = ti, ri = ti + (int)r;
            float fv = scl[ti];
            float lv = scl[ti + w - 1];
            float val = (r + 1) * fv;
            for (int j = 0; j < r; j++) val += scl[ti + j];
            for (int j = 0; j <= r; j++)
            {
                val += scl[ri++] - fv;
                tcl[ti++] = val * iarr;
            }
            for (int j = (int)r + 1; j < w - r; j++)
            {
                val += scl[ri++] - scl[li++];
                tcl[ti++] = val * iarr;
            }
            for (int j = w - (int)r; j < w; j++)
            {
                val += lv - scl[li++];
                tcl[ti++] = val * iarr;
            }
        }
    }

    public static void boxBlurT_4(float[] scl, float[] tcl, int w, int h, float r)
    {
        float iarr = 1 / (r + r + 1);
        for (int i = 0; i < w; i++)
        {
            int ti = i, li = ti, ri = ti + (int)r * w;
            float fv = scl[ti];
            float lv = scl[ti + w * (h - 1)];
            float val = (r + 1) * fv;
            for (var j = 0; j < r; j++) val += scl[ti + j * w];
            for (var j = 0; j <= r; j++)
            {
                val += scl[ri] - fv;
                tcl[ti] = val * iarr;
                ri += w; ti += w;
            }
            for (var j = r + 1; j < h - r; j++)
            {
                val += scl[ri] - scl[li];
                tcl[ti] = val * iarr;
                li += w; ri += w; ti += w;
            }
            for (var j = h - r; j < h; j++)
            {
                val += lv - scl[li];
                tcl[ti] = val * iarr;
                li += w; ti += w;
            }
        }
    }
}
