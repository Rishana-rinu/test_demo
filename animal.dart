class Animal {
  void makeSound(){
    print('some animal sound');
  }
}
class Dog extends Animal{
  void makeSound(){
    print('Bark');
  }
}

void main(){
  Dog myDog=Dog();
    myDog.makeSound();
  }
