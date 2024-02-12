#include <iostream>

class Rectangle {
private:
    int length;
    int width;
public:
    Rectangle() {
        length = 0;
        width = 0;
    }

    Rectangle(int l, int w) {
        length = l;
        width = w;
    }

    int area() {
        return length * width;
    }

    int perimeter() {
        return 2 * (length + width);
    }
};

int main() {
    Rectangle rect1;
    Rectangle rect2(5, 3);

    std::cout << "Area of rect1: " << rect1.area() << std::endl;
    std::cout << "Perimeter of rect1: " << rect1.perimeter() << std::endl;

    std::cout << "Area of rect2: " << rect2.area() << std::endl;
    std::cout << "Perimeter of rect2: " << rect2.perimeter() << std::endl;

    return 0;
}
