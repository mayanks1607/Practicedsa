#include <iostream>
using namespace std;
int gcd(int a, int b){
    if(b>a){
        swap(a,b);
    }
    int r= a%b;
    while(r!=0){
        a=b;
        b=r;
        r=a%b;
      }
      return b;
}
int main() {
    int a ,b;
    cin >> a >> b;
    cout << gcd(a,b);
}
