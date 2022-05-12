#include<bits/stdc++.h>
using namespace std;

//spaceComplexity O(1)
//Time Complexity O(n^2)
void printVector(vector<int>A){
    for(int a:A) cout<<a<<" ";
    cout<<"\n";
}

int getMinIndex(vector<int>&A, int i){
    int min_index=i;
    for(;i<A.size();i++){
        if(A[i]<A[min_index]){
            min_index=i;
        }
    }
    return min_index;
}

void selectionSort(vector<int>&A){
    cout<<"selectionSort: ";
    for(int i=0;i<A.size();i++){
        int min_index = getMinIndex(A,i);
        cout<<"i: "<<i<<" min_index: "<<min_index<<" A[min_index]: "<<A[min_index]<<"\n";
        swap(A[i],A[min_index]);
        printVector(A);
    }
    //return A;
}


int main() {
    vector<int>A = {5,3,6,3,4,1};
    cout<<"Array To Sort: ";
    printVector(A);
    selectionSort(A);
    printVector(A);
}