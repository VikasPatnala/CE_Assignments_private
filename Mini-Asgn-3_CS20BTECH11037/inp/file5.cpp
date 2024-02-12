#include <iostream>

class Shape {
public:
    virtual void draw() const {
        std::cout << "Drawing a shape" << std::endl;
    }

    virtual double area() const {
        return 0.0;
    }
};

class Circle : public Shape {
private:
    double radius;
public:
    Circle(double r) : radius(r) {}

    void draw() const override {
        std::cout << "Drawing a circle" << std::endl;
    }

    double area() const override {
        return 3.14 * radius * radius;
    }
};

class Rectangle : public Shape {
private:
    double width;
    double height;
public:
    Rectangle(double w, double h) : width(w), height(h) {}

    void draw() const override {
        std::cout << "Drawing a rectangle" << std::endl;
    }

    double area() const override {
        return width * height;
    }
};

int main() {
    Circle circle(5.0);
    Rectangle rectangle(3.0, 4.0);

    Shape* shapes[] = {&circle, &rectangle};

    for (int i = 0; i < 2; ++i) {
        shapes[i]->draw();
        std::cout << "Area: " << shapes[i]->area() << std::endl;
    }

    return 0;
}
