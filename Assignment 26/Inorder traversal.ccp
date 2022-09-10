/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
    vector<int> inorderTraversal(TreeNode* root) {
         vector<int> ans;
        TreeNode *cur = root, *pre;
        
        while(cur){
            if(cur->left){
                pre = cur->left;
                while(pre->right){
                    pre = pre->right;
                }
            
                pre->right = cur;
                TreeNode* tmp = cur;
                cur = cur->left;
                tmp->left = nullptr;
            }else{
                ans.push_back(cur->val);
                cur = cur->right;
            }
        }
        
        return ans;
        
    }
};