class Solution {
public:
    int coinChange(vector<int>& coins, int amount) {
           if(amount == 0) 
               return 0;
        
        vector<int> count(amount+1, INT_MAX);
        
        for(int coin : coins){
            if(coin <= amount) count[coin] = 1;
        }
        
        for(int i = 1; i <= amount; i++){
            for(int coin : coins){
                if(i < coin) continue;
                if(count[i-coin] == INT_MAX) continue;
                count[i] = min(count[i], count[i-coin]+1);
            }
        }       
        return count[amount] == INT_MAX ? -1 : count[amount];
    }
};