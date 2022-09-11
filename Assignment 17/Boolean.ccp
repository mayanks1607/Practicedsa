#include<bits/stdc++.h>
using namespace std;
 
bool isTargetPresent(vector<int>A, int target){
    //returns true if target is present in A else
    for(int i=0;i<A.size();i++){
        if(A[i]==target){
        	cout<<true<<endl;
            return true;
        }
    }
    cout<<"hello"<<endl;
    return false;
}
 
bool isTargetPresentIn2DVector(vector<vector<int> >A, int target){
    //returns true if target is present in A
    for(int i=0;i<A.size();i++){
        for(int j=0;j<A[i].size();j++){
            if(A[i][j]==target){
            	cout<<true<<endl;
                return true;
            }
        }
    }
    cout<<"hello"<<endl;
    return false;
}
bool isTragetPresentInRow(vector<vector<int> >A, int target, int r){
    //returns true if target is present in row r of A then returns true else return false;
    for(int i=0;i<r;i++){
        for(int j=0;j<A[i].size();j++){
            if(A[i][j]==target){
            	cout<<true<<endl;
                return true;
            }
        }
    }
    cout<<"hello"<<endl;
    return false;
}
 
bool isTragetPresentInCol(vector<vector<int> >A, int target, int c){
    //returns true if target is present in column c of A then returns true else return false;
    for(int i=0;i<A.size();i++){
        for(int j=0;j<c;j++){
            if(A[i][j]==target){
            	cout<<true<<endl;
                return true;
            }
        }
    }
    cout<<"hello"<<endl;
    return false;
}
 
int main() {
    vector<int> B{1,2,3,4,5};
    int k=4;
    vector<vector<int>> A{{1,2,3},{4,5,6},{7,8,9}};
    isTargetPresent(B ,k);
    isTargetPresentIn2DVector(A,8);
    isTragetPresentInRow(A,7,3);
    isTragetPresentInCol(A,3,3);
 
 
    return 0;
}