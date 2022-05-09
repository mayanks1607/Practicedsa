#include <bits/stdc++.h>
using namespace std;

vector<int> mergesorted(vector<int> A,vector<int> B){
    vector<int> result;
    int i = 0;
    int j = 0;
    while(i<A.size() && j<B.size()){
        if(A[i] < B[j]){
            result.push_back(A[i]);
            i++;
        }
        else{
            result.push_back(B[j]);
            j++;
        }
    }
    while(i<A.size()){
        result.push_back(A[i]);
        i++;
    }
    while(j<B.size()){
        result.push_back(B[j]);
        j++;
    }
    return result;
}

int main(){
    
    vector<int> A ={1,3,5,7};
    vector<int> B = {2,4,6,7};
    vector<int> result = mergesorted(A,B);
    for(auto x : result){
        cout<<x<<" ";
    }
}