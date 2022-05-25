class Solution {
public:
    int arrangeCoins(int n) {
        long l = 1;
        long r = n;
        
        while(l <= r){
            long m = (l + r)/2;
            long sum = (m *(m + 1))/2.0;
            
            if (sum < n){
                l  = m + 1;
            }
            if (sum > n){
                r = m - 1;
            }
            else{
                return m;
            }
        }
        return l-1;
        
    }
};