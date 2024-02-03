
List quicksort(List arr) {
  if (arr.length <= 1) {
    return arr;
  }
  int pivotIndex = (arr.length / 2).floor();
  int pivot = arr[pivotIndex];

  List left = [];
  List right = [];

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] < pivot) {
      left.add(arr[i]);
    } else {
      right.add(arr[i]);
    }
  }

  return [...quicksort(left), pivot, ...quicksort(right)];
}

void main() {
  List arr = [4, 1, 3, 2, 5];
  print(quicksort(arr)); 
}
