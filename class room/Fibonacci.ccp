#include<bits/stdc++.h>
using namespace std;
 
void fibo(int number){
    int prev = 0;
    int curr = 1;
    cout<<prev<<" "<<curr<<" ";
    int nextTerm = prev + curr;
    for(int i=2;i<number;i++){
        cout<<nextTerm<<" ";
        prev = curr;
        curr = nextTerm;
        nextTerm = prev + curr;
    }
}
 
 
int main(){
    int n;
    cin>>n;
    fibo(n);
}