import 'dart:async';

void main(List<String> args) async {
  // SingleDimesionalArray<int> singleDimesionalArray = SingleDimesionalArray();
  // singleDimesionalArray.createList(3);
  // singleDimesionalArray.insertInList(30, 2);
  // singleDimesionalArray.insertInList(21,1);
  // singleDimesionalArray.insertInList(123,0);

  // print(singleDimesionalArray.list);
  // singleDimesionalArray.sort();
  // print(singleDimesionalArray.list);
  // print('Element Found At = ${singleDimesionalArray.search(123)}');
//  TwoDimensionalArray<int?> twoDimensionalArray = TwoDimensionalArray<int?>();
//  twoDimensionalArray.createTwoDimensionalList(2, 2);
//  twoDimensionalArray.insertInTwoDimensionalArray(0, 0, 96);

//  twoDimensionalArray.insertInTwoDimensionalArray(0, 1, 88);

//  twoDimensionalArray.insertInTwoDimensionalArray(1,0, 87);

//  twoDimensionalArray.insertInTwoDimensionalArray(1, 1, 90);
  TwoDimensionalArray<int?> twoDimensionalArray = TwoDimensionalArray<int?>();
  twoDimensionalArray.createTwoDimensionalList(2, 2);
  //twoDimensionalArray.insertInTwoDimensionalArray(0,0,34);

//  twoDimensionalArray.insertInTwoDimensionalArray(0,1,343);

//  twoDimensionalArray.insertInTwoDimensionalArray(1,0,23);

//  twoDimensionalArray.insertInTwoDimensionalArray(1,1,23);

  twoDimensionalArray.insertInTwoDimensionalArray(0, 0, 95);
  twoDimensionalArray.insertInTwoDimensionalArray(0, 1, 94);
//  twoDimensionalArray.insertInTwoDimensionalArray(1, 0, 92);
  twoDimensionalArray.insertInTwoDimensionalArray(1, 1, 89);
  twoDimensionalArray.updateInTwoDimensionalArray(1, 0, 93);

  twoDimensionalArray.updateInTwoDimensionalArray(1, 0, 92);

  twoDimensionalArray.deleteInTwoDimensionalArray(0, 1);
  twoDimensionalArray.search(95).listen((event) {
    print(event);
  });

//  twoDimensionalArray.insertInTwoDimensionalArray(1, 1, 89);
}

class TwoDimensionalArray<T> {
  late List<List<T?>> list;

  void createTwoDimensionalList(int rows, int column) {
    list =
        List.generate(rows, (index) => List.generate(column, (index) => null));
  }

  void insertInTwoDimensionalArray(int row, int column, T value) {
    try {
      if (list[row][column] == null) {
        list[row][column] = value;
        print('Value is inserted successfully');
      } else {
        print('List index is already filled');
      }
    } on RangeError {
      print('Array Index is not in Range');
    }
  }

  void updateInTwoDimensionalArray(int row, int column, T value) {
    try {
      if (list[row][column] != null) {
        list[row][column] = value;
        print('Value is updated successfully');
      } else {
        insertInTwoDimensionalArray(row, column, value);
      }
    } on RangeError {
      print('Array Index is not in Range');
    }
  }

  void deleteInTwoDimensionalArray(int row, int column) {
    try {
      if (list[row][column] == null) {
        print('List index is already empty');
      } else {
        list[row][column] = null;
      }
    } on RangeError {
      print('Array Index is not in Range');
    }
  }

  Stream<int> search(T value) async* {
    var listOfIndex = List.filled(2, 0, growable: false);
    for (int i = 0; i <= list.length; i++) {
      for (var j = 0; i < list[i].length; j++) {
        if (list[i][j] == value) {
          listOfIndex[0] = i;
          listOfIndex[1] = j;
        }
      }
    }
    if (listOfIndex.isEmpty) {
      yield -1;
    } else {
      for (int i = 0; i < listOfIndex.length; i++) {
        yield i;
      }
    }
  }

  void sort() {
    list.sort();
    // for (var i = 0; i < list.length; i++) {
    //   for (var j = 0; i < list[j].length; j++) {
    //     for (var k = 0; k < list[i].length-j-1; k++) {
    //      if(list[j][k]>list[j][k+1]){
    //        T? temp = list[j][k];
    //        list[j][k] = list[j][k+1];
    //        list[j][k+1] = temp;
    //      }
    //     }
    //   }
    // }
  }

  void traverseTwoDimensionalList() {
    for (var i = 0; i < list.length; i++) {
      for (var j = 0; j < list[i].length; j++) {
        print(list[i][j]);
      }
    }
  }
}



/*
class SingleDimesionalArray<T> {
  late List list;
  SingleDimesionalArray();
  void createList(int sizeOfList) {
    list = List.filled(sizeOfList, null, growable: false);
  }

  void insertInList(T value, int index) {
    try {
      if (list[index] == null) {
        list[index] = value;
        print('List inserted Successfully');
      }
    } on RangeError {
      print('list Index Not Out Of Range');
    }
  }

  void updateInList(T value, int index) {
    try {
      if (list[index] != null) {
        list[index] = value;
        print('List has been updated');
      }
    } on RangeError {
      print('list Index Not Out Of Range');
    }
  }

  void deleteFromList(int index) {
    if (list[index] != null) {
      list[index] = null;
    } else {
      print('List index is already null');
    }
  }

  int search(T value) {
    for (var i = 0; i < list.length; i++) {
      if (value == list[i]) {
        return i;
      }
    }
    return -1;
  }

  void sort() {
    for (var i = 0; i < list.length; i++) {
      for (var j = 0; j < list.length - 1; j++) {
        if (list[j] > list[j + 1]) {
          T temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;
        }
      }
    }
    print('List has been sorted successfully');
  }

  void traverse() {
    for (var i = 0; i < list.length; i++) {
      print(list[i]);
    }
  }
}
*/


