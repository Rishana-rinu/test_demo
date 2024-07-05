class Car{
  String brand ;
  String model;
  int year;
  Car(this.brand,this.model,this.year);
void displayDetails(){
 print('car details');
 print('brand :$brand');
 print('model :$model');
 print('year:$year');

  }
}
 void main(){
  Car myCar=  Car('swift','maruthi',2012);
  myCar.displayDetails();
  }

