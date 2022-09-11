/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */
class Solution {
public:
    ListNode *getIntersectionNode(ListNode *headA, ListNode *headB) {
        vector<ListNode*> lA, lB;
        ListNode *curA = headA, *curB = headB;
        
        while(curA){
            lA.push_back(curA);
            curA = curA->next;
        }
        
        while(curB){
            lB.push_back(curB);
            curB = curB->next;
        }
        
        int i = 0;
        while(i < min(lA.size(), lB.size())){
            if(lA[lA.size()-1-i] != lB[lB.size()-1-i]){
                break;
            }
            i++;
        }
        
        if(i == 0) return NULL;
        return lA[lA.size()-1-(i-1)];
    }
};