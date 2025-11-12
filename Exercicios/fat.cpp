#include <iostream>
#include <cstdint>

using namespace std;

extern "C" int64_t fatorial(int64_t);

int main(){
    int64_t n, f;

    cout << "Informe um inteiro: \n";
    cin >> n;

    f=fatorial(n);

    cout << "O fatorial de " << n << " é " << f << endl;
    return 0; 
}