heapSort(List<int> arr) {
  int n = arr.length;

  for (int i = (n ~/ 2) - 1; i >= 0; i--) {
    heapify(arr, n, i); //first heap array will convert to max heap
  }

  for (int i = n - 1; i >= 0; i--) {
    int temp = arr[0];
    arr[0] = arr[i];
    arr[i] = temp;

    heapify(arr, i, 0);
  }
}

 heapify(List<int> arr, int n, int i) {
  int largest = i;
  int left = 2 * i + 1;
  int right = 2 * i + 2;

  if (left < n && arr[left] > arr[largest]) {
    largest = left;
  }

  if (right < n && arr[right] > arr[largest]) {
    largest = right;
  }

  if (largest != i) {
    int swap = arr[i];
    arr[i] = arr[largest];
    arr[largest] = swap;

    heapify(arr, n, largest);
  }
}

main(){
  List<int> arr=[3,1,5,4,2];
  print(heapSort(arr));
}