#include <bits/stdc++.h>
using namespace std;

int sum(vector<vector<int>> a, vector<vector<int>> b,int ra,int cb){
    int sum = 0;
    for(int i=0;i<b.size();i++){
        sum += a[ra][i]*b[i][cb];
    }
    return sum;
}

vector<vector<int>> multiply(vector<vector<int>> a,vector<vector<int>> b ){
    vector<vector<int>> c;
    for(int i=0;i<a.size();i++){
        vector<int> k;
        for(int j=0;j<b[0].size();j++){
            k.push_back(sum(a,b,i,j));
        }
        c.push_back(k);
    }
    return c;
}
    
    


vector<vector<int>> takeInput(int n,int m){
    vector<vector<int>> output;
    for(int i=0;i<n;i++){
        vector<int> arr;
        for(int j=0;j<m;j++){
            int x;
            cin>>x;
            arr.push_back(x);
        }
        output.push_back(arr);
    }
    return output;
}

void print(vector<vector<int>> matrix){
    for(int i=0;i<matrix.size();i++){
        for(int j=0;j<matrix[0].size();j++){
            cout<<matrix[i][j]<<" ";
        }
        cout<<endl;
    }
}

int main(){
    int n,m;
    cin>>n>>m;
    vector<vector<int>> a = takeInput(n,m);
    int n1,m1;
    cin>>n1>>m1;
    vector<vector<int>> b = takeInput(n1,m1);
    vector<vector<int>> c = multiply(a,b);
    print(c);
    
}