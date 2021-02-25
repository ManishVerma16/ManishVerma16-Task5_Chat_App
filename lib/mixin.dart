void main() {
  // Animal().move();
  // Fish().move();
  // Bird().move();
  Duck().move();
  Duck().swim();
  Duck().fly();

}

class Animal {
  void move() {
    print('changed position');
  }
}

class Fish extends Animal {
  @override
  void move() {
    super.move();
    print('by swimming');
  }
}

class Bird extends Animal {
  @override
  void move() {
    super.move();
    print('by flying');
  }
}

mixin CanSwim {
  void swim() {
    print('moving by swimming');
  }
}

mixin CanFly {
  void fly() {
    print('moving by flying');
  }
}

class Duck extends Animal with CanSwim, CanFly {}
