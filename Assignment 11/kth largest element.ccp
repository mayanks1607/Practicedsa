class Solution {
public:
    int countA(vector<int> &nums,int target){
        int count = 0;
        for(auto x : nums){
            if(x>=target) count++;
        }
        return count;
    }
    
    int findKthLargest(vector<int>& nums, int k) {
         int l = -1e4;
        int h = 1e4;
        int ans = 0;
        while(l<=h){
            int m = (h+l)/2;
            // cout<<l<<" "<<m<<" "<<h<<" "<<endl;
            if(countA(nums,m)<k) h = m-1;
            else{
                ans = m;
                l = m+1;
            }
            
        }
        return ans;
        
    }
};