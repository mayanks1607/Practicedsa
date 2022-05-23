class Solution {
public:
    int search(vector<int>& nums, int target) {
        int l = 0, m;
        int h = nums.size()-1;
        
        while(l<=h){
            m = (h+l)/2;
            if(nums[m] == target){
                return m;
            }
            if(nums[m] > target){
                h = m-1;
            }
            else l=m+1;
        }
        return -1;
    }
};