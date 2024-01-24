
quicksort(List arr) {
  ///   0(nlogn)TS
  sort(arr, 0, arr.length - 1);
  return arr;
}

sort(List arr, int firstidx, int lastidx) {
  if (firstidx >= lastidx) {
    return;
  }
  int pivot = firstidx;
  int first = firstidx + 1;
  int last = lastidx;
  while (first <= last) {
    if (arr[last] < arr[pivot] && arr[first] > arr[pivot]) {
      swap(arr, first, last);
      first++;
      last--;
    }
    if (arr[first] <= arr[pivot]) {
      first++;
    }
    if (arr[last] >= arr[pivot]) {
      last--;
    }
    swap(arr, last, pivot);
    sort(arr, firstidx, lastidx - 1);
    sort(arr, firstidx + 1, lastidx);
  }
}

swap(List arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

void main() {
  List arr=[2,5,4,3,1];
  quicksort(arr);
  print(arr);

}