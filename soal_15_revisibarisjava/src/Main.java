import java.util.*;
import java.lang.*;
import java.io.*;
import java.math.*;

public class Main {
    public static void main(String[] args) throws Exception {
        Scanner kb = new Scanner(System.in);
        int tes_cases = kb.nextInt();
        for (int cs = 1; cs <= tes_cases; cs++) {
            int n = kb.nextInt();
            int a[] = new int[n];
            for (int i = 0; i < n; i++) {
                a[i] = kb.nextInt();
            }
            findZigZag(a, n);
        }
    }

    public static void findZigZag(int[] a, int n) {
        Arrays.sort(a);
        int mid = ((n + 1) / 2) - 1; // ganti
        int temp = a[mid];
        a[mid] = a[n - 1];
        a[n - 1] = temp;

        int st = mid + 1;
        int ed = n - 2; // ganti
        while (st <= ed) {
            temp = a[st];
            a[st] = a[ed];
            a[ed] = temp;
            st = st + 1;
            ed = ed - 1; // ganti
        }
        for (int i = 0; i < n; i++) {
            if (i > 0) System.out.print(" ");
            System.out.print(a[i]);
        }
        System.out.print(" ");
    }
}
