// void selectionSort1(List<int> arr) {
//   for (int i = 0; i < arr.length - 1; i++) {
//     int minIndex = i;
//     for (int j = i + 1; j < arr.length; j++) {
//       if (arr[j] < arr[minIndex]) {
//         minIndex = j;
//       }
//     }
//     int temp = arr[minIndex];
//     arr[minIndex] = arr[i];
//     arr[i] = temp;
//   }
// }

List<int> selectionSort2(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    int max = 0;
    for (int j = 0; j < arr.length - i; j++) {
      if (arr[max] < arr[j]) {
        max = j;
      }
    }
    int maxIndex = arr.length - i - 1;
    int temp = arr[maxIndex];
    arr[maxIndex] = arr[max];
    arr[max] = temp;
  }
  return arr;
}

List<String> selectionSort3(List<String> names) {
  for (int i = 0; i < names.length; i++) {
    int max = 0;
    for (int j = 0; j < names.length - i; j++) {
      if (names[max].compareTo(names[j]) < 0) max = j;
    }
    int maxIndex = names.length - i - 1;
    String temp = names[maxIndex];
    names[maxIndex] = names[max];
    names[max] = temp;
  }
  return names;
}

void main() {
  var arr = [64, 25, -66, 12, 22, 11];
  var result = selectionSort2(arr);
  print(result);

  var names = ['apple', 'orange', 'grape', 'nuts'];
  var result2 = selectionSort3(names);
  print(result2);
  // print("Original array: $arr");
  // selectionSort2(arr);
  // print("Sorted array: $arr");
}
