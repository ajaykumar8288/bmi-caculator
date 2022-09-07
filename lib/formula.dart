import 'dart:math';

class Logic{
  double calculateBmi(int height, int weight){
    double bmi;
    bmi = weight/ pow(height/100, 2);
    return bmi;
    
  }
}