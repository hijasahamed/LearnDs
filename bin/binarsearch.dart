int binarysearch(List arr, int target) {
  int l = 0;
  int r = arr.length - 1;
  while (l <= r) {
    double middleindex = (l + r) / 2;
    int rounded = middleindex.floor();

    if (target == arr[rounded]) {
      return rounded;
    }
    if (target < arr[rounded]) {
      r = rounded - 1;
    } else {
      l = rounded + 1;
    }
  }
  return -1;
}

main(){
  List a=[5,10,15,20,25,30,35,40];
  binarysearch(a, 25);
}