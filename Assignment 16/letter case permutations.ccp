class Solution {
public:
    vector<string> letterCasePermutation(string s) {
         vector<string> ans;
        ans.push_back(s);
        
        for(int i = 0; i < s.size(); i++){
            char c = s[i];
            if(isalpha(c)){
                vector<string> tmpv;
                for(string prevs : ans){
                    string tmp(prevs.begin(), prevs.end());
                    if(islower(c)){
                        tmp[i] = toupper(c);
                    }else if(isupper(c)){
                        tmp[i] = tolower(c);
                    }
                    tmpv.push_back(tmp);
                }
                
                ans.insert(ans.end(), tmpv.begin(), tmpv.end());
            }
        }
        