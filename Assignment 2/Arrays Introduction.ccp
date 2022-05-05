#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    int n , a;
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    cin >> n;
    int  arr[n];
    int length = sizeof(arr)/sizeof(arr[0]);
    for(int i = 0; i < length ; i++){
        cin >> arr[i];
        
    }
   for(int i = length-1; i >=0 ; i--){
        cout  << arr[i] << " ";
    }   
    return 0;
}
