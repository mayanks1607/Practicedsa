class Solution {
public:
    int peakIndexInMountainArray(vector<int>& nums) {
        int n = nums.size();
    
    int l = 1;
    int h = n-2;
    
    while(l <= h){
        // int m = (l+h)/2;
        int m = l + (h - l)/2;
        if(nums[m] > nums[m-1] && nums[m] > nums[m+1])
            return m;
        else if(nums[m] <  nums[m+1])
            l = m + 1;
        else
            h = m - 1; 
        
    }
    
    return -1;
        
    }
};