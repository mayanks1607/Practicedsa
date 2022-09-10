class Solution {
public:
      bool isValid(vector<int>& nums, int m, long long maxSubSum){
        long long subSum = 0;
        int count = 1; 
        
        for(int num : nums){
            subSum += num;
            if(subSum > maxSubSum){
                
                subSum = num;
                count++;
                if(count > m){
                    return false;
                }
            }
        }
        
        return true;
    };
    int splitArray(vector<int>& nums, int m) {
           long long _max = 0, _sum = 0;
        
        for(long long num : nums){
            _max = max(_max, num);
            _sum += num;
        }
        
      
        long long left = _max, right = _sum, mid;    
        while(left <= right){
            mid = left + (right-left)/2;
            
            if(isValid(nums, m, mid)){
                right = mid - 1;
            }else{
                left = mid + 1;
            }
        } 
        return (int)left;    
    }
};