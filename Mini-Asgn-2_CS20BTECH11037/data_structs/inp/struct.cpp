#include <iostream>

struct st{
private:
    int prv1;
    double prv2;
public:
    int pub;
    st(int prv1, double prv2, int pub) : prv1(prv1), prv2(prv2), pub(pub) {}
    void print() {
        std::cout << prv1 << " " << prv2 << " " << pub << std::endl;
    }
};

int main() {
    st s(1, 1.0, 1);
    s.print();
}