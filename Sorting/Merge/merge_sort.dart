void mergeSort(List<int> array) {
  if (array.length > 1) {
    int mid = array.length ~/ 2;
    List<int> left = array.sublist(0, mid);
    List<int> right = array.sublist(mid);
    mergeSort(left);
    mergeSort(right);
    merge(array, left, right);
  }
}

void merge(List<int> array, List<int> left, List<int> right) {
  int i = 0;
  int j = 0;
  int k = 0;
  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      array[k] = left[i];
      i++;
    } else {
      array[k] = right[j];
      j++;
    }
    k++;
  }
  while (i < left.length) {
    array[k] = left[i];
    i++;
    k++;
  }
  while (j < right.length) {
    array[k] = right[j];
    j++;
    k++;
  }
}

void main() {
  List<int> array = [33, 2, 55, -22, 5, 2, 58];
  mergeSort(array);
  print(array);
}
