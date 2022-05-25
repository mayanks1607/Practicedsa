class Solution {
public:
    int mySqrt(int x) {
         if(x==1) return 1;
        long long l = 0;
        long long h = x;
        long long ans = 0;
        while((h-l)>1){
            long long m = l + (h-l)/2;
            if(m*m == x) return m;
            else if(m*m>x) h = m;
            else {
                ans = m;
                l = m;
            }
        }
        return ans;
        
    }
};