class Solution {
public:
    int firstBadVersion(int n) {
        int l = 1, r = n;
        while (l < r) {
            int m = l + (r - l) / 2;
            if (isBadVersion(m)) {
                r = m - 1;
            }
            else {
                l = m + 1;
            }
        }
        if (isBadVersion(l)) {
            return l;
        }
        return l + 1;
        
    }
};