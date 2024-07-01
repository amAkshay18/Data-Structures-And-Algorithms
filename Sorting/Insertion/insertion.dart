List<int> insertion(List<int> nums) {
  for (int i = 0; i < nums.length - 1; i++) {
    for (int j = i + 1; j > 0; j--) {
      if (nums[j] < nums[j - 1]) {
        int temp = nums[j];
        nums[j] = nums[j - 1];
        nums[j - 1] = temp;
      } else {
        break;
      }
    }
  }
  return nums;
}

List<String> insertion2(List<String> names) {
  for (int i = 0; i < names.length - 1; i++) {
    for (int j = i + 1; j > 0; j--) {
      if (names[j].compareTo(names[j - 1]) < 0) {
        String temp = names[j];
        names[j] = names[j - 1];
        names[j - 1] = temp;
      } else {
        break;
      }
    }
  }
  return names;
}

void main() {
  dynamic arr = [5, 2, 2, 3, 1, 0, -5];
  dynamic result = insertion(arr);
  print(result);
  arr = ['Syam', 'Ilyas', 'Sinan', 'Shahul', 'Dimith', 'Siyad', 'Akshay'];
  result = insertion2(arr);
  print(result);
}
