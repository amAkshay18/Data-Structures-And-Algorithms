List<int> bubbleSort(List<int> nums) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = 1; j < nums.length - i; j++) {
      if (nums[j] < nums[j - 1]) {
        int temp = nums[j];
        nums[j] = nums[j - 1];
        nums[j - 1] = temp;
      }
    }
  }
  return nums;
}

List<String> bubbleSortForString(List<String> names) {
  for (int i = 0; i < names.length; i++) {
    for (int j = 1; j < names.length - i; j++) {
      if (names[j].compareTo(names[j - 1]) < 0) {
        String temp = names[j];
        names[j] = names[j - 1];
        names[j - 1] = temp;
      }
    }
  }
  return names;
}

void main() {
  var arr = [2, 0, 2, 1, 1, 0];
  var result = bubbleSort(arr);
  print(result);

  var names = [
    'Vishnu',
    'Siyad',
    'Saleem',
    'Ilyas',
    'Shahul',
    'Aromal',
    'Akshay'
  ];
  var result1 = bubbleSortForString(names);
  print(result1);
}
