import 'dart:math';

void main(List<String> arguments) {

 /* print(Function is Student);
  print(Function is Jahalat);
*/
print('Pakistan \u{1F5A4}');

}

class Student{
  int call(){
    return 22;
  }
  void soo(){

  }
}
@functionalInterface
class Jahalat{
  
}


const functionalInterface = FunctionalInterface();

class FunctionalInterface{
  const FunctionalInterface();
}



  // print('Hello world!');
  // var list = [3, 7, 5, 4];
  // // joinValuesOfArrays(list);
  // //joinValuesOfArraysDifferent(list);
  // var result = reverseAnArraySecondMethod(list);
  // print(result);
void joinValuesOfArrays(List<int> list) {
  for (var i = 0; i < list.length; i++) {
    for (var j = 0; j < list.length; j++) {
      print('${list[i]} ${list[j]}');
    }
  }
}

void joinValuesOfArraysDifferent(List<int> list) {
  for (var i = 0; i < list.length; i++) {
    for (var j = i + 1; j < list.length; j++) {
      print('${list[i]} ${list[j]}');
    }
  }
}

List<int> reverseAnArrayOneMethod(List<int> list) {
  int end = list.length - 1;
  int start = 0;
  for (var i = 0; i < list.length / 2; i++) {
    // swapping
    int temp = list[start];
    list[start] = list[end];
    list[end] = temp;
    start++;
    end--;
  }
  return list;
}

List<int> reverseAnArraySecondMethod(List<int> list) {
  for (var i = 0; i < list.length / 2; i++) {
    // swapping
    int temp = list[i];
    list[i] = list[list.length - i - 1];
    list[list.length - i - 1] = temp;
  }
  return list;
}

void swap(int valueOne, int valueTwo) {
  int temp = valueOne;
  valueOne = valueTwo;
  valueTwo = temp;
}

void moo(int j, {int k = 3}) {}
