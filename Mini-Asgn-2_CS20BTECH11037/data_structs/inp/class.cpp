#include <iostream>

class c{
private:
    int prv1;
    double prv2;
public:
    int pub;
    c(int prv1, double prv2, int pub) : prv1(prv1), prv2(prv2), pub(pub) {}
    void print() {
        std::cout << prv1 << " " << prv2 << " " << pub << std::endl;
    }
};

int main() {
    c cls(1, 1.0, 1);
    cls.print();
}